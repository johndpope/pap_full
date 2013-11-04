--������ɽ

--MisDescBegin
x204008_g_ScriptId = 204008
--x204008_g_MissionIdPre =99
x204008_g_MissionId = 103
x204008_g_MissionKind = 9
x204008_g_MissionLevel = 45
--x204008_g_ScriptIdNext = {ScriptId = 204006 ,LV = 1 }
x204008_g_Name	="�ܱ�" 
x204008_g_Name2	="������" 
x204008_g_DemandItem ={}
--x204008_g_noDemandKill ={{id=301,num=1}}	

x204008_g_MissionName="������ɽ"
x204008_g_MissionInfo="    ÿ���˶��������Լ��������������Լ����ȵ��ڽ̹�ء�\n \n    ��������Ŀ�Ĳ���Ҫ�ͳ��о�����̣�����Ҫ��ѹ�Ȼؽ�ͽ����������ս������ \n \n    ���ڵİ���ֻҪ���ֿ����ɹŴ������ɧ�Ű��գ��ɼ�˼���Ѿ�����ͨ���������˭��ֻҪ�ܰ������ɵ���ͷ�׸��󺹣�������õ�Ӧ�еı���    "  --��������
x204008_g_MissionInfo2="������Ļ���Ǻ��������Ұѻ��������ǰ��ָ����ս��#G������#W������"
x204008_g_MissionTarget="    ���ܱ�Ļ�������ǰ��ָ����ս��#G������#W������"		
x204008_g_MissionComplete="    �ܱ𽫾��Ļ����Ѿ���ס�ˣ��һ�������"					--�������npc˵���Ļ�
--x204008_g_ContinueInfo="    ���ܸ��������ۣ�ҲҪ���Ǽ��������û�����"
--������
x204008_g_MoneyBonus = 10000
--�̶���Ʒ���������8��
x204008_g_ItemBonus={}

--��ѡ��Ʒ���������8��
x204008_g_RadioItemBonus={}

--MisDescEnd
x204008_g_ExpBonus = 1000
--**********************************

--������ں���

--**********************************

function x204008_OnDefaultEvent(sceneId, selfId, targetId)	--����������ִ�д˽ű�

	--����г�����
	if x204008_CheckPushList(sceneId, selfId, targetId) <= 0 then
		return
	end

	--����ѽӴ�����
	if IsHaveMission(sceneId,selfId, x204008_g_MissionId) > 0 then
		
                     BeginEvent(sceneId)
                     AddText(sceneId,"#Y"..x204008_g_MissionName)
		     AddText(sceneId,x204008_g_MissionComplete)
		     AddMoneyBonus(sceneId, x204008_g_MoneyBonus)
		     EndEvent()
                     DispatchMissionContinueInfo(sceneId, selfId, targetId, x204008_g_ScriptId, x204008_g_MissionId)
                

        elseif x204008_CheckAccept(sceneId, selfId, targetId) > 0 then
	    	
		--�����������ʱ��ʾ����Ϣ
		BeginEvent(sceneId)
		AddText(sceneId,"#Y"..x204008_g_MissionName)
                AddText(sceneId,x204008_g_MissionInfo..GetName(sceneId, selfId)..x204008_g_MissionInfo2) 
		AddText(sceneId,"#Y����Ŀ��#W") 
		AddText(sceneId,x204008_g_MissionTarget) 
		AddMoneyBonus(sceneId, x204008_g_MoneyBonus)	
		EndEvent()
		
		DispatchMissionInfo(sceneId, selfId, targetId, x204008_g_ScriptId, x204008_g_MissionId)
        end
	
end



--**********************************

--�о��¼�

--**********************************

function x204008_OnEnumerate(sceneId, selfId, targetId)


	--��������ɹ��������
	if IsMissionHaveDone(sceneId, selfId, x204008_g_MissionId) > 0 then
		return 
	end
	--����ѽӴ�����
	if  x204008_CheckPushList(sceneId, selfId, targetId) > 0 then
		AddNumText(sceneId, x204008_g_ScriptId, x204008_g_MissionName)
	end
	
end



--**********************************

--����������

--**********************************

function x204008_CheckAccept(sceneId, selfId, targetId)

	if (GetName(sceneId,targetId)==x204008_g_Name) then 
					return 1
	end
	return 0
end


--**********************************

--���鿴����

--**********************************

function x204008_CheckPushList(sceneId, selfId, targetId)
        if (sceneId==4) then
        		if (GetName(sceneId,targetId)==x204008_g_Name) then
	        	        if IsHaveMission(sceneId,selfId, x204008_g_MissionId)<= 0 then
	        	            	return 1
	        	        end
	        	end
			if (GetName(sceneId,targetId)==x204008_g_Name2) then
				    if IsHaveMission(sceneId,selfId, x204008_g_MissionId) > 0 then
				    	return 1
	        	            end
	        	end
	end
        return 0
	
end

--**********************************

--����

--**********************************

function x204008_OnAccept(sceneId, selfId)

	                                                  
	BeginEvent(sceneId)
	AddMission( sceneId, selfId, x204008_g_MissionId, x204008_g_ScriptId, 1, 0, 0)
	AddText(sceneId,"��������"..x204008_g_MissionName) 
	EndEvent()
	DispatchMissionTips(sceneId, selfId)
	
end



--**********************************

--����

--**********************************

function x204008_OnAbandon(sceneId, selfId)

	--ɾ����������б��ж�Ӧ������
	DelMission(sceneId, selfId, x204008_g_MissionId)
	for i, item in x204008_g_DemandItem do
		DelItem(sceneId, selfId, item.id, item.num)
	end

end



--**********************************

--����Ƿ�����ύ

--**********************************

function x204008_CheckSubmit( sceneId, selfId, targetId)

	if (GetName(sceneId,targetId)==x204008_g_Name2) then
	        return 1
	end
	return 0

end



--**********************************

--�ύ

--**********************************

function x204008_OnSubmit(sceneId, selfId, targetId, selectRadioId)

	if DelMission(sceneId, selfId, x204008_g_MissionId) > 0 then
	
		MissionCom(sceneId, selfId, x204008_g_MissionId)
		AddExp(sceneId, selfId, x204008_g_ExpBonus)
		AddMoney(sceneId, selfId, x204008_g_MoneyBonus)
		for i, item in x204008_g_RadioItemBonus do
	        if item.id == selectRadioId then
	        item={{selectRadioID, 1}}
	        end
	        end

		for i, item in x204008_g_DemandItem do
		DelItem(sceneId, selfId, item.id, item.num)
		end
		--CallScriptFunction( x204008_g_ScriptIdNext.ScriptId, "OnDefaultEvent",sceneId, selfId, targetId )
	end
	

	
end



--**********************************

--ɱ����������

--**********************************

function x204008_OnKillObject(sceneId, selfId, objdataId)
	 

end



--**********************************

--���������¼�

--**********************************

function x204008_OnEnterArea(sceneId, selfId, zoneId)

end



--**********************************

--���߸ı�

--**********************************

function x204008_OnItemChanged(sceneId, selfId, itemdataId)

end
