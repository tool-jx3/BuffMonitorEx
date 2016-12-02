BuffMonitorEx = BuffMonitorEx or {}

function BuffMonitorEx.OnFrameCreate()
	this:RegisterEvent("BUFF_UPDATE")
end

function BuffMonitorEx.OnFrameBreathe()
	if GetLogicFrameCount() % 8 == 0 then
		local hPlayer = GetClientPlayer()
		if not hPlayer then
			return
		end
		local hTarget = GetTargetHandle(hPlayer.GetTarget())
		if not hTarget or hTarget.dwID == hPlayer.dwID then
			BuffMonitorExTarget.ClearTimerHandle()
		end
	end
end


function BuffMonitorEx.OnEvent(event)
	if event == "BUFF_UPDATE" then
		if arg0 == GetClientPlayer().dwID then
			BuffMonitorEx.UpdatePlayerBuff()
		else
			if arg7 then
				BuffMonitorEx.UpdateTargetBuff()
			end
		end
	end
end

function BuffMonitorEx.UpdateTargetBuff()
	if not BuffMonitorEx.bTarget then
		return
	end
	local hPlayer = GetClientPlayer()
	if not hPlayer then
		return
	end
	local hTarget = GetTargetHandle(hPlayer.GetTarget())
	if not hTarget then
		return
	end

	BuffMonitorExTarget.ClearTimerHandle()
	-- local tBuffList = hTarget.GetBuffList() or {}
	local tBuffList = BuffMonitorEx.GetBuffList(hTarget) or {}
	if tBuffList then
		for _, tBuff in pairs(tBuffList) do
			local szBuffName = Table_GetBuffName(tBuff.dwID, tBuff.nLevel)
			if tBuff.bCanCancel then
				if Table_BuffIsVisible(tBuff.dwID,tBuff.nLevel) and BuffMonitorEx.BuffIsInMonitor("TargetBuff", szBuffName) and BuffMonitorEx.bTargetBuff then
					local bDispel
					--敵對目標增益驅散
					if IsEnemy(hPlayer.dwID, hTarget.dwID) then
						bDispel = IsBuffDispel(tBuff.dwID, tBuff.nLevel)
					end
					BuffMonitorExTarget.CreateTimerHandle(tBuff.dwID, tBuff.nLevel, tBuff.nStackNum, tBuff.nEndFrame, tBuff.bCanCancel, bDispel)
				end
			else
				if BuffMonitorEx.bAutoSwitch and not IsPlayer(hTarget.dwID) then
					if Table_BuffIsVisible(tBuff.dwID,tBuff.nLevel) and BuffMonitorEx.BuffIsInMonitor("TargetDebuff", szBuffName) and tBuff.dwSkillSrcID == hPlayer.dwID and BuffMonitorEx.bTargetDebuff then
						BuffMonitorExTarget.CreateTimerHandle(tBuff.dwID, tBuff.nLevel, tBuff.nStackNum, tBuff.nEndFrame, tBuff.bCanCancel, false)
					end
				else
					if Table_BuffIsVisible(tBuff.dwID,tBuff.nLevel) and BuffMonitorEx.BuffIsInMonitor("TargetDebuff", szBuffName) and BuffMonitorEx.bTargetDebuff then
						local bDispel
						--隊友減益驅散
						if not IsEnemy(hPlayer.dwID, hTarget.dwID) then
							bDispel = IsBuffDispel(tBuff.dwID, tBuff.nLevel)
						end
						BuffMonitorExTarget.CreateTimerHandle(tBuff.dwID, tBuff.nLevel, tBuff.nStackNum, tBuff.nEndFrame, tBuff.bCanCancel, bDispel)
					end
				end
			end
		end
	end
end

function BuffMonitorEx.UpdatePlayerBuff()
	if not BuffMonitorEx.bPlayer then
		return
	end
	local hPlayer = GetClientPlayer()
	if not hPlayer then
		return
	end

	BuffMonitorExPlayer.ClearTimerHandle()
	-- local tBuffList = hPlayer.GetBuffList() or {}
	local tBuffList = BuffMonitorEx.GetBuffList(hPlayer) or {}
	if tBuffList then
		for _, tBuff in pairs(tBuffList) do
			local szBuffName = Table_GetBuffName(tBuff.dwID, tBuff.nLevel)
			if tBuff.bCanCancel then
				if Table_BuffIsVisible(tBuff.dwID,tBuff.nLevel) and BuffMonitorEx.BuffIsInMonitor("PlayerBuff", szBuffName) and BuffMonitorEx.bPlayerBuff then
					BuffMonitorExPlayer.CreateTimerHandle(tBuff.dwID, tBuff.nLevel, tBuff.nStackNum, tBuff.nEndFrame, tBuff.bCanCancel, false)
				end
			else
				if Table_BuffIsVisible(tBuff.dwID,tBuff.nLevel) and BuffMonitorEx.BuffIsInMonitor("PlayerDebuff", szBuffName) and BuffMonitorEx.bPlayerDebuff then
					--自身減益驅散
					local bDispel = IsBuffDispel(tBuff.dwID, tBuff.nLevel)
					BuffMonitorExPlayer.CreateTimerHandle(tBuff.dwID, tBuff.nLevel, tBuff.nStackNum, tBuff.nEndFrame, tBuff.bCanCancel, bDispel)
				end
			end
		end
	end
end

function BuffMonitorEx.BuffIsInMonitor(szType, szBuffName)
	local tBuffList = BuffMonitorEx.tBuffData[szType]
	local tForce = {"萬花","七秀","五毒","純陽","少林","藏劍","天策","唐門", "明教","丐幫","蒼雲","長歌","其他"}
	local flag = false
	for i = 1, #tForce, 1 do
		local szForce = tForce[i]
		for j = 1, #tBuffList[szForce], 1 do
			if szBuffName == tBuffList[szForce][j].szName and tBuffList[szForce][j].bOn then
				flag = true
				break
			end
		end
	end
	return flag
end

function BuffMonitorEx.GetBuffList(obj)
	local tBuffTable = {}

	local nCount = obj.GetBuffCount()
	for i=1,nCount,1 do
		local dwID, nLevel, bCanCancel, nEndFrame, nIndex, nStackNum, dwSkillSrcID, bValid = obj.GetBuff(i - 1)
		if dwID then
			table.insert(tBuffTable,{dwID = dwID, nLevel = nLevel, bCanCancel = bCanCancel, nEndFrame = nEndFrame, nIndex = nIndex, nStackNum = nStackNum, dwSkillSrcID = dwSkillSrcID, bValid = bValid})
		end
	end

	return tBuffTable
end

Wnd.OpenWindow("Interface\\BuffMonitorEx\\BuffMonitorEx.ini", "BuffMonitorEx")
