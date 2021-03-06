--消灭船夫

--MisDescBegin
x223006_g_ScriptId = 223006
x223006_g_MissionIdPre =297
x223006_g_MissionId = 298
x223006_g_MissionKind = 20
x223006_g_MissionLevel = 100
x223006_g_ScriptIdNext = {ScriptId = 223007 ,LV = 1 }
x223006_g_Name	="贵由" 
x223006_g_DemandItem ={}
x223006_g_DemandKill ={{id=443,num=20}}

x223006_g_MissionName="消灭船夫"
x223006_g_MissionInfo="    打击他们的最好方法，就是要彻底让他们生存的希望破灭，一点希望都不能给他们。\n \n    "  --任务描述
x223006_g_MissionInfo2="，你明白我的意思吗，杀了那些#R钦察船夫#W，让他们见鬼去吧。"
x223006_g_MissionTarget="    到#G伏尔加河畔#W去杀死20个#R钦察船夫#W。"		                                                                                               
x223006_g_MissionComplete="    这些钦察人实在太软弱了，就算是我们草原的老婆婆，也能一举把他们歼灭"					--完成任务npc说话的话
x223006_g_ContinueInfo="    一定要杀光这些船夫，不给敌人留一点机会！"
--任务奖励
x223006_g_MoneyBonus = 500

--固定物品奖励，最多8种
x223006_g_ItemBonus={}

--可选物品奖励，最多8种
x223006_g_RadioItemBonus={}

--MisDescEnd
x223006_g_ExpBonus = 4000
--**********************************

--任务入口函数

--**********************************

function x223006_OnDefaultEvent(sceneId, selfId, targetId)	--点击该任务后执行此脚本

	--检测列出条件
	if x223006_CheckPushList(sceneId, selfId, targetId) <= 0 then
		return
	end

	--如果已接此任务
	if IsHaveMission(sceneId,selfId, x223006_g_MissionId) > 0 then
	misIndex = GetMissionIndexByID(sceneId,selfId,x223006_g_MissionId)
		if x223006_CheckSubmit(sceneId, selfId, targetId) <= 0 then
                        BeginEvent(sceneId)
			AddText(sceneId,"#Y"..x223006_g_MissionName)
			AddText(sceneId,x223006_g_ContinueInfo)
		        AddText(sceneId,"#Y任务目标#W") 
			AddText(sceneId,x223006_g_MissionTarget) 
			AddText(sceneId,format("\n    杀死钦察船夫   %d/%d", GetMissionParam(sceneId,selfId,misIndex,0),x223006_g_DemandKill[1].num ))
			EndEvent()
			DispatchEventList(sceneId, selfId, targetId)
		end

		     
                if x223006_CheckSubmit(sceneId, selfId, targetId) > 0 then
                     BeginEvent(sceneId)
                     AddText(sceneId,"#Y"..x223006_g_MissionName)
		     AddText(sceneId,x223006_g_MissionComplete)
		     AddMoneyBonus(sceneId, x223006_g_MoneyBonus)
		     EndEvent()
                     DispatchMissionContinueInfo(sceneId, selfId, targetId, x223006_g_ScriptId, x223006_g_MissionId)
                end

        elseif x223006_CheckAccept(sceneId, selfId, targetId) > 0 then
	    	
		--发送任务接受时显示的信息
		BeginEvent(sceneId)
		AddText(sceneId,"#Y"..x223006_g_MissionName)
                AddText(sceneId,x223006_g_MissionInfo..GetName(sceneId, selfId)..x223006_g_MissionInfo2) 
		AddText(sceneId,"#Y任务目标#W") 
		AddText(sceneId,x223006_g_MissionTarget) 
		AddMoneyBonus(sceneId, x223006_g_MoneyBonus)
		EndEvent()
		
		DispatchMissionInfo(sceneId, selfId, targetId, x223006_g_ScriptId, x223006_g_MissionId)
        end
	
end



--**********************************

--列举事件

--**********************************

