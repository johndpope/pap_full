--MisDescBegin
-------------------------
--***********************
--Const
--***********************
-------------------------

x700104_g_ScriptId 				= 700104
x700104_g_MissionId 			= 444
x700104_g_MissionKind 		= 23

x700104_g_FuBenType				= 1

x700104_g_CopySceneName				= "浮屠塔四层"
x700104_g_Name								= ""
x700104_g_CopySceneType				= FUBEN_FUTUTA
x700104_g_LimitMembers				= 1			--可以进副本的最小队伍人数
x700104_g_TickTime						= 5				--回调脚本的时钟时间（单位：秒/次）
x700104_g_LimitTotalHoldTime	= 360	--副本可以存活的时间（单位：次数）,如果此时间到了，则任务将会失败
x700104_g_CloseTick						= 2				--副本关闭前倒计时（单位：次数）
x700104_g_NoUserTime					= 10			--副本中没有人后可以继续保存的时间（单位：秒）
x700104_g_DeadTrans						= 0				--死亡转移模式，0：死亡后还可以继续在副本，1：死亡后被强制移出副本
x700104_g_Fuben_X							= 63				--进入副本的位置X
x700104_g_Fuben_Z							= 69				--进入副本的位置Z
x700104_g_Back_X							= 433				--源场景位置X
x700104_g_Back_Z							= 422					--源场景位置Z

x700104_g_MissionName				= "浮屠塔四层"
x700104_g_MissionInfo				= "杀死全部怪物！"
x700104_g_MissionTarget			= "杀死全部怪物！"
x700104_g_MissionBonusInfo	= "获得%d的经验奖励。"
x700104_g_ContinueInfo			= "你要继续努力啊！"

--MisDescEnd

x700104_g_LevelLess					= 30
x700104_g_RoundUntil				= 200

x700104_g_MissionComplete		= "谢谢啊，俺们终于敢出门了"
x700104_g_MissionFuBenOpen	= "传入副本。"

x700104_g_KillMonsterMessage		= "你已经杀死了%d/%d只怪！"
x700104_g_CompleteOutMessage		= "任务完成，将在%d秒后传送出去！"

x700104_g_ErrorMessage					= "条件不符！"
x700104_g_ErrorMessage_Country	= "你不是本国人！"
x700104_g_ErrorMessage_Level		= format("你的等级不足%d！", x700104_g_LevelLess)
x700104_g_ErrorMessage_Team			= "你不在队伍中！"
x700104_g_ErrorMessage_TeamNum	= format("队伍不足%d人！", x700104_g_LimitMembers)
x700104_g_ErrorMessage_Captain	= "你不是队长！"
x700104_g_ErrorMessage_Round		= format("你今天已经做过%d次了！", x700104_g_RoundUntil)
x700104_g_ErrorMessage_Full			= "背包已满！"

x700104_g_ErrorMessage_OtherLevel		= "%s的等级不足%d！"
x700104_g_ErrorMessage_OtherAround	= "%s不在你身边！"
x700104_g_ErrorMessage_OtherRound		= "%s今天已经做过%d次了！"

x700104_g_SomeoneInTeam				= "队伍中某人"

x700104_g_FuBenCreateOK					= "副本创建成功！"
x700104_g_FuBenCreateFailed			= "副本已达上限，请稍后再试！"
x700104_g_MissionAbandon				= "任务失败！"
x700104_g_CountDownMessage			= "你将在%d秒后离开场景！"
x700104_g_TimeOutFailedMessage	= "任务失败，超时！"
x700104_g_CompleteFailedNPCMessage	= "你们竟然失败了！"
x700104_g_TipForEnter						= "进入浮屠塔！"
x700104_g_SceneMapNavPath				= "fuben_fututasiceng/fuben_fututasiceng.nav"
x700104_g_BossCreateMessage			= "精英怪出现！"

x700104_g_ExpBonus				= 0

x700104_g_MissionNPCName		= {
																{scene = 11, name = "长者"},		--新月
																{scene = 18, name = "长者"},		--金帐
																{scene = 21, name = "长者"},		--雪域
																{scene = 24, name = "长者"},		--大漠
																{scene = 36, name = "天衣居"}		--皇城
															}
x700104_g_NormalMonsterType		= {
																{hash=1, type=340},
																{hash=2, type=341}
															}
