BuffMonitorExTarget = {
	nDirection = 1, --1:right,2:left,3:bottom,4:top
	nWidth = 60,
	nHeight = 120,
	Anchor = { s = "CENTER", r = "CENTER", x = 100, y = 50, }
}

RegisterCustomData("BuffMonitorExTarget.nDirection")
RegisterCustomData("BuffMonitorExTarget.Anchor")

function BuffMonitorExTarget.OnFrameCreate()
	this:RegisterEvent("UI_SCALED")
	this:RegisterEvent("CUSTOM_DATA_LOADED")
	this:RegisterEvent("ON_ENTER_CUSTOM_UI_MODE")
	this:RegisterEvent("ON_LEAVE_CUSTOM_UI_MODE")
	this:Lookup("",""):Clear()
	BuffMonitorExTarget.UpdateAnchor(this)
end

function BuffMonitorExTarget.OnEvent(event)
	if event == "UI_SCALED" or (event == "CUSTOM_DATA_LOADED" and arg0 == "Role") then
		BuffMonitorExTarget.UpdateAnchor(this)
	elseif event == "ON_ENTER_CUSTOM_UI_MODE" or event == "ON_LEAVE_CUSTOM_UI_MODE" then
		UpdateCustomModeWindow(this,"目標")
	end
end

function BuffMonitorExTarget.OnFrameDragEnd()
	this:CorrectPos()
	BuffMonitorExTarget.Anchor = GetFrameAnchor(this)
end

function BuffMonitorExTarget.UpdateAnchor(frame)
	local anchor = BuffMonitorExTarget.Anchor
	frame:SetPoint(anchor.s, 0, 0, anchor.r, anchor.x, anchor.y)
	frame:CorrectPos()
end

function BuffMonitorExTarget.OnFrameRender()
	local handle = this:Lookup("","")
	local i = 0
	while i < handle:GetItemCount() do
		local timer = handle:Lookup(i)
		local strTimeLeft = (timer.nEndTime - GetTime())/1000

		local szTime = ""
		if strTimeLeft > 3600 then
			szTime =  math.ceil(strTimeLeft / 3600).."h"
		elseif strTimeLeft > 60 then
			szTime = math.ceil(strTimeLeft / 60).."m"
		elseif strTimeLeft < 3 then
			szTime = ("%.1f"):format(strTimeLeft)
		else
			szTime = math.floor(strTimeLeft)
		end

		if strTimeLeft < 0 then
			handle:RemoveItem(i)
		else
			local text_timeLeft = timer:Lookup("TimeLeft")
			if strTimeLeft < 3 and BuffMonitorEx.bAnimate then
				local box_f = timer:Lookup("Box_F")
				box_f:Show()
				box_f:SetAlpha(BuffMonitorEx.nAlpha *  (strTimeLeft % 1) / 1 )
				scale = 1.7 ^ (1 - (strTimeLeft % 1) / 1)
				box_f:SetSize( box_f.org_w * scale, box_f.org_h * scale )
				box_f:SetRelPos(box_f.org_x - box_f.org_w * (scale - 1) / 2, box_f.org_y - box_f.org_h * (scale - 1) / 2 )

				if (strTimeLeft - math.floor(strTimeLeft)) > 0.5 then
					text_timeLeft:SetFontColor(255,0,0)
				else
					text_timeLeft:SetFontColor(255,255,255)
				end
			else
				timer:Lookup("Box_F"):Hide()
			end

			text_timeLeft:SetText(szTime)

			if BuffMonitorExTarget.nDirection == 1 then
				timer:SetRelPos(i * (BuffMonitorExTarget.nWidth * BuffMonitorEx.nScale + BuffMonitorEx.nDistance), 0)
			elseif BuffMonitorExTarget.nDirection == 2 then
				timer:SetRelPos(0 - i * (BuffMonitorExTarget.nWidth * BuffMonitorEx.nScale + BuffMonitorEx.nDistance), 0)
			elseif BuffMonitorExTarget.nDirection == 3 then
				timer:SetRelPos(0, i * (BuffMonitorExTarget.nHeight * BuffMonitorEx.nScale + BuffMonitorEx.nDistance))
			elseif BuffMonitorExTarget.nDirection == 4 then
				timer:SetRelPos(0, 0 - i * (BuffMonitorExTarget.nHeight * BuffMonitorEx.nScale + BuffMonitorEx.nDistance))
			end
			i = i + 1
		end
		-- timer:FormatAllItemPos()
	end
	handle:FormatAllItemPos()