function x223006_OnEnumerate(sceneId, selfId, targetId)


	--如果玩家完成过这个任务
	if IsMissionHaveDone(sceneId, selfId, x223006_g_MissionId) > 0 then
		return 
	end
	--如果已接此任务
	if  x223006_CheckPushList(sceneId, selfId, targetId) > 0 then
		AddNumText(sceneId, x223006_g_ScriptId, x223006_g_MissionName)
	end
	
end



--**********************************

--检测接受条件

--**********************************

function x223006_CheckAccept(sceneId, selfId, targetId)

	if (GetName(sceneId,targetId)==x223006_g_Name) then 
					return 1
	end
	return 0
end


--**********************************

--检测查看条件

--**********************************

function x223006_CheckPushList(sceneId, selfId, targetId)
	if (sceneId==17) then
		if IsMissionHaveDone(sceneId, selfId, x223006_g_MissionIdPre) > 0 then
        	    	return 1
        	end
        end
        return 0
	
end

--**********************************

--接受

--**********************************

function x223006_OnAccept(sceneId, selfId)

	        BeginEvent(sceneId)
		AddMission( sceneId, selfId, x223006_g_MissionId, x223006_g_ScriptId, 1, 0, 0)
		AddText(sceneId,"接受任务："..x223006_g_MissionName) 
		EndEvent()
		DispatchMissionTips(sceneId, selfId)
		                                               
	     
end



--**********************************

--放弃

--**********************************

function x223006_OnAbandon(sceneId, selfId)

	--删除玩家任务列表中对应的任务
	DelMission(sceneId, selfId, x223006_g_MissionId)
	for i, item in pairs(x223006_g_DemandItem) do
		DelItem(sceneId, selfId, item.id, item.num)
	end

end



--**********************************

--检测是否可以提交

--**********************************

function x223006_CheckSubmit( sceneId, selfId, targetId)
	misIndex = GetMissionIndexByID(sceneId,selfId,x223006_g_MissionId)
	if GetMissionParam(sceneId,selfId,misIndex,0) == x223006_g_DemandKill[1].num then
	        return 1
	end
	return 0

end



--**********************************

--提交

--**********************************

function x223006_OnSubmit(sceneId, selfId, targetId, selectRadioId)
	if DelMission(sceneId, selfId, x223006_g_MissionId) > 0 then
	
		MissionCom(sceneId, selfId, x223006_g_MissionId)
		AddExp(sceneId, selfId, x223006_g_ExpBonus)
		AddMoney(sceneId, selfId, x223006_g_MoneyBonus)
		for i, item in pairs(x223006_g_RadioItemBonus) do
	        if item.id == selectRadioId then
	        item={{selectRadioID, 1}}
	        end
	        end

		for i, item in pairs(x223006_g_DemandItem) do
		DelItem(sceneId, selfId, item.id, item.num)
		end
		CallScriptFunction( x223006_g_ScriptIdNext.ScriptId, "OnDefaultEvent",sceneId, selfId, targetId )
	end
	

	
end



--**********************************

--杀死怪物或玩家

--**********************************

function x223006_OnKillObject(sceneId, selfId, objdataId)
	 if IsHaveMission(sceneId, selfId, x223006_g_MissionId) > 0 then 
	 misIndex = GetMissionIndexByID(sceneId,selfId,x223006_g_MissionId)  
	 num = GetMissionParam(sceneId,selfId,misIndex,0) 
	 	 if objdataId == x223006_g_DemandKill[1].id then 
       		    if num < x223006_g_DemandKill[1].num then
       		    	 SetMissionByIndex(sceneId,selfId,misIndex,0,num+1)
       		         BeginEvent(sceneId)
			 AddText(sceneId,format("杀死钦察船夫   %d/%d", GetMissionParam(sceneId,selfId,misIndex,0),x223006_g_DemandKill[1].num )) 
			 EndEvent()
			 DispatchMissionTips(sceneId, selfId)
		    end
       		 end
       		 
      end  

end



--**********************************

--进入区域事件

--**********************************

function x223006_OnEnterArea(sceneId, selfId, zoneId)

end



--**********************************

--道具改变

--**********************************

function x223006_OnItemChanged(sceneId, selfId, itemdataId)

end