x700104_g_NeedKillMonster		=	{
																{hash=1, type=x700104_g_NormalMonsterType[1].type, x=50, z=64, ai=0, aiscript=0},
																{hash=1, type=x700104_g_NormalMonsterType[1].type, x=50, z=64, ai=0, aiscript=0},
																{hash=1, type=x700104_g_NormalMonsterType[1].type, x=50, z=64, ai=0, aiscript=0},
																{hash=2, type=x700104_g_NormalMonsterType[1].type, x=64, z=50, ai=0, aiscript=0},
																{hash=2, type=x700104_g_NormalMonsterType[1].type, x=64, z=50, ai=0, aiscript=0},
																{hash=2, type=x700104_g_NormalMonsterType[1].type, x=64, z=50, ai=0, aiscript=0},
																{hash=3, type=x700104_g_NormalMonsterType[1].type, x=78, z=64, ai=0, aiscript=0},
																{hash=3, type=x700104_g_NormalMonsterType[1].type, x=78, z=64, ai=0, aiscript=0},
																{hash=3, type=x700104_g_NormalMonsterType[1].type, x=78, z=64, ai=0, aiscript=0},
																{hash=4, type=x700104_g_NormalMonsterType[2].type, x=64, z=78, ai=0, aiscript=0},
																{hash=4, type=x700104_g_NormalMonsterType[2].type, x=64, z=78, ai=0, aiscript=0},
																{hash=4, type=x700104_g_NormalMonsterType[2].type, x=64, z=78, ai=0, aiscript=0}
															}
x700104_g_MissionBonusItem	= {
																{num=1, id=10200001}
															}
x700104_g_BossMonster				= {
																{hash=1, type=342, x=63, z=64, ai=0, aiscript=0},
																{hash=2, type=342, x=64, z=63, ai=0, aiscript=0},
																{hash=3, type=342, x=65, z=64, ai=0, aiscript=0},
																{hash=4, type=342, x=64, z=65, ai=0, aiscript=0},
																{hash=5, type=342, x=64, z=64, ai=0, aiscript=0}
															}
x700104_g_MissionBonusItemMessage	= "获得物品XXX！"
x700104_g_growpointStart				= 20

-------------------------
--***********************
--Define
--***********************
-------------------------

x700104_OK							= 0
x700104_OK_RETURN				= 1
x700104_ERROR_UNKNOWN		= -1

x700104_FAILED_COUNTRY	= 10
x700104_FAILED_LEVEL		= 11
x700104_FAILED_ROUND		= 13
x700104_FAILED_TEAM			= 14
x700104_FAILED_TEAMNUM	= 15
x700104_FAILED_CAPTAIN	= 16

x700104_FAILED_OTHERLEVEL		= 20
x700104_FAILED_OTHERMISSION	= 22
x700104_FAILED_OTHERAROUND	= 23
x700104_FAILED_OTHERROUND		= 24

x700104_MP_AIMSCENE			= 0
x700104_MP_TEAMID				= 1
x700104_MP_KILLMONSTER	= 2
x700104_MP_ISCOMPLETE		= 7

x700104_CSP_FUBENTYPE				= 0
x700104_CSP_SCRIPTID				= 1
x700104_CSP_TICKCOUNT				= 2
x700104_CSP_FROMSCENEID			= 3
x700104_CSP_ISCLOSING				= 4
x700104_CSP_LEAVECOUNTDOWN	= 5
x700104_CSP_TEAMID					= 6
x700104_CSP_NALLMONSTER			= 7
x700104_CSP_NKILLMONSTER		= 8
x700104_CSP_NTOTALMONSTER		= 9
x700104_CSP_GROWPOINT_1			= 10
x700104_CSP_GROWPOINT_2			= 11
x700104_CSP_GROWPOINT_3			= 12
x700104_CSP_GROWPOINT_4			= 13
x700104_CSP_BEATPROCESS			= 14

x700104_MD_DayCount				= MD_FUTUTA_DAYCOUNT_A

-------------------------
--***********************
--OnDefaultEvent
--***********************
-------------------------

