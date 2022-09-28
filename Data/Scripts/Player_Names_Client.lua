local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local TEMPLATE = ROOT:GetCustomProperty("Template")

local players = {}
local LOCAL_PLAYER = Game.GetLocalPlayer()

local function on_player_joined(player)
	if(player == LOCAL_PLAYER) then
		return
	end

	local plate = World.SpawnAsset(TEMPLATE, { parent = script.parent })

	plate:GetChildren()[1].text = player.name
	plate:AttachToPlayer(player, "nameplate")
	players[player] = plate

	plate:LookAtContinuous(LOCAL_PLAYER, true)
end

local function on_player_left(player)
	if(player == LOCAL_PLAYER) then
		return
	end

	if(players[player] ~= nil) then
		players[player]:Destroy()
		players[player] = nil
	end
end

Game.playerJoinedEvent:Connect(on_player_joined)
Game.playerLeftEvent:Connect(on_player_left)