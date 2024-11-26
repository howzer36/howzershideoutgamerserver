-- jrpAnim for tes3mp 0.7-prerelease. created by malic for JRP Roleplay
-- simple menu to do animations
-- under GPLv3

local jrpAnim = {}
local guiID = {}
guiID.animMenu = 31990

function jrpAnim.showAnimMenu(eventStatus,pid)
	local message = color.Yellow.. "Animation Menu"
	
	optionList = "Check Pockets/Confusion;Look at Hand;Look Behind;Scratch neck/Adjust hair;Shift Feet/Look Around;Touch Chin;Touch Shoulder/Hip;Yawn/Impatience"

	tes3mp.CustomMessageBox(pid, guiID.animMenu, message, optionList .. ";Cancel")
end

function jrpAnim.checkGUI(newStatus,pid,idGui,data)
	if idGui == guiID.animMenu then
		if tonumber(data) == 0 then -- check pockets
			animHelper.PlayAnimation(pid, "idle9")
		elseif tonumber(data) == 1 then -- look at hand
			animHelper.PlayAnimation(pid, "idle7")
		elseif tonumber(data) == 2 then -- look behind
			animHelper.PlayAnimation(pid, "idle3")
		elseif tonumber(data) == 3 then -- scratch neck
			animHelper.PlayAnimation(pid, "idle4")
		elseif tonumber(data) == 4 then -- shift feet
			animHelper.PlayAnimation(pid, "idle2")
		elseif tonumber(data) == 5 then -- touch chin
			animHelper.PlayAnimation(pid, "idle8")
		elseif tonumber(data) == 6 then -- touch shoulder
			animHelper.PlayAnimation(pid, "idle5")
		elseif tonumber(data) == 7 then -- yawn
			animHelper.PlayAnimation(pid, "idle6")
		end
	else
	end
end

function jrpAnim.ChatListener(pid, cmd)
	--nickname commands
	if cmd[1] == "a" or cmd[1] == "anim" and cmd[2] == nil then
		jrpAnim.showAnimMenu(eventStatus,pid)
	end
end

customEventHooks.registerValidator("OnGUIAction", jrpAnim.checkGUI)
customCommandHooks.registerCommand("a", jrpAnim.ChatListener)
customCommandHooks.registerCommand("anim", jrpAnim.ChatListener)