function x700104_OnDefaultEvent(sceneId, selfId, NPCId)

	local safeCheckRet, otherRet = x700104_SafeNPCCheck(sceneId, selfId, NPCId);
	local bHaveMission = IsHaveMission(sceneId, selfId, x700104_g_MissionId);
	local misIndex;
	local str = x700104_g_MissionName.."\n";
	local dispatchType = 0;
	local bDone = 0;
	
	if bHaveMission > 0 then
		misIndex = GetMissionIndexByID(sceneId, selfId, x700104_g_MissionId);
		bDone = x700104_CheckComplete(sceneId, selfId);

		if bDone == 1 then
			str = str..x700104_g_MissionComplete;
			dispatchType = 2;
		else
			str = str..x700104_g_CompleteFailedNPCMessage;
			dispatchType = 2;
		end
	elseif safeCheckRet == x700104_OK or safeCheckRet == x700104_OK_RETURN then
		str = str..x700104_g_MissionInfo;
		dispatchType = 1;
	else
		dispatchType = 4;
		if safeCheckRet == x700104_FAILED_ROUND then
			str = x700104_g_ErrorMessage_Round;
		elseif safeCheckRet == x700104_FAILED_COUNTRY then
			str = x700104_g_ErrorMessage_Country;
		elseif safeCheckRet == x700104_FAILED_LEVEL then
			str = x700104_g_ErrorMessage_Level;
		elseif safeCheckRet == x700104_FAILED_CAPTAIN then
			str = x700104_g_ErrorMessage_Captain;
		elseif safeCheckRet == x700104_FAILED_TEAM then
			str = x700104_g_ErrorMessage_Team;
		elseif safeCheckRet == x700104_FAILED_TEAMNUM then
			str = x700104_g_ErrorMessage_TeamNum;
		else
			local otherName = x700104_g_SomeoneInTeam;
			if otherRet >= 0 then
				otherName = GetName(sceneId, otherRet);
			end
			if safeCheckRet == x700104_FAILED_OTHERLEVEL then
				str = format(x700104_g_ErrorMessage_OtherLevel, otherName, x700104_g_LevelLess);
			elseif safeCheckRet == x700104_FAILED_OTHERROUND then
				str = format(x700104_g_ErrorMessage_OtherRound, otherName, x700104_g_RoundUntil);
			elseif safeCheckRet == x700104_FAILED_OTHERMISSION then
				str = format(x700104_g_ErrorMessage_OtherMission, otherName);
			elseif safeCheckRet == x700104_FAILED_OTHERAROUND then
				str = format(x700104_g_ErrorMessage_OtherAround, otherName);
			end
		end
	end
	
	BeginEvent(sceneId);
		AddText(sceneId, str);
	EndEvent();
	
	if dispatchType == 1 then
		DispatchMissionInfo(sceneId, selfId, NPCId, x700104_g_ScriptId, x700104_g_MissionId);
	elseif dispatchType == 2 then
		DispatchMissionContinueInfo(sceneId, selfId, NPCId, x700104_g_ScriptId, x700104_g_MissionId);
	elseif dispatchType == 3 then
		DispatchEventList(sceneId, selfId, NPCId);
	else
		DispatchMissionTips(sceneId, selfId);
	end

end

-------------------------
--***********************
--OnEnumerate
--***********************
-------------------------

function x700104_OnEnumerate(sceneId, selfId, NPCId)

	if x700104_SafeDisplayCheck(sceneId, selfId, NPCId) > 0 then
		AddNumText(sceneId, x700104_g_ScriptId, x700104_g_MissionName);
	end

end

-------------------------
--***********************
--SafeDisplayCheck
--***********************
-------------------------

function x700104_SafeDisplayCheck(sceneId, selfId, NPCId)

	local bHaveMission = IsHaveMission(sceneId, selfId, x700104_g_MissionId);
	
	if bHaveMission > 0 then
		return 1;
	end
	
	if x700104_IsMissionNPC(sceneId, selfId, x700104_g_MissionId, NPCId) > 0 then
		return 1;
	end
	
	return 0;

end

-------------------------
--***********************
--IsMissionNPC
--***********************
-------------------------

function x700104_IsMissionNPC(sceneId, selfId, missionId, NPCId)

	for i, item in pairs(x700104_g_MissionNPCName) do
		if item.scene == sceneId then
			if GetName(sceneId, NPCId) == item.name then
				return 1;
			end
		end
	end
	
	return 0;

end

-------------------------
--***********************
--CheckAllMemberLevel
--***********************
-------------------------

function x700104_CheckAllMemberLevel(sceneId, selfId, teamnum)

	for i = 0, teamnum - 1 do
		local memberId = GetNearTeamMember(sceneId, selfId, i);
		if GetLevel(sceneId, memberId) < x700104_g_LevelLess then
			return 0, memberId;
		end
	end
	
	return 1;

end

-------------------------
--***********************
--CheckAllMemberHaveMission
--***********************
-------------------------

function x700104_CheckAllMemberHaveMission(sceneId, selfId, teamnum)

	for i = 0, teamnum - 1 do
		local memberId = GetNearTeamMember(sceneId, selfId, i);
		if IsHaveMission(sceneId, memberId, x700104_g_MissionId) <= 0 then
