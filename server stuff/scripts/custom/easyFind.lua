-- easyFind for tes3mp 0.7-prerelease. created by malic for JRP Roleplay
-- A menu that shows you where every player is, because everybody just watches their client output anyway.
-- Type /find to use
-- under GPLv3

local easyFind = {}

table.insert(guiHelper.names, "easyFind_list")
guiHelper.ID = tableHelper.enum(guiHelper.names)

local function listPlayers()
	local lastPid = tes3mp.GetLastPlayerId()
	local list = ""
	local divider = ""

	for playerIndex = 0, lastPid do
		if playerIndex == lastPid then
			divider = ""
		else
			divider = "\n"
		end
		if Players[playerIndex] ~= nil and Players[playerIndex]:IsLoggedIn() then
			local targetCell = ""
			targetCell = tes3mp.GetCell(playerIndex)
			list = list .. color.Orange .. tostring(Players[playerIndex].name) .. " (" .. tostring(Players[playerIndex].pid) .. ")" .. color.Default .. " is in " .. color.Yellow .. targetCell .. divider
		end
	end
	return list
end

local function showListMenu(eventStatus,pid)
	tes3mp.CustomMessageBox(pid, guiHelper.ID.easyFind_list, listPlayers(), "Close")
end

local function ChatListener(pid, cmd)
	if cmd[1] == "find" and cmd[2] == nil then
		showListMenu(eventStatus,pid)
	end
end

customCommandHooks.registerCommand("find", ChatListener)