end

function BuffMonitorExTarget.GetTimerHandleByBuffID(handle, dwBuffID)
	local count = handle:GetItemCount() - 1
	for i=0, count, 1 do
		local timer = handle:Lookup(i)
		if timer.dwBuffID == dwBuffID then
			return timer
		end
	end
	return nil
end

function BuffMonitorExTarget.RemoveTimerHandle(dwBuffID, dwBuffLevel, nStackNum, nEndFrame)
	local handle = Station.Lookup("Topmost/BuffMonitorExTarget"):Lookup("","")
	local timer = BuffMonitorExTarget.GetTimerHandleByBuffID(handle, dwBuffID)
	if timer then
		timer:GetParent():RemoveItem(timer)
	end
end

function BuffMonitorExTarget.GetAllTimeHandle()
	local handle = Station.Lookup("Topmost/BuffMonitorExTarget"):Lookup("","")
	return handle
end

function BuffMonitorExTarget.ClearTimerHandle()
	local handle = Station.Lookup("Topmost/BuffMonitorExTarget"):Lookup("","")
	handle:Clear()
end

function BuffMonitorExTarget.HideTimerHandle()
	local handle = Station.Lookup("Topmost/BuffMonitorExTarget"):Lookup("","")
	handle:Hide()
end

function BuffMonitorExTarget.ShowTimerHandle()
	local handle = Station.Lookup("Topmost/BuffMonitorExTarget"):Lookup("","")
	handle:Show()
end

function BuffMonitorExTarget.CreateTimerHandle(dwBuffID, dwBuffLevel, nStackNum, nEndFrame, bCanCancel, bDispel)
	local handle = Station.Lookup("Topmost/BuffMonitorExTarget"):Lookup("","")
	local timer = BuffMonitorExTarget.GetTimerHandleByBuffID(handle, dwBuffID)
	if not timer then
		local szIniFile = "interface\\BuffMonitorEx\\BuffMonitorExTarget.ini"
		handle:AppendItemFromIni(szIniFile, "Hanele_Timer")
		timer = handle:Lookup(handle:GetItemCount()-1)
		timer:Scale(BuffMonitorEx.nScale, BuffMonitorEx.nScale)
		timer:SetRelPos((handle:GetItemCount()-1) * BuffMonitorEx.nDistance, 0)
		timer:SetAlpha(BuffMonitorEx.nAlpha)
		local box = timer:Lookup("Box_F")
		box.org_x, box.org_y = box:GetRelPos()
		box.org_w, box.org_h = box:GetSize()
		handle:FormatAllItemPos()
	end
	timer.dwBuffID = dwBuffID
	timer.dwBuffLevel = dwBuffLevel
	timer.nEndTime = GetTime() + (nEndFrame - GetLogicFrameCount()) * 1000 / 16
	local box = timer:Lookup("Box")
	box:SetObject(UI_OBJECT_NOT_NEED_KNOWN, dwBuffID)
	box:SetObjectIcon(Table_GetBuffIconID(dwBuffID, dwBuffLevel))

	box:SetOverTextPosition(0, ITEM_POSITION.RIGHT_BOTTOM)
	box:SetOverTextFontScheme(0, 15)
	if nStackNum > 1 then
		box:SetOverText(0, nStackNum)
	else
		box:SetOverText(0, "")
	end

	box = timer:Lookup("Box_F")
	box:SetObject(UI_OBJECT_NOT_NEED_KNOWN, dwBuffID)
	box:SetObjectIcon(Table_GetBuffIconID(dwBuffID, dwBuffLevel))
	box:Hide()

	if bCanCancel then
		if bDispel then
			timer:Lookup("BuffName"):SetFontColor(255,255,0)
		else
			timer:Lookup("BuffName"):SetFontColor(0,255,0)
		end
	else
		if bDispel then
			timer:Lookup("BuffName"):SetFontColor(255,255,0)
		else
			timer:Lookup("BuffName"):SetFontColor(255,0,0)
		end
	end

	timer:Lookup("BuffName"):SetText(Table_GetBuffName(dwBuffID, dwBuffLevel))
end

Wnd.OpenWindow("interface\\BuffMonitorEx\\BuffMonitorExTarget.ini", "BuffMonitorExTarget")