--			return 0, memberId;
		end
	end
	
	return 1;

end

-------------------------
--***********************
--CheckAllMemberAround
--***********************
-------------------------

function x700104_CheckAllMemberAround(sceneId, selfId, teamnum)

	if GetNearTeamCount(sceneId, selfId) == teamnum then
		return 1;
	end
	
	return 0, -1;

end


-------------------------
--***********************
--CheckRound
--***********************
-------------------------

function x700104_CheckRound(sceneId, selfId)

	local daycount = GetMissionData(sceneId, selfId, x700104_MD_DayCount);
	local nowtime = LuaFnGetCurrentTime();
	
	local today = floor(nowtime / 86400);
	local round = 0;
	
	if today == floor(daycount / 10000) then
		round = floor((daycount - today * 10000) / 100) + 1;
		if round >= x700104_g_RoundUntil then
			return -1;
		end
	end
	
	return round;

end

-------------------------
--***********************
--CheckAllMemberRound
--***********************
-------------------------

function x700104_CheckAllMemberRound(sceneId, selfId, teamnum)

	for i = 0, teamnum - 1 do
		local memberId = GetNearTeamMember(sceneId, selfId, i);
		if x700104_CheckRound(sceneId, memberId) < 0 then
			return 0, memberId;
		end
	end
	
	return 1;
	
end

-------------------------
--***********************
--SafeNPCCheck
--***********************
-------------------------

function x700104_SafeNPCCheck(sceneId, selfId, NPCId)

	bHaveMission = IsHaveMission(sceneId, selfId, x700104_g_MissionId);
	
	if bHaveMission > 0 then
	
		misIndex = GetMissionIndexByID(sceneId, selfId, x700104_g_MissionId);
		aimsceneid = GetMissionParam(sceneId, selfId, misIndex, x700104_MP_AIMSCENE);
		aimteamid = GetMissionParam(sceneId, selfId, misIndex, x700104_MP_TEAMID);
		
		if aimsceneid >= 0 and teamId == aimteamid then
			return x700104_OK_RETURN;
		else
			return x700104_ERROR_UNKNOWN;
		end
		
	else
		local teamid = GetTeamId(sceneId, selfId);
		local teamnum = GetTeamSize(sceneId, selfId);
		if GetLevel(sceneId, selfId) < x700104_g_LevelLess then
			return x700104_FAILED_LEVEL;
		elseif x700104_CheckRound(sceneId, selfId) < 0 then
			return x700104_FAILED_ROUND;
		elseif LuaFnIsTeamLeader(sceneId, selfId) <= 0 then
			return x700104_FAILED_CAPTAIN;
		elseif teamid < 0 then
			return x700104_FAILED_TEAM;
		elseif teamnum < x700104_g_LimitMembers then
			return x700104_FAILED_TEAMNUM;
		else
		
			local nearteamnum = GetNearTeamCount(sceneId, selfId);
			local ret, otherId;
			
			ret, otherId = x700104_CheckAllMemberLevel(sceneId, selfId, nearteamnum);
			if ret <= 0 then
				return x700104_FAILED_OTHERLEVEL, otherId;
			end
			ret, otherId = x700104_CheckAllMemberRound(sceneId, selfId, nearteamnum);
			if ret <= 0 then
				return x700104_FAILED_OTHERAROUND, otherId;
			end
			ret, otherId = x700104_CheckAllMemberHaveMission(sceneId, selfId, nearteamnum);
			if ret <= 0 then
				return x700104_FAILED_OTHERMISSION, otherId;
			end
			ret, otherId = x700104_CheckAllMemberAround(sceneId, selfId, nearteamnum);
			if ret <= 0 then
				return x700104_FAILED_OTHERAROUND, otherId;
			end
			return x700104_OK;
			
		end
	end
	
	return x700104_ERROR_UNKNOWN;

end

-------------------------
--***********************
--CheckAccept
--***********************
-------------------------

function x700104_CheckAccept(sceneId, selfId, NPCId)

	local safeCheckRet = x700104_SafeNPCCheck(sceneId, selfId, NPCId);
	if safeCheckRet == x700104_OK or safeCheckRet == x700104_OK_RETURN then
		return 1;
	end
	
	return 0;

end

-------------------------
--***********************
--OnAccept
--***********************
-------------------------

