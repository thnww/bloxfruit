local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local TeleportToPlaceInstance = TeleportService.TeleportToPlaceInstance
local Teleport = TeleportService.Teleport
local JSONDecode = HttpService.JSONDecode
local HttpGet = game.HttpGet
local PlaceId = game.PlaceId
local v8 = "https://games.roblox.com/v1/games/" .. PlaceId
local v9 = v8 .. "/servers/Public?sortOrder=Asc&excludeFullGames=true&limit=100"
local v10 = v8 .. "/servers/Public?sortOrder=Asc&limit=100&cursor="
local n1 = 3
local v12 = game:GetService("Players").MaxPlayers - 2

local function v13(p1)
	local t1 = {}

	for _, v in pairs(p1) do
		local playing = v.playing
		local v18 = tonumber(playing)

		if not v18 then
			n1 = n1 + 1

			return
		end

		if v18 <= v12 then
			local id = v.id
			local v20 = tostring(id)

			table.insert(t1, v20)
		end
	end

	return t1
end

local v21 = nil

local function v22(p2)
	for _, v in pairs(p2) do
		pcall(v21, v)
		task.wait(1)
	end
end

v21 = function(p3)
	TeleportToPlaceInstance(TeleportService, PlaceId, p3)
end

local function v25()
	print("Getting response...")

	local v26 = v9
	local ok, result

	if n1 <= 0 then
		print("Attempts rate limited, teleporting to place...")
		Teleport(TeleportService, PlaceId)
		TeleportToPlaceInstance(TeleportService, PlaceId, "")
		ok = nil
		result = nil
	else
		ok, result = pcall(function()
			return JSONDecode(HttpService, (HttpGet(game, v26)))
		end)
	end

	local v29

	if ok then
		v29 = result.data ~= nil
	else
		warn("Failed to get server response", result)
		v29 = false
	end

	if v29 then
		return result
	end
end

local v30 = nil

local function v31()
	local v32 = v30()

	if not v32 then
		return
	end

	local v33 = v13(v32.data)

	if not v33 then
		Teleport(TeleportService, PlaceId)
		TeleportToPlaceInstance(TeleportService, PlaceId, "")

		return
	end

	if #v33 > 0 then
		warn("Trying to teleport...")
		v22(v33)

		return
	end

	print("Getting next cursor...")

	local v34 = v10 .. v32.nextPageCursor
	local ok, result

	if n1 <= 0 then
		print("Attempts rate limited, teleporting to place...")
		Teleport(TeleportService, PlaceId)
		TeleportToPlaceInstance(TeleportService, PlaceId, "")
		ok = nil
		result = nil
	else
		ok, result = pcall(function()
			return JSONDecode(HttpService, (HttpGet(game, v34)))
		end)
	end

	local v37

	if ok then
		v37 = result.data ~= nil
	else
		warn("Failed to get server response", result)
		v37 = false
	end

	if v37 then
	end
end

v30 = v25
task.spawn(function()
	while task.wait(1) do
		v31()
	end
end)
