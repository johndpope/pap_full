--功能：萨满武器商店

x300327_g_ScriptId = 300327
x300327_g_MissionName="萨满武器商店"
x300327_g_ShopList={350}
--**********************************

--任务入口函数

--**********************************

function x300327_OnDefaultEvent(sceneId, selfId, targetId)	--点击该任务后执行此脚本
	DispatchShopItem( sceneId, selfId, targetId, x300327_g_ShopList[1] )
end



--**********************************

--列举事件

--**********************************

function x300327_OnEnumerate(sceneId, selfId, targetId)
		AddNumText(sceneId, x300327_g_ScriptId, x300327_g_MissionName)
end



--**********************************

--检测接受条件

--**********************************

function x300327_CheckAccept(sceneId, selfId, targetId)

end

--**********************************

--接受

--**********************************

function x300327_OnAccept(sceneId, selfId)
                                                                   
	     
end



--**********************************

--放弃

--**********************************

function x300327_OnAbandon(sceneId, selfId)

end



--**********************************

--检测是否可以提交

--**********************************

function x300327_CheckSubmit( sceneId, selfId, targetId)

end



--**********************************

--提交

--**********************************

function x300327_OnSubmit(sceneId, selfId, targetId, selectRadioId)
	
end



--**********************************

--杀死怪物或玩家

--**********************************

function x300327_OnKillObject(sceneId, selfId, objdataId)

end



--**********************************

--进入区域事件

--**********************************

function x300327_OnEnterArea(sceneId, selfId, zoneId)

end



--**********************************

--道具改变

--**********************************

function x300327_OnItemChanged(sceneId, selfId, itemdataId)

end