function x700104_OnAccept(sceneId, selfId, NPCId, backsceneId)

	bHaveMission = IsHaveMission(sceneId, selfId, x700104_g_MissionId);
	local teamId = GetTeamId(sceneId, selfId);
	
	if bHaveMission > 0 then
		
		local safeCheckRet = x700104_SafeNPCCheck(sceneId, selfId, NPCId);
		if SafeNPCCheck == x700104_OK_RETURN then
			misIndex = GetMissionIndexByID(sceneId, selfId, x700104_g_MissionId);
			aimsceneid = GetMissionParam(sceneId, selfId, misIndex, x700104_MP_AIMSCENE);
			NewWorld(sceneId, selfId, aimsceneid, x700104_g_Fuben_X, x700104_g_Fuben_Z);
		else
			BeginEvent(sceneId);
				AddText(x700104_g_ErrorMessage);
			EndEvent();
			DispatchMissionTips(sceneId, selfId);
			return 0;
		end
		
	else
		
		local memberNum = GetNearTeamCount(sceneId, selfId);
		for i = 0, memberNum - 1 do
			local memberId = GetNearTeamMember(sceneId, selfId, i);
	------------------------------------------------------------
	SetHumanAbilityLevel(sceneId, memberId, 26, 1)
	------------------------------------------------------------
			AddMission(sceneId, memberId, x700104_g_MissionId, x700104_g_ScriptId, 1, 0, 0);
			local misIndex = GetMissionIndexByID(sceneId, memberId, x700104_g_MissionId);
			SetMissionByIndex(sceneId, memberId, misIndex, x700104_MP_AIMSCENE, -1);
			SetMissionByIndex(sceneId, memberId, misIndex, x700104_MP_TEAMID, teamId);
			SetMissionByIndex(sceneId, memberId, misIndex, x700104_MP_ISCOMPLETE, 0);
		end
		
		x700104_MakeCopyScene(sceneId, selfId, memberNum, backsceneId);
		
	end
	
end

-------------------------
--***********************
--MakeCopyScene
--***********************
-------------------------

function x700104_MakeCopyScene(sceneId, selfId, memberNum, backsceneId)

	local leaderguid = LuaFnObjId2Guid(sceneId, selfId);
	LuaFnSetSceneLoad_Map(sceneId, x700104_g_SceneMapNavPath); --地图是必须选取的，而且必须在Config/SceneInfo.ini里配置好
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x700104_g_NoUserTime * 1000);
	LuaFnSetCopySceneData_Timer(sceneId, x700104_g_TickTime * 1000);
	LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_FUBENTYPE, x700104_g_CopySceneType);--设置副本数据，这里将0号索引的数据设置为999，用于表示副本号999(数字自定义)
	LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_SCRIPTID, x700104_g_ScriptId);--将1号数据设置为副本场景事件脚本号
	LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_TICKCOUNT, 0);--设置定时器调用次数
	LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_FROMSCENEID, -1);--设置副本入口场景号, 初始化
	LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_ISCLOSING, 0);--设置副本关闭标志, 0开放，1关闭
	LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_LEAVECOUNTDOWN, 0);--设置离开倒计时次数
	LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_TEAMID, GetTeamId(sceneId, selfId)); --保存队伍号
	LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_NALLMONSTER, 0) ;--全部怪数量
	LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_NKILLMONSTER, 0) ;--杀死怪的数量
	
	LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_GROWPOINT_1, -2) ;
	LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_GROWPOINT_2, -2) ;
	LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_GROWPOINT_3, -2) ;
	LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_GROWPOINT_4, -2) ;
	
	LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_BEATPROCESS, 0) ;
	
	local ntotalmonster = 0;
	for i, item in pairs(x700104_g_BossMonster) do
		ntotalmonster = ntotalmonster + 1;
	end
	LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_NTOTALMONSTER, ntotalmonster) ;--全部怪数量

	if backsceneId == nil then
		backsceneId = sceneId;
	end
	LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_FROMSCENEID, backsceneId);--设置副本入口场景号
	
	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --初始化完成后调用创建副本函数
		BeginEvent(sceneId);
		if bRetSceneID > 0 then
			AddText(sceneId, x700104_g_FuBenCreateOK);
		else
			AddText(sceneId, x700104_g_FuBenCreateFailed);
			for i = 0, memberNum - 1 do
				local memberId = GetNearTeamMember(sceneId, selfId, i);
				x700104_CancelMission(sceneId, memberId);
			end
		end
	EndEvent();
	DispatchMissionTips(sceneId, selfId);

end

-------------------------
--***********************
--OnCopySceneReady
--***********************
-------------------------

function x700104_OnCopySceneReady(sceneId, destsceneId)

	leaderguid = LuaFnGetCopySceneData_TeamLeader(destsceneId);
	leaderObjId = LuaFnGuid2ObjId(sceneId, leaderguid);

	local	memberNum = GetNearTeamCount(sceneId, leaderObjId);
	
	for i = 0, memberNum - 1 do
		local memberId = GetNearTeamMember(sceneId, leaderObjId, i);

		misIndex = GetMissionIndexByID(sceneId, memberId, x700104_g_MissionId);
		SetMissionByIndex(sceneId, memberId, misIndex, x700104_MP_AIMSCENE, destsceneId);
		NewWorld(sceneId, memberId, destsceneId, x700104_g_Fuben_X, x700104_g_Fuben_Z);
	end
	
	x700104_CreateMonster(destsceneId);
	
end

-------------------------
--***********************
--OnPlayerEnter
--***********************
-------------------------

function x700104_OnPlayerEnter(sceneId, selfId)

	SetPlayerDefaultReliveInfo(sceneId, selfId, "%10", "%10", "%10", sceneId, x700104_g_Fuben_X, x700104_g_Fuben_Z);

end

-------------------------
--***********************
--CreateMonster
--***********************
-------------------------

function x700104_CreateMonster(sceneId)

	for i, item in pairs(x700104_g_NeedKillMonster) do
		LuaFnCreateMonster(sceneId, item.type, item.x, item.z, item.ai, item.aiscript, -1);
	end
	
end

-------------------------
--***********************
--CancelMission
--***********************
-------------------------

function x700104_CancelMission(sceneId, selfId)

	misIndex = GetMissionIndexByID(sceneId, selfId, x700104_g_MissionId);
	local aimsceneid = GetMissionParam(sceneId, selfId, misIndex, x700104_MP_AIMSCENE);
	
	DelMission(sceneId, selfId, x700104_g_MissionId);
	
	if sceneId == aimsceneid then --如果在副本里删除任务，则直接传送回
	
		BeginEvent(sceneId);
			AddText(sceneId, x700104_g_MissionAbandon);
		EndEvent();
		DispatchMissionTips(sceneId, selfId);
		oldsceneId = LuaFnGetCopySceneData_Param(sceneId, x700104_CSP_FROMSCENEID);--取得副本入口场景号
		
		NewWorld(sceneId, selfId, oldsceneId, x700104_g_Back_X, x700104_g_Back_Z);
		return oldsceneId;
	end
	
	return -1;
	
end

-------------------------
--***********************
--CheckSubmit
--***********************
-------------------------

function x700104_CheckSubmit(sceneId, selfId, NPCId)

	return 1;

end

-------------------------
--***********************
--CheckComplete
--***********************
-------------------------

function x700104_CheckComplete(sceneId, selfId, NPCId)

	local misIndex = GetMissionIndexByID(sceneId, selfId, x700104_g_MissionId);
	return GetMissionParam(sceneId, selfId, misIndex, x700104_MP_ISCOMPLETE);

end

-------------------------
--***********************
--OnSubmit
--***********************
-------------------------

function x700104_OnSubmit(sceneId, selfId, NPCId)
	
	local iscomplete = x700104_CheckComplete(sceneId, selfId, NPCId);
	
	local str;
	if iscomplete > 0 then
	
		if x888888_DeleteAndAddItem(sceneId, selfId, nil, x700104_g_MissionBonusItem, x700104_g_MissionBonusItemMessage, x700104_g_ErrorMessage_Full) <= 0 then
			return 0;
		end
	
		local exp = x700104_GetExp(sceneId, selfId);
		GetExp(sceneId, selfId, exp);
		str = format(x700104_g_MissionBonusInfo, exp);		
	else
		str = x700104_g_MissionAbandon;
	end
	
	BeginEvent(sceneId);
		AddText(sceneId, str);
	EndEvent();
	DispatchMissionTips(sceneId, selfId);
	DelMission(sceneId, selfId, x700104_g_MissionId);
	
end

-------------------------
--***********************
--CheckTeamLeader
--***********************
-------------------------

function x700104_GetExp(sceneId, selfId)

	return x700104_g_ExpBonus;

end

-------------------------
--***********************
--CheckTeamLeader
--***********************
-------------------------

function x700104_CheckTeamLeader(sceneId, selfId)
	if GetTeamId(sceneId, selfId) < 0 then	--判断是否有队伍
		return x700104_FAILED_TEAM;
	end
	
	local	memberNum = GetNearTeamCount(sceneId, selfId);
	
	if memberNum < x700104_g_LimitMembers then
		return x700104_FAILED_TEAMNUMBER;
	end
	
	if LuaFnIsTeamLeader(sceneId, selfId) == 0 then	--只有队长才能接任务
		return x700104_FAILED_CAPTAIN;
	end
	
	return x700104_OK;
end

-------------------------
--***********************
--OnAbandon
--***********************
-------------------------

function x700104_OnAbandon(sceneId, selfId)
	
	x700104_CancelMission(sceneId, selfId);
	
end

-------------------------
--***********************
--OnCopySceneTimer
--***********************
-------------------------

function x700104_OnCopySceneTimer(sceneId, nowTime)

	local nowTickCount = LuaFnGetCopySceneData_Param(sceneId, x700104_CSP_TICKCOUNT) + 1;
	LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_TICKCOUNT, nowTickCount);
	
	local leaveFlag = LuaFnGetCopySceneData_Param(sceneId, x700104_CSP_ISCLOSING);
	
	if leaveFlag > 0 then
	
		local leaveCountDown = LuaFnGetCopySceneData_Param(sceneId, x700104_CSP_LEAVECOUNTDOWN) + 1;
		LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_LEAVECOUNTDOWN, leaveCountDown);
		
		if leaveCountDown == x700104_g_CloseTick then
			local oldsceneId = LuaFnGetCopySceneData_Param(sceneId, x700104_CSP_FROMSCENEID);
			local humancount = LuaFnGetCopyScene_HumanCount(sceneId);
			for	i = 0, humancount - 1 do
				local humanId = LuaFnGetCopyScene_HumanObjId(sceneId, i);
				NewWorld(sceneId, humanId, oldsceneId, x700104_g_Back_X, x700104_g_Back_Z);
			end
		elseif leaveCountDown < x700104_g_CloseTick then
			local humancount = LuaFnGetCopyScene_HumanCount(sceneId);
			for	i = 0, humancount - 1 do
				local humanId = LuaFnGetCopyScene_HumanObjId(sceneId, i);
 				local str = format(x700104_g_CountDownMessage, (x700104_g_CloseTick - leaveCountDown) * x700104_g_TickTime);
  			BeginEvent(sceneId);
  				AddText(sceneId, str);
  			EndEvent(sceneId);
  			DispatchMissionTips(sceneId, humanId);
			end
		end
		
	else

		local humancount = LuaFnGetCopyScene_HumanCount(sceneId);
		for i = 0, humancount - 1 do
			humanId = LuaFnGetCopyScene_HumanObjId(sceneId, i);
			if nowTickCount == 1 then
				BeginEvent(sceneId);
					AddText(sceneId, x700104_g_TipForEnter);
				EndEvent();
				DispatchMissionTips(sceneId, humanId);
			end
			if nowTickCount == x700104_g_LimitTotalHoldTime then
				local oldsceneId = x700104_CancelMission(sceneId, humanId);
				BeginEvent(oldsceneId);
					AddText(sceneId, x700104_g_TimeOutFailedMessage);
				EndEvent();
				DispatchMissionTips(oldsceneId, humanId);
			end
			local kickout = 0;
			if IsHaveMission(sceneId, humanId, x700104_g_MissionId) > 0 then
				if GetTeamId(sceneId, humanId) ~= LuaFnGetCopySceneData_Param(sceneId, x700104_CSP_TEAMID) then
					kickout = 1;
				end
			else
				kickout = 1;
			end
			if kickout == 1 then
				x700104_CancelMission(sceneId, humanId);
			end
			
--			
--
			
		end
		if nowTime == x700104_g_LimitTotalHoldTime then
			LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_ISCLOSING, 1);
		end	
	end

end

-------------------------
--***********************
--GetMoney
--***********************
-------------------------

function x700104_GetExp(sceneId, selfId, NPCId)

	local ret = x700104_g_ExpBonus;
	return ret;
	
end

-------------------------
--***********************
--OnKillObject
--***********************
-------------------------

function x700104_OnKillObject(sceneId, selfId, objdataId ,objId)
	
	local sceneType = LuaFnGetSceneType(sceneId);
	if sceneType ~= x700104_g_FuBenType then
		return 0;
	end
	
	local fubenType = LuaFnGetCopySceneData_Param(sceneId, x700104_CSP_FUBENTYPE);
	if fubenType ~= x700104_g_CopySceneType then
		return 0;
	end
	
	local leaveFlag = LuaFnGetCopySceneData_Param(sceneId, x700104_CSP_LEAVECOUNTDOWN);

	if leaveFlag == 1 then --如果副本已经被置成关闭状态，则杀怪无效
		return 0;
	end
	
	for i, item in pairs(x700104_g_NormalMonsterType) do
		if objdataId == item.type then
			return 0;
		end
	end
	
	local humancount = LuaFnGetCopyScene_HumanCount(sceneId);
	
	local killmonster = LuaFnGetCopySceneData_Param(sceneId, x700104_CSP_NKILLMONSTER) + 1;
	local ntotalmonster = LuaFnGetCopySceneData_Param(sceneId, x700104_CSP_NTOTALMONSTER);
	
	local humanId;
	local misIndex;
	
	--
	
	if ntotalmonster == killmonster then
	
		local str = format(x700104_g_CompleteOutMessage, x700104_g_CloseTick * x700104_g_TickTime);
		BeginEvent(sceneId);
			AddText(sceneId, str);
		EndEvent();
		for i = 0, humancount - 1 do
		
			humanId = LuaFnGetCopyScene_HumanObjId(sceneId, i);	--取得当前场景里人的objId	
			misIndex = GetMissionIndexByID(sceneId, humanId, x700104_g_MissionId);
			SetMissionByIndex(sceneId, humanId, misIndex, x700104_MP_ISCOMPLETE, 1);

			DispatchMissionTips(sceneId, humanId);
		end
		
		LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_ISCLOSING, 1);
		
	end
	
	LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_NKILLMONSTER, killmonster);
	
	for i = 0, humancount - 1 do
		local humanId = LuaFnGetCopyScene_HumanObjId(sceneId, i);--取得当前场景里人的objId
		
		misIndex = GetMissionIndexByID(sceneId, humanId, x700104_g_MissionId); --取得任务数据索引值
		local killedcount = GetMissionParam(sceneId, humanId, misIndex, x700104_MP_KILLMONSTER) + 1; --取得已经杀了的怪物数
		SetMissionByIndex(sceneId, humanId, misIndex, x700104_MP_KILLMONSTER, killedcount); --设置任务数据
	end
end

-------------------------
--***********************
--_CreateBoss
--***********************
-------------------------

function x700104_CreateBoss(sceneId)

	for i, item in pairs(x700104_g_BossMonster) do
		LuaFnCreateMonster(sceneId, item.type, item.x, item.z, item.ai, item.aiscript, -1);
	end
	
	local humancount = LuaFnGetCopyScene_HumanCount(sceneId);
	local str = x700104_g_BossCreateMessage;
	BeginEvent(sceneId);
		AddText(sceneId, str);
	EndEvent();
	for i = 0, humancount - 1 do
		local humanId = LuaFnGetCopyScene_HumanObjId(sceneId, i);--取得当前场景里人的objId
		DispatchMissionTips(sceneId, humanId);
	end

end

-------------------------
--***********************
--_OnCreate
--***********************
-------------------------

function x700104__OnCreate(sceneId, growPointType, x, z)

	local csp = x700104_CSP_GROWPOINT_1 + growPointType - x700104_g_growpointStart;
	if LuaFnGetCopySceneData_Param(sceneId, csp) < -1 then
		local ItemBoxId = ItemBoxEnterScene(x, z, growPointType, sceneId);
		LuaFnSetCopySceneData_Param(sceneId, csp, ItemBoxId);
	end
	
end

-------------------------
--***********************
--_OnOpen
--***********************
-------------------------

function x700104__OnOpen(sceneId, selfId, targetId)

	local offset = LuaFnGetCopySceneData_Param(sceneId, x700104_CSP_BEATPROCESS);
	if targetId == LuaFnGetCopySceneData_Param(sceneId, x700104_CSP_GROWPOINT_1 + offset) then
		LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_GROWPOINT_1 + offset, -1);
		offset = offset + 1;
		LuaFnSetCopySceneData_Param(sceneId, x700104_CSP_BEATPROCESS, offset);
		return 0;
	end
	
	return 1;

end

-------------------------
--***********************
--_OnRecycle
--***********************
-------------------------

function x700104__OnRecycle(sceneId, selfId, targetId)

	local offset = LuaFnGetCopySceneData_Param(sceneId, x700104_CSP_BEATPROCESS) - 1;
	if offset == 3 then
		x700104_CreateBoss(sceneId);
	end

end

-------------------------
--***********************
--OnHumanDie
--***********************
-------------------------

function x700104_OnHumanDie(sceneId, selfId, killerId)
end