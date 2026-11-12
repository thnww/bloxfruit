--// dsc thienhuynhngoc
while true do
	wait()

	if not game:IsLoaded() then
		continue
	end

	if game.Players.LocalPlayer then
		break
	end
end

local settings = {}
local HttpService = game:GetService("HttpService")
local settingsFileName = game.Players.LocalPlayer.Name .. "-KaitunV4.json"

SaveSettings = function(name, value)
	if name ~= nil then
		settings[name] = value
	end

	if not isfolder("Banana Cat Hub") then
		makefolder("Banana Cat Hub")
	end
--// dsc thienhuynhngoc
	writefile("Banana Cat Hub" .. "/" .. settingsFileName, HttpService:JSONEncode(settings))
end

if getgenv().Config then
	settings = getgenv().Config
	SaveSettings()
end

ReadSetting = function()
	local ok, result = pcall(function()
		if not isfolder("Banana Cat Hub") then
			makefolder("Banana Cat Hub")
		end
--// dsc thienhuynhngoc
		return HttpService:JSONDecode(readfile("Banana Cat Hub" .. "/" .. settingsFileName))
	end)

	if ok then
		return result
	end

	SaveSettings()

	return ReadSetting()
end
settings = ReadSetting()
getgenv().Settings = settings

repeat
	wait()
until game:FindFirstChild("CoreGui")

repeat
	wait()
until not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen")

while true do
	wait()
--// dsc thienhuynhngoc
	if not game:IsLoaded() then
		continue
	end

	if game.Players.LocalPlayer:FindFirstChild("DataLoaded") then
		break
	end
end

if getgenv().LoadScript then
	return print("Double UI")
end

FireButton = function(button)
	button.Selectable = true
	game:GetService("GuiService").SelectedObject = button
	game:GetService("VirtualInputManager"):SendKeyEvent(true, "Return", false, button)
	game:GetService("VirtualInputManager"):SendKeyEvent(false, "Return", false, button)
	button.Activated:Connect(function()
		game:GetService("GuiService").SelectedObject = nil
	end)
end

while true do
	wait()
--// dsc thienhuynhngoc
	if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main (minimal)") then
		break
	elseif game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main") then
		break
	end
end

local MainMinimal = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main (minimal)") or game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main")

repeat
	wait()
until MainMinimal:FindFirstChild("ChooseTeam")

while true do
	wait()
	pcall(function()
		FireButton(game:GetService("Players").LocalPlayer.PlayerGui["Main (minimal)"].ChooseTeam.Container.Marines.Frame.TextButton)
		wait(1)
	end)

	local PlayerGui, Main, Main2

	if not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main (minimal)") then
		PlayerGui = game:GetService("Players").LocalPlayer.PlayerGui

		if not PlayerGui:FindFirstChild("Main") then
			continue
		end

		Main = game:GetService("Players").LocalPlayer.PlayerGui.Main

		if not Main:FindFirstChild("ChooseTeam") then
			continue
		end

		Main2 = game:GetService("Players").LocalPlayer.PlayerGui.Main

		if not Main2:WaitForChild("ChooseTeam").Visible then
			break
		end
	end

	if not game:GetService("Players").LocalPlayer.PlayerGui["Main (minimal)"]:FindFirstChild("ChooseTeam") then
		PlayerGui = game:GetService("Players").LocalPlayer.PlayerGui

		if not PlayerGui:FindFirstChild("Main") then
			continue
		end

		Main = game:GetService("Players").LocalPlayer.PlayerGui.Main

		if not Main:FindFirstChild("ChooseTeam") then
			continue
		end
--// dsc thienhuynhngoc
		Main2 = game:GetService("Players").LocalPlayer.PlayerGui.Main

		if Main2:WaitForChild("ChooseTeam").Visible then
			continue
		end
	elseif game:GetService("Players").LocalPlayer.PlayerGui["Main (minimal)"]:WaitForChild("ChooseTeam").Visible then
		PlayerGui = game:GetService("Players").LocalPlayer.PlayerGui

		if not PlayerGui:FindFirstChild("Main") then
			continue
		end

		Main = game:GetService("Players").LocalPlayer.PlayerGui.Main

		if not Main:FindFirstChild("ChooseTeam") then
			continue
		end

		Main2 = game:GetService("Players").LocalPlayer.PlayerGui.Main

		if not Main2:WaitForChild("ChooseTeam").Visible then
			break
		end
	end

	break
end

game:GetService("GuiService").SelectedObject = nil
getgenv().Key = nil
getgenv().Whitelisted = true

getgenv().LoadScript = true

local LocalPlayer = game.Players.LocalPlayer

getgenv().getupvalue = debug.getupvalue
getgenv().getupvalues = debug.getupvalues

local whitelistOnly = false

local executorRequest = (syn and syn.request)
	or (http and http.request)
	or http_request
	or (fluxus and fluxus.request)
	or request

getgenv().ExploitReq = executorRequest
ExploitReq = executorRequest

HopServer = function()
	local ok, data = pcall(function()
		return game:GetService("HttpService"):JSONDecode(game:HttpGet(
			"https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
	end)

	if not ok or type(data) ~= "table" or type(data.data) ~= "table" then
		return
	end

	for _, server in next, data.data do
		if server.id and server.id ~= game.JobId and tonumber(server.playing) < tonumber(server.maxPlayers) then
			game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", server.id)

			return
		end
	end
end

DeleteIgnoredMobSpawn = function()
	local origin = game:GetService("Workspace"):FindFirstChild("_WorldOrigin")

	if not origin then
		return
	end

	for _, spawn in next, origin.EnemySpawns:GetChildren() do
		local ignored = spawn:FindFirstChild("Ignored")

		if ignored then
			ignored:Destroy()
		end
	end
end

checkboat = function()
	for _, model in next, game:GetService("Workspace"):GetChildren() do
		if model:IsA("Model") then
			local seat = model:FindFirstChild("VehicleSeat")

			if seat and seat:IsA("VehicleSeat") and LocalPlayer:DistanceFromCharacter(seat.Position) <= 500 then
				return model
			end
		end
	end
end


local VirtualUser = game:GetService("VirtualUser")

game:GetService("Players").LocalPlayer.Idled:connect(function()
	VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	wait(1)
	VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local versionTag = " [ Unlocked ]"

getgenv().Window = Fluent:CreateWindow({
	Title = "Banana Cat Hub-Kaitun V4" .. versionTag,
	SubTitle = "by Obii",
	TabWidth = 125,
	Size = UDim2.fromOffset(500, 350),
	Acrylic = false,
	Theme = "Dark",
	MinimizeKey = Enum.KeyCode.LeftControl
})
loadstring([[    local MT = getrawmetatable(game)
    local OldNameCall = MT.__namecall
    setreadonly(MT, false)
    MT.__namecall = newcclosure(function(self, ...)
    local Method = getnamecallmethod()
    local Args = {...}
    if Method == 'FireServer' and self.Name == 'RemoteEvent' and AimPos 
    and tostring(AimPos.X) ~= "nan"  then
        if  #Args == 1 and typeof(Args[1]) == "Vector3" then
            Args[1] = AimPos.Position
        end
        if #Args == 1 and typeof(Args[1]) == "CFrame" then
            Args[1] = AimPos
        end
    end
    return OldNameCall(self, unpack(Args))
end)
setreadonly(MT, true)]])()
Translate = function(text)
	return text
end
tick()

local Tabs = {
	ShopMain = Window:AddTab({
		Title = Translate("Tab Shop"),
		Icon = ""
	}),
	TabSetupV4 = Window:AddTab({
		Title = "Tab Setup V4",
		Icon = ""
	}),
	TabDevilFruit = Window:AddTab({
		Title = "Tab Devil Fruit",
		Icon = ""
	}),
	StatusSvMain = Window:AddTab({
		Title = Translate("Tab Status And Server"),
		Icon = ""
	})
}

getgenv().Options = Fluent.Options
Window:SelectTab(1)
getgenv().IsPlayerDead = function()
	if LocalPlayer.Character then
		if LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid.Health ~= 0 then
			return
		end
	end

	return true
end

local response = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("GetUnlockables")
local entrancePositions = {}

if response.DefeatedIndraTrueForm then
	if game.Workspace:GetAttribute("MAP") == "Sea3" then
		entrancePositions["Caslte On The Sea"] = Vector3.new(-4967.6826171875, 314.88238525390625, -3157.098388671875)
		entrancePositions.Hydra = Vector3.new(5661.5302734375, 1013.4113159179688, -334.9619140625)
		entrancePositions.Mansion = Vector3.new(-12463.8740234375, 374.91445922851562, -7523.77392578125)
	end
end

if game.Workspace:GetAttribute("MAP") == "Sea3" then
	entrancePositions["Temple Clock"] = Vector3.new(28282.5703125, 14896.8505859375, 105.10427093505859)
end

if game.Workspace:GetAttribute("MAP") == "Sea2" then
	entrancePositions["122"] = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)
	entrancePositions["3032"] = Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)
end

if response.FlamingoAccess then
	if game.Workspace:GetAttribute("MAP") == "Sea2" then
		entrancePositions.Mansion = Vector3.new(-288.46246337890625, 306.130615234375, 597.99884033203125)
		entrancePositions.Flamingo = Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625)
	end
end

if game.Workspace:GetAttribute("MAP") == "Sea1" then
	entrancePositions = {
		["1"] = Vector3.new(-7894.6201171875, 5545.49169921875, -380.24673461914062),
		["2"] = Vector3.new(-4607.82275390625, 872.54229736328125, -1667.556884765625),
		["3"] = Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
		["4"] = Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)
	}
end

toTarget = function(fromPos, toPos, toCFrame, instant, noElevate)
	if IsPlayerDead() then
		if getgenv().Tween then
			getgenv().Tween:Pause()
			getgenv().Tween:Cancel()
		end

		repeat
			wait()

			if getgenv().Tween then
				getgenv().Tween:Pause()
				getgenv().Tween:Cancel()
			end
		until LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid.Health > 0

		wait(3)

		return
	end

	if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Sit then
		if getgenv().Tween then
			getgenv().Tween:Pause()
			getgenv().Tween:Cancel()
		end

		wait(1)
		getgenv().noclip = false
		game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, game)
		wait()
		game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, game)
		wait(1)

		if LocalPlayer.Character:FindFirstChild("Humanoid") then
			if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				if LocalPlayer.Character.HumanoidRootPart:FindFirstChild("EffectsSY") then
					LocalPlayer.Character.HumanoidRootPart.EffectsSY:Destroy()
				end
			end
		end

		wait(0.5)
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
		wait(1)
		LocalPlayer.Character.HumanoidRootPart.CFrame *= CFrame.new(0, 10, 0)

		return
	end

	if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		for k, v in pairs(entrancePositions) do
			if not ((toPos - v).Magnitude <= 3000) or not ((toPos - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 3000) then
				continue
			end

			getgenv().noclip = true

			if getgenv().Tween then
				getgenv().Tween:Pause()
				getgenv().Tween:Cancel()
			end

			if k == "Temple Clock" then
				if game.ReplicatedStorage.MapStash:FindFirstChild("Temple of Time") then
					game.ReplicatedStorage.MapStash["Temple of Time"].Parent = workspace.Map
					game.Players.LocalPlayer.CharacterAdded:Once(function()
						if not workspace:GetAttribute("RestartingTemple") then
							workspace:SetAttribute("RestartingTemple", true)
							task.delay(0.1, function()
								workspace:SetAttribute("RestartingTemple", nil)
							end)

							if workspace.Map:FindFirstChild("Temple of Time") then
								workspace.Map["Temple of Time"].Parent = game.ReplicatedStorage.MapStash
							end
						end
					end)
				end
			end

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", v)
			wait(2)

			return
		end

		local TweenService = game:GetService("TweenService")
		local tweenInfo = TweenInfo.new((toPos - fromPos).Magnitude / 350, Enum.EasingStyle.Linear)

		if game.Workspace:GetAttribute("MAP") == "Sea3" and (toPos - Vector3.new(28609.392578125, 14896.533203125, 106.42165374755859)).Magnitude > 3000 and (Vector3.new(28609.392578125, 14896.533203125, 106.42165374755859) - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3000 then
			getgenv().Tween = TweenService:Create(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart"), TweenInfo.new((Vector3.new(28609.392578125, 14896.533203125, 106.42165374755859) - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / 350, Enum.EasingStyle.Linear), {
				CFrame = CFrame.new(28609.392578125, 14896.533203125, 106.42165374755859)
			})
			getgenv().noclip = true
			getgenv().Tween:Play()

			if (Vector3.new(28609.392578125, 14896.533203125, 106.42165374755859) - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 8 then
				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("RaceV4Progress", "Check")
				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("RaceV4Progress", "TeleportBack")

				if getgenv().Tween then
					getgenv().Tween:Pause()
					getgenv().Tween:Cancel()
				end
			end

			return
		end

		if not (not ((toPos - fromPos).Magnitude <= 100) or instant or ReadyToDodge) then
			getgenv().noclip = true

			if getgenv().Tween then
				getgenv().Tween:Pause()
				getgenv().Tween:Cancel()
			end

			LocalPlayer.Character.HumanoidRootPart.CFrame = toCFrame
		elseif game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
			if LocalPlayer.Character.Humanoid.Health > 0 then
				local cFrame = CFrame.new(0, 0, 0)

				if not noElevate and ReadyToDodge then
					cFrame = CFrame.new(0, 200, 0)
				end

				if (Vector3.new(0, LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Y, 0) - Vector3.new(0, -60, 0)).Magnitude <= 60 then
					LocalPlayer.Character.HumanoidRootPart.CFrame *= CFrame.new(0, 20, 0)
				end

				getgenv().Tween = TweenService:Create(LocalPlayer.Character.HumanoidRootPart, tweenInfo, {
					CFrame = toCFrame * cFrame
				})
				getgenv().Tween:Play()
				getgenv().noclip = true
			end
		end
	end
end

local ancientOneParagraph = Tabs.TabSetupV4:AddParagraph({
	Title = "Acient One Status",
	Content = ""
})
local Animation = Instance.new("Animation")

local function sendMessage(tag)
	wait(1)
	Animation.AnimationId = "rbxassetid://" .. "507766666" .. "=bananauser=" .. tostring(tag)

	local Humanoid = (game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("Humanoid", 5)

	if Humanoid then
		Humanoid:LoadAnimation(Animation):Play()
	end
end

getgenv().SendMessage = sendMessage
getgenv().SendMessageActiveRace = function(tag)
	Animation.AnimationId = "rbxassetid://" .. "507766666" .. "=bananauser=" .. tostring(tag)

	local Humanoid = (game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("Humanoid", 5)

	if Humanoid then
		Humanoid:LoadAnimation(Animation):Play()
	end
end

local accountMainId = math.random(100000, 999999)

getgenv().SendAccMain = function()
	SendMessage("AccMain:" .. tostring(accountMainId))
end
getgenv().AcountHelp = {}
getgenv().AccountMain = {}
getgenv().AccountFarmTrain = {}

local function watchAccountAnimation(humanoid, player)
	humanoid.AnimationPlayed:Connect(function(animationTrack)
		local match = animationTrack.Animation.AnimationId:match("bananauser=(.+)")

		if not match then
			return
		end

		if (match == "AccHelp" or match == "Remove") and player.Name == game.Players.LocalPlayer.Name then
			return
		end

		if match == "AccHelp" then
			if not table.find(getgenv().AcountHelp, player.Name) then
				table.insert(getgenv().AcountHelp, player.Name)
			end
		elseif match == "Remove" then
			local helpIndex = table.find(getgenv().AcountHelp, player.Name)

			if helpIndex then
				table.remove(getgenv().AcountHelp, helpIndex)
			end
		elseif match:match("^AccMain:%d+$") then
			local parsedMainId = tonumber(match:match("^AccMain:(%d+)$"))

			if parsedMainId and not getgenv().AccountMain[player.Name] then
				getgenv().AccountMain[player.Name] = parsedMainId
				print("--", player.Name, parsedMainId)
			end
		elseif match == "AccMainRemove" then
			getgenv().AccountMain[player.Name] = nil
		elseif match ~= "FarmTrain" or table.find(getgenv().AccountFarmTrain, player.Name) then
			if match == "ActiveRace" then
				getgenv().TurnonRacev3 = true
			end
		else
			table.insert(getgenv().AccountFarmTrain, player.Name)
		end
	end)
end

CheckMainGoTrial = function()
	local huge = math.huge
	local oldestFarmPlayer

	for i, v in ipairs(getgenv().ConfigV4["Account Up Gear"]) do
		if not table.find(getgenv().AccountFarmTrain, v) and i < huge then
			huge = i
			oldestFarmPlayer = v
		end
	end

	return oldestFarmPlayer
end
CountFarmTrain = function()
	local farmTrainCount = 0

	for _, v in next, getgenv().AccountFarmTrain, nil do
		if v then
			farmTrainCount += 1
		end
	end

	return farmTrainCount
end

local function hookPlayerAnimations(player)
	if player.Character then
		local Humanoid = player.Character:FindFirstChild("Humanoid")

		if Humanoid then
			watchAccountAnimation(Humanoid, player)
		end
	end

	player.CharacterAdded:Connect(function(character)
		local Humanoid = character:WaitForChild("Humanoid", 5)

		if Humanoid then
			watchAccountAnimation(Humanoid, player)
		end
	end)
end

for _, player in ipairs(game.Players:GetPlayers()) do
	hookPlayerAnimations(player)
end

game.Players.PlayerAdded:Connect(hookPlayerAnimations)
DetectNamePlayer = function()
	local otherPlayerNames = {}
	local Players = game:GetService("Players")

	for _, child in pairs(Players:GetChildren()) do
		if child.Name ~= LocalPlayer.Name and not table.find(otherPlayerNames, child.Name) then
			table.insert(otherPlayerNames, child.Name)
		end
	end

	return otherPlayerNames
end

local setupTab = Tabs.TabSetupV4
local AddToggle = setupTab.AddToggle
local accountMainUpGearKey = "Account Main Up Gear"
local accountMainUpGearOptions = {
	Title = Translate("Account Main Up Gear")
}

accountMainUpGearOptions.Default = settings["Account Main Up Gear"] or false
accountMainUpGearOptions.Callback = function(enabled)
	if not enabled and getgenv().AccountMain[LocalPlayer.Name] then
		getgenv().SendMessage("AccMainRemove")
	end

	SaveSettings("Account Main Up Gear", enabled)
end
AddToggle(setupTab, accountMainUpGearKey, accountMainUpGearOptions)
Tabs.TabSetupV4:AddToggle("Account Help", {
	Title = Translate("Account Help"),
	Default = settings["Account Help"] or false,
	Callback = function(enabled)
		SaveSettings("Account Help", enabled)
	end
})
Tabs.TabSetupV4:AddToggle("Auto Kick When End Full Moon", {
	Title = Translate("Auto Kick When End Full Moon [ BETA ]"),
	Default = settings["Auto Kick When End Full Moon"] or false,
	Callback = function(enabled)
		SaveSettings("Auto Kick When End Full Moon", enabled)
	end
})

local setupTab2 = Tabs.TabSetupV4
local AddToggle2 = setupTab2.AddToggle
local startKaitunKey = "Start Kaitun"
local startKaitunOptions = {
	Title = Translate("Start Kaitun")
}

startKaitunOptions.Default = settings["Start Kaitun"] or false
startKaitunOptions.Callback = function(enabled)
	SaveSettings("Start Kaitun", enabled)
end
AddToggle2(setupTab2, startKaitunKey, startKaitunOptions)
CheckRace = function()
	local response2 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
	local response3 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1")

	if game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
		return " V4"
	end

	if response2 == -2 then
		return " V3"
	end

	if response3 == -2 then
		return " V2"
	end

	return " V1"
end
DetectItemPlr = function(itemName)
	if not LocalPlayer.Character:FindFirstChild(itemName) then
		if not LocalPlayer.Backpack:FindFirstChild(itemName) then
			return
		end
	end

	return true
end

local function createFloatEffect()
	if not LocalPlayer.Character.HumanoidRootPart:FindFirstChild("EffectsSY") then
		local BodyVelocity = Instance.new("BodyVelocity")

		BodyVelocity.Parent = LocalPlayer.Character.HumanoidRootPart
		BodyVelocity.Name = "EffectsSY"
		BodyVelocity.Velocity = Vector3.new(0, 0, 0)
		BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	end
end

CreateTweenFloat = createFloatEffect
game:GetService("RunService").Stepped:Connect(function()
	if getgenv().noclip then
		if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
			if LocalPlayer.Character:FindFirstChild("Humanoid") then
				for _, v in next, LocalPlayer.Character:GetDescendants() do
					if (v:IsA("MeshPart") or v:IsA("Part")) and v.CanCollide then
						v.CanCollide = false
					end
				end
			end
		end
	end
end)
game:GetService("RunService").Stepped:connect(function()
	pcall(function()
		if getgenv().noclip then
			if LocalPlayer.Character:FindFirstChild("Humanoid") then
				CreateTweenFloat()
			end
		end

		if not getgenv().noclip then
			if LocalPlayer.Character:FindFirstChild("Humanoid") then
				if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
					if LocalPlayer.Character.HumanoidRootPart:FindFirstChild("EffectsSY") then
						LocalPlayer.Character.HumanoidRootPart.EffectsSY:Destroy()
					end
				end
			end
		end
	end)
end)

local lastSizedPlayer

sizepart = function(character)
	lastSizedPlayer = character

	if not character.HumanoidRootPart:FindFirstChild("vando") and LocalPlayer:DistanceFromCharacter(character.HumanoidRootPart.Position) <= 50 then
		for _, v in next, character:GetDescendants() do
			if (v:IsA("Part") or v:IsA("MeshPart")) and v.CanCollide then
				v.CanCollide = false
			end
		end
	end
end

local lastBroughtMob
local CFrame_

DeleteIgnoredMob = function()
	for _, child in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
		if child:IsA("Model") and child:FindFirstChild("Ignored") then
			child.Ignored:Destroy()
		end
	end
end
IsMobAlive = function(mob)
	if mob and mob.Parent and mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChildWhichIsA("Humanoid") and mob.Humanoid.Health > 0 then
		return true
	end
end
DetectMob = function(mobName)
	local huge = math.huge
	local nearestMob

	for _, child in pairs(game.Workspace.Enemies:GetChildren()) do
		if (typeof(mobName) == "table" and table.find(mobName, child.Name) or child.Name == mobName) and IsMobAlive(child) then
			local magnitude = (child.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude

			if magnitude < huge then
				huge = magnitude
				nearestMob = child
			end
		end
	end

	return nearestMob
end
CheckNameBoss = function(bossName)
	for _, v in next, game.ReplicatedStorage:GetChildren() do
		if (typeof(bossName) == "table" and table.find(bossName, v.Name) or v.Name == bossName) and IsMobAlive(v) then
			return v
		end
	end

	for _, v in next, game.Workspace.Enemies:GetChildren() do
		if (typeof(bossName) == "table" and table.find(bossName, v.Name) or v.Name == bossName) and IsMobAlive(v) then
			return v
		end
	end
end

local mobParts = {}

getcenter = function(mobName)
	local partCount = 0
	local nameWithoutLevel
	local Position

	if string.find(mobName, "Lv.") then
		nameWithoutLevel = mobName:gsub(" %pLv. %d+%p", "")
	end

	for _, v in pairs(mobParts) do
		local cleanName

		if string.find(v.Name, "Lv.") then
			cleanName = v.Name:gsub(" %pLv. %d+%p", "")
		end

		if v:IsA("Part") and (cleanName and cleanName == mobName or mobName == v.Name or nameWithoutLevel and v.Name == nameWithoutLevel) then
			if Position == nil then
				Position = v.Position
				partCount += 1
			else
				Position += v.Position
				partCount += 1
			end
		end
	end

	return CFrame.new(Position / partCount)
end
DetectPartMobBring = function(mobName, mob, nearestOnly, character)
	local matchedParts = {}
	local cleanName

	if string.find(mobName, "Lv.") then
		cleanName = mobName:gsub(" %pLv. %d+%p", "")
	end

	for _, v in pairs(mobParts) do
		local cleanName2

		if string.find(v.Name, "Lv.") then
			cleanName2 = v.Name:gsub(" %pLv. %d+%p", "")
		end

		if v:IsA("Part") then
			if (not cleanName2 or cleanName2 ~= mobName) and mobName ~= v.Name then
				if not cleanName then
					continue
				end

				if v.Name ~= cleanName then
					continue
				end
			end

			table.insert(matchedParts, v)
		end
	end

	if nearestOnly then
		local huge = math.huge
		local nearestPart

		for _, v in next, matchedParts, nil do
			local Magnitude = (mob.HumanoidRootPart.Position - v.Position).Magnitude

			if Magnitude < huge then
				huge = Magnitude
				nearestPart = v
			end
		end

		return nearestPart
	end

	local nearbyParts = {}

	for _, v in next, matchedParts, nil do
		if (character.Position - v.Position).Magnitude <= 200 then
			table.insert(nearbyParts, v)
		end
	end

	if #nearbyParts < #matchedParts then
		return true
	end
end
isnetworkowner2 = function(rootPart)
	for _, v in next, game.Workspace.Characters:GetChildren() do
		if v.Name == LocalPlayer.Name then
			continue
		end

		if not v:FindFirstChild("HumanoidRootPart") then
			continue
		end

		if (v.HumanoidRootPart.Position - rootPart.Position).Magnitude <= 300 then
			return false
		end
	end

	return true
end
BringMob = function(mob)
	if mob and lastBroughtMob ~= mob then
		lastBroughtMob = mob
		CFrame_ = DetectPartMobBring(mob.Name, mob, true).CFrame

		if game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
			if LocalPlayer.Character:FindFirstChild("RaceTransformed") and LocalPlayer.Character.RaceTransformed.Value then
				CFrame_ = getcenter(mob.Name)
			end
		end

		DeleteIgnoredMob()
	end

	if DaBringMob then
		delay(0.1, function()
			getgenv().DaBringMob = false
		end)

		return
	end

	local mobGroup = {}

	if not mob:FindFirstChild("Ignored") then
		table.insert(mobGroup, mob)
	end

	local maxGroupDistance = 200
	local maxGroupSize = 2

	if game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
		if LocalPlayer.Character:FindFirstChild("RaceTransformed") and LocalPlayer.Character.RaceTransformed.Value then
			maxGroupDistance = 300
			maxGroupSize = 6
		end
	end

	for _, child in pairs(workspace.Enemies:GetChildren()) do
		if child ~= mob and child.Name == mob.Name and not child:FindFirstChild("Ignored") and IsMobAlive(child) and isnetworkowner2(child.HumanoidRootPart) then
			if (child.HumanoidRootPart.Position - CFrame_.Position).Magnitude <= maxGroupDistance and maxGroupSize > #mobGroup then
				table.insert(mobGroup, child)
			end
		end
	end

	if CFrame_ and (LocalPlayer.Character.HumanoidRootPart.Position - mob.HumanoidRootPart.Position).Magnitude <= 50 and isnetworkowner2(LocalPlayer.Character.HumanoidRootPart) and #mobGroup >= 2 then
		for _, v in pairs(mobGroup) do
			sizepart(v)

			if isnetworkowner2(v.HumanoidRootPart) then
				v.HumanoidRootPart.CFrame = CFrame_ * CFrame.new(0, math.random(0, 2), math.random(0, 2))
				task.spawn(function()
					local Health = v.Humanoid.Health

					task.wait(2.2)

					if not (v.Humanoid.Health ~= Health or v:FindFirstChild("Ignored")) then
						v.HumanoidRootPart.CFrame = v.WorldPivot
						Instance.new("IntValue", v).Name = "Ignored"
						task.wait(0.3)
					end
				end)
			else
				v.HumanoidRootPart.CFrame = v.WorldPivot
				Instance.new("IntValue", v).Name = "Ignored"
				task.wait(0.3)
			end

			getgenv().DaBringMob = true
		end
	end
end

for _, v in pairs(getnilinstances()) do
	local displayName

	if v:GetAttribute("DisplayName") and string.find(v:GetAttribute("DisplayName"), "Lv.") then
		displayName = v:GetAttribute("DisplayName"):gsub(" %pLv. %d+%p", "")
	end

	if displayName then
		table.insert(mobParts, v)
	end
end

for _, child in pairs(game:GetService("Workspace")._WorldOrigin.EnemySpawns:GetChildren()) do
	local displayName2

	if child:GetAttribute("DisplayName") and string.find(child:GetAttribute("DisplayName"), "Lv.") then
		displayName2 = child:GetAttribute("DisplayName"):gsub(" %pLv. %d+%p", "")
	end

	if displayName2 then
		table.insert(mobParts, child)
	end
end

DetectPartSpawnMob = function(mobName, skipIgnored)
	local cleanName

	if string.find(mobName, "Lv.") then
		cleanName = mobName:gsub(" %pLv. %d+%p", "")
	end

	for _, v in pairs(mobParts) do
		local cleanName2

		if string.find(v.Name, "Lv.") then
			cleanName2 = v.Name:gsub(" %pLv. %d+%p", "")
		end

		if not v:IsA("Part") then
			continue
		end

		if (not cleanName2 or cleanName2 ~= mobName) and mobName ~= v.Name then
			if not cleanName then
				continue
			end

			if v.Name ~= cleanName then
				continue
			end
		end

		if (not skipIgnored or v:FindFirstChild("Ignored")) and skipIgnored then
			continue
		end

		if not table.find(mobParts, v) then
			table.insert(mobParts, v)
		end

		return v
	end

	for _, child in pairs(game:GetService("Workspace")._WorldOrigin.EnemySpawns:GetChildren()) do
		local cleanName3

		if string.find(child.Name, "Lv.") then
			cleanName3 = child.Name:gsub(" %pLv. %d+%p", "")
		end

		if not child:IsA("Part") or (not cleanName3 or cleanName3 ~= mobName) and mobName ~= child.Name and (not cleanName or child.Name ~= cleanName) or (not skipIgnored or child:FindFirstChild("Ignored")) and skipIgnored then
			continue
		end

		if not table.find(mobParts, child) then
			table.insert(mobParts, child)
		end

		return child
	end

	for _, v in pairs(getnilinstances()) do
		local cleanName4

		if string.find(v.Name, "Lv.") then
			cleanName4 = v.Name:gsub(" %pLv. %d+%p", "")
		end

		if not v:IsA("Part") or (not cleanName4 or cleanName4 ~= mobName) and mobName ~= v.Name and (not cleanName or v.Name ~= cleanName) or (not skipIgnored or v:FindFirstChild("Ignored")) and skipIgnored then
			continue
		end

		if not skipIgnored then
		end

		if not table.find(mobParts, v) then
			table.insert(mobParts, v)
		end

		return v
	end

	return nil
end

local function getPartsInRadius(model, center, radius)
	local partsInRadius = {}

	for _, child in pairs(model:GetChildren()) do
		if child:IsA("BasePart") and (child.Position - center).magnitude <= radius then
			partsInRadius[#partsInRadius + 1] = child
		end
	end

	return partsInRadius
end
local function getAllTargetModels(includeCharacters)
	local children = workspace:WaitForChild("Enemies"):GetChildren()
	local children2 = workspace:WaitForChild("Characters"):GetChildren()
	local targetModels = {}

	for _, child in pairs(children) do
		table.insert(targetModels, child)
	end

	if includeCharacters then
		for _, v in pairs(children2) do
			table.insert(targetModels, v)
		end
	end

	return targetModels
end

GetAllChildAttack = getAllTargetModels
getgenv().getBladeHits = function(character, hitParts, range, includeCharacters)
	game:GetService("CollectionService")

	local hits = {}
	local targetModels = GetAllChildAttack(includeCharacters)

	for _, v in pairs(hitParts) do
		for _, targetModel in pairs(targetModels) do
			if targetModel:IsDescendantOf(game.Workspace) then
				local hitRange = range

				if game.Players:GetPlayerFromCharacter(targetModel) then
					hitRange /= 1.5
				end

				if targetModel ~= character and targetModel:FindFirstChild("HumanoidRootPart") then
					local hitOffsets = { targetModel.HumanoidRootPart.Position }

					if targetModel.HumanoidRootPart.Size.Y > 5 then
						table.insert(hitOffsets, (targetModel.HumanoidRootPart.CFrame * CFrame.new(0, -targetModel.HumanoidRootPart.Size.Y * 1.5 + 3, 0)).p)
					end

					local inRange = false

					for _, offsetPos in pairs(hitOffsets) do
						if (offsetPos - v.Position).magnitude < 10 + hitRange + targetModel.HumanoidRootPart.Size.X / 2 then
							inRange = true

							break
						end
					end

					if inRange then
						local nearbyBodyParts = getPartsInRadius(targetModel, v.Position, hitRange + targetModel.HumanoidRootPart.Size.X / 2)

						for _, offsetPos in pairs(nearbyBodyParts) do
							hits[#hits + 1] = offsetPos
						end
					end
				end
			end
		end
	end

	return hits
end

local RERegisterAttack = game:GetService("ReplicatedStorage").Modules.Net:WaitForChild("RE/RegisterAttack")
local RegisterHit = require(game.ReplicatedStorage.Modules.Net):RemoteEvent("RegisterHit", true)
local hitPartNames = {}

for _, v in {
	"RightUpperArm",
	"RightLowerArm",
	"RightHand",
	"RightUpperLeg",
	"RightLowerLeg",
	"RightFoot",
	"LeftUpperArm",
	"LeftLowerArm",
	"LeftHand",
	"LeftUpperLeg",
	"LeftLowerLeg",
	"LeftFoot",
	"UpperTorso",
	"LowerTorso",
	"Head"
}, nil, nil do
	hitPartNames[v] = true
end

local CombatUtil = require(game:GetService("ReplicatedStorage").Modules.CombatUtil)

AttackAOE = function(range, includeCharacters)
	local hitPairs = {}
	local hitRigs = {}
	local lastRig
	local lastPart
	local getBladeHits = getgenv().getBladeHits
	local Character = LocalPlayer.Character
	local hitParts = { LocalPlayer.Character.HumanoidRootPart }
	local attackRange = range or 80

	for _, v in getBladeHits(Character, hitParts, attackRange, includeCharacters) do
		local rigOfHitPart = CombatUtil:GetRigOfHitPart(v)

		if rigOfHitPart then
			if hitPartNames[v.Name] then
				local Summoner = rigOfHitPart:FindFirstChild("Summoner")
				local Summoner2 = LocalPlayer.Character:FindFirstChild("Summoner")

				if not Summoner2 or rigOfHitPart ~= Summoner2.Value.Character then
					if game.Players:GetPlayerFromCharacter(LocalPlayer.Character) and Summoner then
						if Summoner.Value == game.Players:GetPlayerFromCharacter(LocalPlayer.Character) then
							continue
						end
					end

					if (not whitelistOnly or not rigOfHitPart:IsDescendantOf(workspace.Enemies) or Summoner2 or Summoner) and CombatUtil:IsVulnerable(rigOfHitPart) then
						lastRig = rigOfHitPart
						lastPart = v
						table.insert(hitPairs, {
							rigOfHitPart,
							v
						})
						table.insert(hitRigs, rigOfHitPart)
					end
				end
			end
		else
			warn("No rig found for hit part:", v)
		end
	end

	local allHitPairs = {}

	for _, v in pairs(hitPairs) do
		table.insert(allHitPairs, v)
	end

	table.insert(allHitPairs, {
		lastRig,
		lastPart
	})

	if #allHitPairs > 0 then
		return allHitPairs
	end
end
AttackFunction = function(range)
	if game.Players.LocalPlayer.Character.Stun.Value == 0 then
		local bladehit = AttackAOE(range)

		if bladehit then
			RERegisterAttack:FireServer(0)
			RegisterHit:FireServer(table.remove(bladehit, 1)[2], bladehit)
			table.clear(bladehit)
		end
	end
end
getgenv().ClickM1 = function(target, wideRange)
	if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and (LocalPlayer.Character.HumanoidRootPart.Position - target.HumanoidRootPart.Position).Magnitude < 70 and target.Humanoid.Health > 0 then
		if wideRange then
			AttackFunction(80)
		else
			AttackFunction(30)
		end
	end
end
NameWeapon = function(tooltip, returnTool)
	for _, v in next, LocalPlayer.Backpack:GetChildren() do
		if not v:IsA("Tool") or v.ToolTip ~= tooltip then
			continue
		end

		if returnTool then
			return v
		end

		return v.Name
	end

	for _, v in next, LocalPlayer.Character:GetChildren() do
		if not v:IsA("Tool") then
			continue
		end

		if v.ToolTip ~= tooltip then
			continue
		end

		if returnTool then
			return v
		end

		return v.Name
	end
end
equiptool = function(toolName)
	if toolName and LocalPlayer:FindFirstChild("Backpack") then
		if LocalPlayer.Backpack:FindFirstChild(toolName) and not LocalPlayer.Character.Humanoid.Sit then
			LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack:FindFirstChild(toolName))
		end
	end
end
UsedualFlock = function()
	equiptool(NameWeapon("Melee"))
end
checkplatebarito = function()
	local plateName

	if game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate1.BrickColor == BrickColor.new("Sand yellow") then
		plateName = "Plate1"
	elseif game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate2.BrickColor == BrickColor.new("Sand yellow") then
		plateName = "Plate2"
	elseif game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate3.BrickColor == BrickColor.new("Sand yellow") then
		plateName = "Plate3"
	elseif game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate4.BrickColor == BrickColor.new("Sand yellow") then
		plateName = "Plate4"
	elseif game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate5.BrickColor == BrickColor.new("Sand yellow") then
		plateName = "Plate5"
	elseif game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate6.BrickColor == BrickColor.new("Sand yellow") then
		plateName = "Plate6"
	elseif game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate7.BrickColor == BrickColor.new("Sand yellow") then
		plateName = "Plate7"
	elseif game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate8.BrickColor == BrickColor.new("Sand yellow") then
		plateName = "Plate8"
	end

	return plateName
end

local usedSpawnParts = {}

DetectNameTablePart = function(names)
	for _, v in next, names, nil do
		if table.find(usedSpawnParts, v) then
			continue
		end

		return v
	end
end
AutoQuestBarito = function()
	if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then
		if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
			local swanMob = DetectMob("Swan Pirate")

			if swanMob then
				repeat
					task.wait()
					sizepart(swanMob)
					BringMob(swanMob)
					UsedualFlock()
					ClickM1(swanMob)
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, swanMob.HumanoidRootPart.Position, swanMob.HumanoidRootPart.CFrame * CFrame.new(7, 20, 0))
				until not IsMobAlive(swanMob)
			elseif typeof("Swan Pirate") == "table" then
				if #usedSpawnParts >= 11 then
					usedSpawnParts = {}

					return
				end

				local swanSpawnPart = DetectPartSpawnMob(DetectNameTablePart("Swan Pirate"))

				if swanSpawnPart then
					table.insert(usedSpawnParts, DetectNameTablePart("Swan Pirate"))

					while true do
						wait()
						toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, swanSpawnPart.Position, swanSpawnPart.CFrame * CFrame.new(0, 60, 0))

						if (swanSpawnPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
							break
						elseif DetectMob("Swan Pirate") then
							break
						end
					end

					wait(1)
				end
			else
				local swanSpawnPartIgnored = DetectPartSpawnMob("Swan Pirate", true)

				if swanSpawnPartIgnored then
					Instance.new("IntValue", swanSpawnPartIgnored).Name = "Ignored"

					while true do
						wait()
						toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, swanSpawnPartIgnored.Position, swanSpawnPartIgnored.CFrame * CFrame.new(0, 60, 0))

						if (swanSpawnPartIgnored.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
							break
						elseif DetectMob("Swan Pirate") then
							break
						end
					end

					wait(1)
				else
					DeleteIgnoredMobSpawn()
				end
			end
		elseif (LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-456.28952, 73.0200958, 299.895966).Position).Magnitude > 8 then
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, CFrame.new(-456.28952, 73.0200958, 299.895966).Position, CFrame.new(-456.28952, 73.0200958, 299.895966))
		else
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
				"StartQuest",
				"BartiloQuest",
				1
			}))
		end
	elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then
		local Jeremy = CheckNameBoss("Jeremy")

		if Jeremy then
			repeat
				task.wait()
				sizepart(Jeremy)
				UsedualFlock()
				ClickM1(Jeremy)
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, Jeremy.HumanoidRootPart.Position, Jeremy.HumanoidRootPart.CFrame * CFrame.new(7, 20, 0))
			until not IsMobAlive(Jeremy)
		end
	elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
		repeat
			task.wait()

			if (LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1835.65, 10.4325, 1679.75)).Magnitude > 100 then
				toTarget(LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(-1835.65, 10.4325, 1679.75), CFrame.new(-1835.65, 10.4325, 1679.75))
			else
				LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa.BartiloPlates[checkplatebarito()].CFrame
				task.wait()
				firetouchinterest(game:GetService("Workspace").Map.Dressrosa.BartiloPlates[checkplatebarito()], game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
				firetouchinterest(game:GetService("Workspace").Map.Dressrosa.BartiloPlates[checkplatebarito()], game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
			end
		until game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 3
	end
end
getgenv().Chests = {}
getgenv().BlBossHuman = {}
loadstring([[    getgenv().GetChests = function()
        local Dist = math.huge
        local Chest
        local Counter
        for _, v in next, game:GetService("CollectionService"):GetTagged("_ChestTagged") do
            if #getgenv().Chests < 10 then
                local Mag = game.Players.LocalPlayer:DistanceFromCharacter(v.Position)
                if Mag < Dist then
                    Counter = i
                    Dist = Mag
                    Chest = v
                    table.insert(getgenv().Chests, Chest)
                end
            end
        end
    end
]])()
PathFindChest = function()
	for _, v in next, game:GetService("Workspace")._WorldOrigin.PlayerSpawns.Pirates:GetChildren() do
		if v:IsA("Model") and v:FindFirstChild("Part") and not v:FindFirstChild("Ignored") then
			return v
		end
	end
end
TweenFindChest = function()
	local pirateSpawn = PathFindChest()

	if pirateSpawn then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, pirateSpawn.Part.Position, pirateSpawn.Part.CFrame)

		if (pirateSpawn.Part.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 or GetNearestChest() then
			Instance.new("IntValue", pirateSpawn).Name = "Ignored"
		end
	else
		for _, child in pairs(game:GetService("Workspace")._WorldOrigin.PlayerSpawns.Pirates:GetChildren()) do
			if child:FindFirstChild("Ignored") then
				child:FindFirstChild("Ignored"):Destroy()
			end
		end
	end
end
GetNearestChest = function()
	local huge = math.huge
	local nearestChest
	for _, v in next, game:GetService("CollectionService"):GetTagged("_ChestTagged") do
		if not (v:GetAttribute("IsDisabled") or v:FindFirstChild("Ignored")) then
			local distance = LocalPlayer:DistanceFromCharacter(v.Position)

			if distance < huge then
				huge = distance
				nearestChest = v
			end
		end
	end

	return nearestChest
end
AutoMinkV2 = function()
	local chest = GetNearestChest()

	if chest then
		local now

		repeat
			task.wait()

			if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - chest.Position).Magnitude <= 5 then
				if now then
					if tick() - now >= 5 then
						Instance.new("IntValue", chest).Name = "Ignored"
						wait(0.5)
					end
				else
					now = tick()
				end

				getgenv().noclip = false
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, game)
				wait()
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, game)
				firetouchinterest(chest, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
				firetouchinterest(chest, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
			else
				toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, chest.Position, chest.CFrame * CFrame.new(0, 1, 0), true)
			end
		until not chest.Parent or not settings["Auto Upgrade Race V2-V3"] or chest:GetAttribute("IsDisabled") or chest:FindFirstChild("Ignored")

		wait(1)
	else
		local pirateSpawn2 = PathFindChest()

		if pirateSpawn2 then
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, pirateSpawn2.Part.Position, pirateSpawn2.Part.CFrame)

			if (pirateSpawn2.Part.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 or GetNearestChest() then
				Instance.new("IntValue", pirateSpawn2).Name = "Ignored"
			end
		else
			for _, child in pairs(game:GetService("Workspace")._WorldOrigin.PlayerSpawns.Pirates:GetChildren()) do
				if child:FindFirstChild("Ignored") then
					child:FindFirstChild("Ignored"):Destroy()
				end
			end
		end
	end
end
Remote = function(action, arg, flag)
	if action or not flag then
		game.ReplicatedStorage.Remotes.CommF_:InvokeServer(action, arg, flag)
	else
		game.ReplicatedStorage.Remotes.CommF_:InvokeServer(arg, true)
	end
end
getgenv().tablefruitausea3 = {}

local expensiveFruitWeapons = {}
local allFruitNames = {}
for _, v in next, game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits", false) do
	if v.Price >= 1000000 then
		table.insert(expensiveFruitWeapons, string.split(v.Name, "-")[1] .. " Fruit")
		getgenv().tablefruitausea3[v.Name] = v.Price
	end

	table.insert(allFruitNames, v.Name)
end

getgenv().tablefruitausea3["Dragon (East)-Dragon (East)"] = 15000000
getgenv().tablefruitausea3["Dragon (West)-Dragon (West)"] = 15000000
getbackpack = function()
	local mybackpack = {}

	for _, v in next, game.Players.LocalPlayer.Backpack:GetChildren() do
		if v:IsA("Tool") and table.find(expensiveFruitWeapons, v.Name) then
			table.insert(mybackpack, v.Name)
		end
	end

	for _, v in next, game.Players.LocalPlayer.Character:GetChildren() do
		if v:IsA("Tool") and table.find(expensiveFruitWeapons, v.Name) then
			table.insert(mybackpack, v.Name)
		end
	end

	return mybackpack
end
CheckFruitplr = function()
	local Name

	for _, child in pairs(LocalPlayer.Backpack:GetChildren()) do
		if string.find(child.Name, "Fruit") then
			Name = child.Name
		end
	end

	for _, child in pairs(LocalPlayer.Character:GetChildren()) do
		if string.find(child.Name, "Fruit") then
			Name = child.Name
		end
	end

	return Name
end
TakeFruitInventory = function(onlyMissing)
	local huge = math.huge
	local cheapestFruitName
	for _, v in next, game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory") do
		if v.Type == "Blox Fruit" then
			if onlyMissing then
				if getgenv().tablefruitausea3[v.Name] then
					continue
				end

				return v.Name
			end

			for fruitName, fruitPrice in pairs(getgenv().tablefruitausea3) do
				if v.Name == fruitName and tonumber(fruitPrice) < tonumber(huge) then
					huge = fruitPrice
					cheapestFruitName = fruitName
				end
			end
		end
	end

	return cheapestFruitName
end
CheckCDSkillTransformation2 = function(weaponName, skillMask)
	for _, v in next, game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[weaponName]:GetChildren() do
		if not v:IsA("Frame") then
			continue
		end

		if v.Name ~= "Template" and not string.find(v.Title.Text, "Transformation") and skillMask[v.Name] and v.Title.TextColor3 == Color3.new(1, 1, 1) and v.Cooldown.Size == UDim2.new(0, 0, 1, -1) or v.Cooldown.Size == UDim2.new(1, 0, 1, -1) then
			return v
		end
	end
end
CheckCDSkillTransformation = function(weaponName, skillMask)
	for _, v in next, game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[weaponName]:GetChildren() do
		if v:IsA("Frame") and (v.Name ~= "Template" and not string.find(v.Title.Text, "Transformation") and skillMask[v.Name] and v.Title.TextColor3 == Color3.new(1, 1, 1) and v.Cooldown.Size == UDim2.new(0, 0, 1, -1) or v.Cooldown.Size == UDim2.new(1, 0, 1, -1)) then
			return v
		end
	end
end
AutoAllSkill = function()
	local skillKeys = {
		Z = true,
		X = true,
		C = true,
		V = true,
		F = true
	}
	local Melee = NameWeapon("Melee")
	local Sword = NameWeapon("Sword")
	local fruitWeapon = NameWeapon("Blox Fruit")
	local Gun = NameWeapon("Gun")
	local Skills = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills

	if Melee and not Skills:FindFirstChild(Melee) or Sword and not Skills:FindFirstChild(Sword) or fruitWeapon and not Skills:FindFirstChild(fruitWeapon) or Gun and not Skills:FindFirstChild(Gun) then
		if Melee then
			equiptool(Melee)
		end

		wait(0.2)

		if Sword then
			equiptool(Sword)
		end

		wait(0.2)

		if fruitWeapon then
			equiptool(fruitWeapon)
		end

		wait(0.2)

		if Gun then
			equiptool(Gun)
		end

		return
	end

	local readySkill = Melee and CheckCDSkillTransformation(Melee, skillKeys) or Sword and CheckCDSkillTransformation(Sword, skillKeys)

	readySkill = readySkill or fruitWeapon and CheckCDSkillTransformation(fruitWeapon, skillKeys) or Gun and CheckCDSkillTransformation(Gun, skillKeys)

	if readySkill then
		equiptool(readySkill.Parent.Name)
		game:GetService("VirtualInputManager"):SendKeyEvent(true, readySkill.Name, false, game)
		task.wait(0.5)
		game:GetService("VirtualInputManager"):SendKeyEvent(false, readySkill.Name, false, game)
	end
end
DetectSeabeast = function()
	for _, v in next, game:GetService("Workspace").SeaBeasts:GetChildren() do
		if v.Name == "SeaBeast1" then
			local hpTextNoMax = v.HealthBBG.Frame.TextLabel.Text:gsub("/%d+,%d+", "")
			local Text = v.HealthBBG.Frame.TextLabel.Text
			local hpTextNoCurrent

			if string.find(hpTextNoMax, ",") then
				hpTextNoCurrent = Text:gsub("%d+,%d+/", "")
			else
				hpTextNoCurrent = Text:gsub("%d+/", "")
			end

			local hpText = hpTextNoCurrent:gsub(",", "")

			if tonumber(hpText) >= 90000 then
				return v
			end
		end
	end

	return false
end
TeleportSeaEvents = function(seaEvent)
	if seaEvent:FindFirstChild("Engine") then
		toTarget(LocalPlayer.Character.HumanoidRootPart.Position, seaEvent.Engine.Position, seaEvent.Engine.CFrame * CFrame.new(0, -30, 0))

		return
	end

	if seaEvent.Name == "SeaBeast1" then
		if (Vector3.new(0, seaEvent:FindFirstChild("HumanoidRootPart").Position.Y, 0) - Vector3.new(0, game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y, 0)).Magnitude <= 175 then
			toTarget(LocalPlayer.Character.HumanoidRootPart.Position, seaEvent.HumanoidRootPart.Position, seaEvent.HumanoidRootPart.CFrame * CFrame.new(0, 200, 50))
		else
			toTarget(LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(seaEvent.HumanoidRootPart.Position.X, game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y, seaEvent.HumanoidRootPart.Position.Z), CFrame.new(seaEvent.HumanoidRootPart.Position.X, game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y + 200, seaEvent.HumanoidRootPart.Position.Z))
		end
	else
		local heightOffset = 20

		if seaEvent.Name == "Terrorshark" then
			heightOffset = 60
		end

		toTarget(LocalPlayer.Character.HumanoidRootPart.Position, seaEvent.HumanoidRootPart.Position, seaEvent.HumanoidRootPart.CFrame * CFrame.new(0, heightOffset, 0))
	end
end
AutoFishV2 = function()
	local seaBeast = DetectSeabeast()
	local boat = checkboat()

	if seaBeast then
		repeat
			task.wait()
			TeleportSeaEvents(seaBeast)

			local beastRootPart = seaBeast:FindFirstChild("HumanoidRootPart")

			getgenv().AimPos = CFrame.new(beastRootPart.Position.X, 40, beastRootPart.Position.Z)

			if LocalPlayer:DistanceFromCharacter(beastRootPart.Position) < 400 then
				AutoAllSkill()
			end
		until not seaBeast.Parent or seaBeast.Health.Value <= 0 or not settings["Auto Upgrade Race V2-V3"]
	elseif boat then
		local cFrame = CFrame.new(753.06536865234375, boat.WorldPivot.Y, 6994.5146484375)

		if (boat.VehicleSeat.Position - cFrame.Position).Magnitude > 50 then
			boat.VehicleSeat.CFrame = cFrame
		elseif not LocalPlayer.Character.Humanoid.Sit then
			toTarget(LocalPlayer.Character.HumanoidRootPart.Position, boat.VehicleSeat.Position, boat.VehicleSeat.CFrame)
		end
	else
		local cFrame = CFrame.new(-11.948337554931641, 10.293913841247559, 2957.010498046875)

		if (cFrame.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 8 then
			toTarget(LocalPlayer.Character.HumanoidRootPart.Position, cFrame.Position, cFrame)
		else
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat", "PirateBrigade")
		end
	end
end

local triedSkypieaPlayers = {}
local triedGhoulPlayers = {}

DetectPlayerAngel = function()
	local Players = game:GetService("Players")

	for _, child in pairs(Players:GetChildren()) do
		if child.Name == LocalPlayer.Name then
			continue
		end

		if not game:GetService("Workspace").Characters:FindFirstChild(child.Name) or child.Data.Race.Value ~= "Skypiea" or table.find(triedSkypieaPlayers, child.Name) then
			continue
		end

		if child.Character:FindFirstChild("Humanoid") and child.Character.Humanoid.Health > 0 then
			return child
		end
	end
end
DetectPlayerGhoul = function()
	local Players = game:GetService("Players")

	for _, child in pairs(Players:GetChildren()) do
		if child.Name == LocalPlayer.Name then
			continue
		end

		if not game:GetService("Workspace").Characters:FindFirstChild(child.Name) or table.find(triedGhoulPlayers, child.Name) then
			continue
		end

		if child.Character:FindFirstChild("Humanoid") and child.Character.Humanoid.Health > 0 then
			return child
		end
	end
end
CheckSafezone = function(character)
	for _, child in pairs(game:GetService("Workspace")._WorldOrigin.SafeZones:GetChildren()) do
		if not child:IsA("Part") then
			continue
		end

		if not ((child.Position - character.HumanoidRootPart.Position).magnitude <= 400) then
			continue
		end

		if character.Humanoid.Health / character.Humanoid.MaxHealth >= 0.9 then
			return true
		end
	end

	return false
end
CheckPlayercantAttack = function(player)
	for _, descendant in pairs(game.Players.LocalPlayer.PlayerGui.Notifications:GetDescendants()) do
		if not descendant:IsA("TextLabel") or not string.find(descendant.Text, "attack") or descendant:FindFirstChild(player.Name) then
			continue
		end

		local TextBox = Instance.new("TextBox")

		TextBox.Parent = descendant.Parent
		TextBox.Name = player.Name
		descendant:Destroy()

		return true
	end
end
CheckAcientOneStatus = function()
	if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
		return "You have yet to achieve greatness"
	end

	local response3, upgradeValue, fragmentCount = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")

	if response3 == 1 then
		return "Required Train More"
	end

	if response3 == 2 or response3 == 4 or response3 == 7 then
		return "Can Buy Gear With " .. fragmentCount .. " Fragments"
	end

	if response3 == 3 then
		return "Required Train More"
	end

	if response3 == 5 then
		return "You Are Done Your Race."
	end

	if response3 == 6 then
		return "Upgrades completed: " .. upgradeValue - 2 .. "/3, Need Trains More"
	end

	if response3 == 8 then
		return "Remaining " .. 10 - upgradeValue .. " training sessions."
	end

	if response3 == 0 then
		return "Ready For Trial"
	end

	return "You have yet to achieve greatness"
end
CheckGoTrain = function()
	local ancientStatus = CheckAcientOneStatus()

	if string.find(ancientStatus, "Upgrades completed") or ancientStatus == "Required Train More" or string.find(ancientStatus, "training sessions.") or string.find(ancientStatus, "Can Buy Gear") then
		return true
	end
end

local raceTrainMobs = {
	{
		"Baking Staff",
		"Head Baker",
		"Cake Guard",
		"Cookie Crafter"
	},
	{
		"Peanut Scout",
		"Peanut President",
		"Ice Cream Chef",
		"Ice Cream Commander"
	},
	{
		"Reborn Skeleton",
		"Demonic Soul",
		"Living Zombie",
		"Posessed Mummy"
	},
	{
		"Cocoa Warrior",
		"Chocolate Bar Battler",
		"Candy Rebel",
		"Sweet Thief"
	},
	{
		"Isle Champion",
		"Serpent Hunter",
		"Skull Slayer",
		"Sun-kissed Warrior"
	},
	{
		"Fishman Raider",
		"Fishman Captain"
	},
	{
		"Forest Pirate",
		"Mythological Pirate"
	},
	{
		"Jungle Pirate",
		"Musketeer Pirate"
	},
	{
		"Dragon Crew Warrior",
		"Dragon Crew Archer",
		"Hydra Enforcer",
		"Venomous Assailant"
	},
	{
		"Pirate Millionaire",
		"Pistol Billionaire"
	}
}

BuyGearV4 = function()
	if string.find(CheckAcientOneStatus(), "Can Buy Gear") then
		game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Buy")
	end
end
VerifyNearbyTrial = function()
	local trialNames = {
		"Trial of the Machine",
		"Trial of Speed",
		"Trial of Strength",
		"Trial of Water",
		"Trial of the King",
		"Trial of Carnage"
	}
	for _, v in next, workspace._WorldOrigin.Locations:GetChildren() do
		if table.find(trialNames, v.Name) and LocalPlayer:DistanceFromCharacter(v.Position) < 1500 then
			return true
		end
	end
end
TeleportSeabeast2 = function(seaBeast)
	if (Vector3.new(0, seaBeast:FindFirstChild("HumanoidRootPart").Position.Y, 0) - Vector3.new(0, -60, 0)).Magnitude <= 175 then
		toTarget(LocalPlayer.Character.HumanoidRootPart.Position, seaBeast.HumanoidRootPart.Position, seaBeast.HumanoidRootPart.CFrame * CFrame.new(0, 200, 50))
	else
		toTarget(LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(seaBeast.HumanoidRootPart.Position.X, -60, seaBeast.HumanoidRootPart.Position.Z), CFrame.new(seaBeast.HumanoidRootPart.Position.X, 140, seaBeast.HumanoidRootPart.Position.Z))
	end
end
TrialHuman = function()
	if game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Trial of Strength") then
		local strengthPart = game:GetService("Workspace")._WorldOrigin.Locations["Trial of Strength"]

		if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - strengthPart.Position).Magnitude <= 1000 then
			for _, child in pairs(game.Workspace.Enemies:GetChildren()) do
				if not ((child.HumanoidRootPart.Position - strengthPart.Position).Magnitude <= 1000) then
					continue
				end

				if IsMobAlive(child) then
					return child
				end
			end
		end
	end
end
TrialGhoul = function()
	if game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Trial of Carnage") then
		if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace")._WorldOrigin.Locations["Trial of Carnage"].Position).Magnitude <= 1000 then
			for _, child in pairs(game.Workspace.Enemies:GetChildren()) do
				if (child.HumanoidRootPart.Position - game:GetService("Workspace")._WorldOrigin.Locations["Trial of Carnage"].Position).Magnitude <= 1000 and IsMobAlive(child) then
					return child
				end
			end
		end
	end
end
GetSeaBeastTrial = function()
	if not game.Workspace.Map:FindFirstChild("FishmanTrial") then
		return
	end

	local waterTrial

	if game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Trial of Water") then
		waterTrial = game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Trial of Water")
	end

	if waterTrial then
		for _, v in next, game:GetService("Workspace").SeaBeasts:GetChildren() do
			if not string.find(v.Name, "SeaBeast") then
				continue
			end

			if not v:FindFirstChild("HumanoidRootPart") then
				continue
			end

			if not ((v.HumanoidRootPart.Position - waterTrial.Position).Magnitude <= 1500) then
				continue
			end

			if v.Health.Value > 0 then
				return v
			end
		end
	end
end
DetectGearUp = function()
	local Buttons = require(game:GetService("Players").LocalPlayer.PlayerGui.TempleGui.LocalScriptTemple.Buttons)

	Buttons.Gear1.GearType = "Default"
	Buttons.Gear4.GearType = "Default"
	Buttons.Gear5.GearType = "Default"
	Buttons.Gear2.GearType = "Alpha"
	Buttons.Gear2.CanSelect = false
	Buttons.Gear3.CanSelect = false
	local templeData = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("TempleClock", "Check")
	local hasUnspentPoint = templeData.HadPoint == true
	local raceLevelUp = templeData.RaceLevel >= 2
	Buttons.Gear2.GearType = templeData.RaceDetails.Gears[1] == "A" and "Alpha" or templeData.RaceDetails.Gears[1] == "B" and "Omega" or "Blank"
	Buttons.Gear3.GearType = templeData.RaceDetails.Gears[2] == "A" and "Alpha" or templeData.RaceDetails.Gears[2] == "B" and "Omega" or "Blank"
	Buttons.Gear4.GearType = templeData.RaceDetails.Gears[3] == "A" and "Alpha" or templeData.RaceDetails.Gears[3] == "B" and "Omega" or "Blank"

	local Gear2 = Buttons.Gear2
	local unlocked = false

	if templeData.RaceDetails.A + templeData.RaceDetails.B >= 0 then
		unlocked = raceLevelUp
	end

	Gear2.Unlocked = unlocked

	local Gear3 = Buttons.Gear3
	local unlocked2 = false

	if templeData.RaceDetails.A + templeData.RaceDetails.B >= 1 then
		unlocked2 = raceLevelUp
	end

	Gear3.Unlocked = unlocked2

	local Gear4 = Buttons.Gear4
	local unlocked3 = false

	if templeData.RaceDetails.A + templeData.RaceDetails.B >= 2 then
		unlocked3 = raceLevelUp
	end

	Gear4.Unlocked = unlocked3
	Buttons.Gear5.CanSelect = false
	Buttons.Gear5.Unlocked = false

	if templeData.RaceDetails.C >= 1 then
		Buttons.Gear5.Unlocked = true
	end

	Buttons.Gear1.Unlocked = true

	if raceLevelUp then
		Buttons.Gear1.CanSelect = false
		Buttons.Gear1.GearType = "Default"
	else
		Buttons.Gear1.CanSelect = true
		Buttons.Gear1.GearType = "Blank"
		hasUnspentPoint = true
	end

	if hasUnspentPoint then
		local Gear22 = Buttons.Gear2
		local canSelect = false

		if templeData.RaceDetails.A + templeData.RaceDetails.B == 0 then
			canSelect = raceLevelUp
		end

		Gear22.CanSelect = canSelect

		local Gear32 = Buttons.Gear3
		local canSelect2 = false

		if templeData.RaceDetails.A + templeData.RaceDetails.B == 1 then
			canSelect2 = raceLevelUp
		end

		Gear32.CanSelect = canSelect2

		local Gear42 = Buttons.Gear4
		local canSelect3 = false

		if templeData.RaceDetails.A + templeData.RaceDetails.B >= 2 then
			canSelect3 = raceLevelUp
		end

		Gear42.CanSelect = canSelect3

		if templeData.RaceDetails.A + templeData.RaceDetails.B >= 3 then
			Buttons.Gear2.CanSelect = true
			Buttons.Gear3.CanSelect = true
			Buttons.Gear4.CanSelect = true

			if Buttons.Gear2.GearType == "Alpha" and Buttons.Gear3.GearType == "Alpha" and Buttons.Gear4.GearType == "Omega" then
				Buttons.Gear4.CanSelect = false
			elseif Buttons.Gear2.GearType == "Omega" and Buttons.Gear3.GearType == "Omega" and Buttons.Gear4.GearType == "Alpha" then
				Buttons.Gear4.CanSelect = false
			elseif Buttons.Gear2.GearType == "Alpha" and Buttons.Gear3.GearType == "Omega" and Buttons.Gear4.GearType == "Omega" then
				Buttons.Gear4.CanSelect = false
				Buttons.Gear2.CanSelect = false
			elseif Buttons.Gear2.GearType == "Omega" and Buttons.Gear3.GearType == "Alpha" and Buttons.Gear4.GearType == "Omega" then
				Buttons.Gear4.CanSelect = false
				Buttons.Gear3.CanSelect = false
			elseif Buttons.Gear2.GearType == "Omega" and Buttons.Gear3.GearType == "Alpha" and Buttons.Gear4.GearType == "Alpha" then
				Buttons.Gear4.CanSelect = false
				Buttons.Gear2.CanSelect = false
			elseif Buttons.Gear2.GearType == "Alpha" and Buttons.Gear3.GearType == "Omega" and Buttons.Gear4.GearType == "Alpha" then
				Buttons.Gear4.CanSelect = false
				Buttons.Gear3.CanSelect = false
			end
		end
	else
		Buttons.Gear2.CanSelect = false
		Buttons.Gear3.CanSelect = false
		Buttons.Gear4.CanSelect = false
	end

	for k, v in next, Buttons, nil do
		if v.CanSelect then
			return k
		end
	end
end
ChooseGearV4 = function()
	local response3 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("TempleClock", "Check")

	if response3 and response3.HadPoint and DetectGearUp() then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock", "SpendPoint", DetectGearUp(), "Omega")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TempleClock", "SpendPoint", DetectGearUp(), "Alpha")
	end
end
CheckMultiAccount = function()
	local accountHelpRaces = {}
	local Players = game:GetService("Players")

	for _, child in pairs(Players:GetChildren()) do
		if table.find(getgenv().AcountHelp, child.Name) then
			accountHelpRaces[child.Name] = child.Data.Race.Value
		end
	end

	return accountHelpRaces
end
CheckMultiTeleDoor = function()
	local playersAtDoor = 0
	for _, v in next, game.Workspace.Characters:GetChildren() do
		local raceName = CheckMultiAccount()[v.Name]

		if raceName then
			if (v.HumanoidRootPart.Position - game:GetService("Workspace").Map["Temple of Time"][raceName .. "Corridor"].Door.Door.RightDoor.Union.Position).Magnitude < 100 then
				playersAtDoor += 1
			end
		end
	end

	if playersAtDoor >= 2 then
		return true
	end
end

local MobileUIController = require(game:GetService("ReplicatedStorage").Controllers.UI.MobileUIController)
local abilityNames = {
	"Last Resort",
	"Agility",
	"Water Body",
	"Heavenly Blood",
	"Energy Core",
	"Heightened Senses"
}

DetectNameAbility = function(rootPart)
	for _, v in next, rootPart:GetChildren() do
		if table.find(abilityNames, v.Name) then
			return true
		end
	end
end
DetectMain = function(wantResult)
	local mainName
	local highestId = -math.huge

	for k, v in pairs(getgenv().AccountMain) do
		if highestId < v then
			mainName = k
			highestId = v
		end
	end

	if wantResult and mainName then
		return true, mainName
	end

	if mainName == game.Players.LocalPlayer.Name then
		return true, mainName
	end

	return false
end
GetOtherPlayerRaces = function(playerName)
	local playerRaces = {}
	local Players = game:GetService("Players")

	for _, child in pairs(Players:GetChildren()) do
		if child.Name == playerName then
			playerRaces[child.Name] = child.Data.Race.Value
		end
	end

	return playerRaces
end
CheckMultiPlayerNearDoor = function()
	local mainAtDoor = 0
	local isMain, mainName2 = DetectMain(true)

	if isMain then
		for _, v in next, game.Workspace.Characters:GetChildren() do
			if v.Name == mainName2 then
				local raceName2 = GetOtherPlayerRaces(v.Name)[v.Name]

				if raceName2 and DetectNameAbility(v.HumanoidRootPart) then
					if (v.HumanoidRootPart.Position - game:GetService("Workspace").Map["Temple of Time"][raceName2 .. "Corridor"].Door.Door.RightDoor.Union.Position).Magnitude < 100 then
						mainAtDoor += 1
					end
				end
			end
		end
	end

	if mainAtDoor >= 1 then
		return true
	end
end
--// dsc thienhuynhngoc

local usedParts = {}

getfm = function()
	if game:GetService("Lighting"):GetAttribute("MoonPhase") == 5 and (math.floor(game.Lighting.ClockTime) >= 12 or math.floor(game.Lighting.ClockTime) < 5) then
		return " | Full Moon"
	end

	if game:GetService("Lighting"):GetAttribute("MoonPhase") == 4 then
		return " | Next Night"
	end

	return " | Bad Moon"
end

local farmTrainSlot

spawn(function()
	while task.wait() do
		local _, result = pcall(function()
			if not settings["Start Kaitun"] then
				return
			end

			local raceVersion = CheckRace()

			if raceVersion == " V1" then
				if game.Workspace:GetAttribute("MAP") ~= "Sea2" then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({ "TravelDressrosa" }))

					return
				end

				if LocalPlayer.Data.Beli.Value < 500000 then
					Fluent:Notify({
						Title = "Banana Cat Hub",
						Content = "Beli >= 500k",
						SubContent = "...",
						Duration = 5
					})
					wait(5)

					return
				end

				if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1") == 0 then
					game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "2")
				elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1") == 1 then
					if not DetectItemPlr("Flower 1") then
						toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, game:GetService("Workspace").Flower1.Position, game:GetService("Workspace").Flower1.CFrame)
					elseif DetectItemPlr("Flower 2") then
						if not DetectItemPlr("Flower 3") then
							local swanMob = DetectMob("Swan Pirate")

							if swanMob then
								repeat
									task.wait()
									sizepart(swanMob)
									BringMob(swanMob)
									UsedualFlock()
									ClickM1(swanMob)
									toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, swanMob.HumanoidRootPart.Position, swanMob.HumanoidRootPart.CFrame * CFrame.new(7, 20, 0))
								until not IsMobAlive(swanMob)
							elseif typeof("Swan Pirate") == "table" then
								if #usedParts >= 11 then
									usedParts = {}

									return
								end

								local swanSpawnPart = DetectPartSpawnMob(DetectNameTablePart("Swan Pirate"))

								if swanSpawnPart then
									table.insert(usedParts, DetectNameTablePart("Swan Pirate"))

									while true do
										wait()
										toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, swanSpawnPart.Position, swanSpawnPart.CFrame * CFrame.new(0, 60, 0))

										if (swanSpawnPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
											break
										elseif DetectMob("Swan Pirate") then
											break
										end
									end

									wait(1)
								end
							else
								local swanSpawnPartIgnored = DetectPartSpawnMob("Swan Pirate", true)

								if swanSpawnPartIgnored then
									Instance.new("IntValue", swanSpawnPartIgnored).Name = "Ignored"

									while true do
										wait()
										toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, swanSpawnPartIgnored.Position, swanSpawnPartIgnored.CFrame * CFrame.new(0, 60, 0))

										if (swanSpawnPartIgnored.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
											break
										elseif DetectMob("Swan Pirate") then
											break
										end
									end

									wait(1)
								else
									DeleteIgnoredMobSpawn()
								end
							end
						end
					else
						toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, game:GetService("Workspace").Flower2.Position, game:GetService("Workspace").Flower2.CFrame)
					end
				elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1") == 2 then
					if (CFrame.new(-2777.6001, 72.9661407, -3571.42285).Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 8 then
						toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, CFrame.new(-2777.6001, 72.9661407, -3571.42285).Position, CFrame.new(-2777.6001, 72.9661407, -3571.42285))
					else
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "3")
					end
				else
					AutoQuestBarito()
				end
			elseif raceVersion == " V2" then
				if game.Workspace:GetAttribute("MAP") ~= "Sea2" then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({ "TravelDressrosa" }))

					return
				end

				local response3 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "1")

				if response3 == 0 then
					game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "2")

					return
				end

				if response3 == 2 then
					game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "3")

					return
				end

				if response3 == -1 then
					Fluent:Notify({
						Title = "Banana Cat Hub",
						Content = "Beli >= 2m",
						SubContent = "...",
						Duration = 5
					})
					wait(5)

					return
				end

				local raceAndVersion = game:GetService("Players").LocalPlayer.Data.Race.Value .. raceVersion

				if raceAndVersion == "Human V2" then
					local Jeremy = not table.find(BlBossHuman, "Jeremy") and CheckNameBoss("Jeremy") or not table.find(BlBossHuman, "Orbitus") and CheckNameBoss("Orbitus") or not table.find(BlBossHuman, "Diamond") and CheckNameBoss("Diamond")

					if Jeremy then
						local humanBoss = CheckNameBoss(Jeremy.Name)

						if humanBoss then
							repeat
								task.wait()
								sizepart(humanBoss)
								UsedualFlock()
								ClickM1(humanBoss)
								toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, humanBoss.HumanoidRootPart.Position, humanBoss.HumanoidRootPart.CFrame * CFrame.new(7, 20, 0))
							until not IsMobAlive(humanBoss)

							if not table.find(BlBossHuman, Jeremy.Name) then
								table.insert(BlBossHuman, Jeremy.Name)
							end
						end
					else
						Fluent:Notify({
							Title = "Banana Cat Hub",
							Content = "Waiting Boss Spawn",
							SubContent = "...",
							Duration = 5
						})
						wait(5)
					end
				elseif raceAndVersion == "Mink V2" then
					AutoMinkV2()
				elseif raceAndVersion == "Cyborg V2" then
					if not CheckFruitplr() and TakeFruitInventory(true) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit", TakeFruitInventory(true))
					end
				elseif raceAndVersion == "Fishman V2" then
					AutoFishV2()
				elseif raceAndVersion == "Skypiea V2" then
					local targetPlayer = DetectPlayerAngel()

					if targetPlayer then
						table.insert(triedSkypieaPlayers, targetPlayer.Name)

						local now = tick()

						while true do
							wait()
							spawn(function()
								if game:GetService("Players").LocalPlayer.PlayerGui.Main.BottomHUDList.PvpDisabled.Visible then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
								end
							end)
							spawn(function()
								getgenv().AimPos = CFrame.new(targetPlayer.Character.HumanoidRootPart.CFrame.p, targetPlayer.Character.HumanoidRootPart.Position + targetPlayer.Character.HumanoidRootPart.Velocity / 1.2)

								if LocalPlayer:DistanceFromCharacter(targetPlayer.Character.HumanoidRootPart.Position) < 50 then
									LocalPlayer.Character.HumanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)
								else
									toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, targetPlayer.Character.HumanoidRootPart.Position, targetPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3))
								end
							end)
							spawn(function()
								if LocalPlayer:DistanceFromCharacter(targetPlayer.Character.HumanoidRootPart.Position) < 50 then
									AutoAllSkill(true)
								end
							end)

							if tick() - now >= 70 then
								break
							elseif not targetPlayer.Character or not targetPlayer.Character.Parent or targetPlayer.Character.Humanoid.Health == 0 or CheckSafezone(targetPlayer.Character) or CheckPlayercantAttack(targetPlayer.Character) or not settings["Auto Upgrade Race V2-V3"] then
								break
							end
						end
					else
						HopServer()
						wait(5)
					end
				elseif raceAndVersion == "Ghoul V2" then
					local targetPlayerGhoul = DetectPlayerGhoul()

					if targetPlayerGhoul then
						table.insert(triedGhoulPlayers, targetPlayerGhoul.Name)

						local now = tick()

						while true do
							wait()
							spawn(function()
								if game:GetService("Players").LocalPlayer.PlayerGui.Main.BottomHUDList.PvpDisabled.Visible then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
								end
							end)
							spawn(function()
								getgenv().AimPos = CFrame.new(targetPlayerGhoul.Character.HumanoidRootPart.CFrame.p, targetPlayerGhoul.Character.HumanoidRootPart.Position + targetPlayerGhoul.Character.HumanoidRootPart.Velocity / 1.2)

								if LocalPlayer:DistanceFromCharacter(targetPlayerGhoul.Character.HumanoidRootPart.Position) < 50 then
									LocalPlayer.Character.HumanoidRootPart.CFrame = targetPlayerGhoul.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)
								else
									toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, targetPlayerGhoul.Character.HumanoidRootPart.Position, targetPlayerGhoul.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3))
								end
							end)
							spawn(function()
								if LocalPlayer:DistanceFromCharacter(targetPlayerGhoul.Character.HumanoidRootPart.Position) < 50 then
									AutoAllSkill(true)
								end
							end)

							if tick() - now >= 70 or not targetPlayerGhoul.Character or not targetPlayerGhoul.Character.Parent or targetPlayerGhoul.Character.Humanoid.Health == 0 or CheckSafezone(targetPlayerGhoul.Character) then
								break
							elseif CheckPlayercantAttack(targetPlayerGhoul.Character) or not settings["Auto Upgrade Race V2-V3"] then
								break
							end
						end
					else
						HopServer()
						wait(5)
					end
				end
			else
				if game.Workspace:GetAttribute("MAP") ~= "Sea3" then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")

					return
				end

				if CheckGoTrain() and settings["Account Main Up Gear"] then
					if not farmTrainSlot then
						farmTrainSlot = CountFarmTrain() + 1
						task.wait(0.01)
					end

					if getgenv().AccountMain[LocalPlayer.Name] then
						getgenv().SendMessage("AccMainRemove")
					end

					getgenv().SendMessageActiveRace("FarmTrain")

					local ancientStatus = CheckAcientOneStatus()

					if string.find(ancientStatus, "Can Buy Gear") then
						local fragmentCost = tonumber(ancientStatus:match("%d+"))
						local mobNames = raceTrainMobs[1]

						if game.Players.LocalPlayer.Data.Fragments.Value < fragmentCost then
							local mob = DetectMob(mobNames)

							if mob then
								repeat
									task.wait()
									sizepart(mob)
									BringMob(mob)
									UsedualFlock()
									ClickM1(mob)
									toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, mob.HumanoidRootPart.Position, mob.HumanoidRootPart.CFrame * CFrame.new(7, 20, 0))
								until not IsMobAlive(mob)
							else
								local mobNameList = mobNames

								if typeof(mobNameList) == "table" then
									if #mobNameList <= #usedParts then
										usedParts = {}

										return
									end

									local spawnPart = DetectPartSpawnMob(DetectNameTablePart(mobNameList))

									if spawnPart then
										table.insert(usedParts, DetectNameTablePart(mobNameList))

										while true do
											wait()
											toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, spawnPart.Position, spawnPart.CFrame * CFrame.new(0, 60, 0))

											if (spawnPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
												break
											elseif DetectMob(mobNameList) then
												break
											end
										end

										wait(1)
									end
								else
									local spawnPartIgnored = DetectPartSpawnMob(mobNameList, true)

									if spawnPartIgnored then
										Instance.new("IntValue", spawnPartIgnored).Name = "Ignored"

										while true do
											wait()
											toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, spawnPartIgnored.Position, spawnPartIgnored.CFrame * CFrame.new(0, 60, 0))

											if (spawnPartIgnored.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
												break
											elseif DetectMob(mobNameList) then
												break
											end
										end

										wait(1)
									else
										DeleteIgnoredMobSpawn()
									end
								end
							end

							return
						end
					end

					if LocalPlayer.Character:FindFirstChild("RaceEnergy") and LocalPlayer.Character.RaceEnergy.Value >= 1 then
						if LocalPlayer.Character:FindFirstChild("RaceTransformed") and not LocalPlayer.Character.RaceTransformed.Value then
							LocalPlayer.Backpack.Awakening.RemoteFunction:InvokeServer(unpack({ true }))
						end
					end

					BuyGearV4()

					local mobNames2 = raceTrainMobs[farmTrainSlot]
					local trainMob = DetectMob(mobNames2)

					if trainMob then
						while true do
							task.wait()
							sizepart(trainMob)
							BringMob(trainMob)
							UsedualFlock()
							ClickM1(trainMob)
							toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, trainMob.HumanoidRootPart.Position, trainMob.HumanoidRootPart.CFrame * CFrame.new(7, 20, 0))

							if not IsMobAlive(trainMob) then
								break
							elseif not CheckGoTrain() then
								break
							end
						end
					else
						local mobNameList2 = mobNames2

						if typeof(mobNameList2) == "table" then
							if #mobNameList2 <= #usedParts then
								usedParts = {}

								return
							end

							local spawnPart2 = DetectPartSpawnMob(DetectNameTablePart(mobNameList2))

							if spawnPart2 then
								table.insert(usedParts, DetectNameTablePart(mobNameList2))

								while true do
									wait()
									toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, spawnPart2.Position, spawnPart2.CFrame * CFrame.new(0, 60, 0))

									if (spawnPart2.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
										break
									elseif DetectMob(mobNameList2) or not CheckGoTrain() then
										break
									end
								end

								wait(1)
							end
						else
							local spawnPartIgnored2 = DetectPartSpawnMob(mobNameList2, true)

							if spawnPartIgnored2 then
								Instance.new("IntValue", spawnPartIgnored2).Name = "Ignored"

								while true do
									wait()
									toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, spawnPartIgnored2.Position, spawnPartIgnored2.CFrame * CFrame.new(0, 60, 0))

									if (spawnPartIgnored2.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
										break
									elseif DetectMob(mobNameList2) or not CheckGoTrain() then
										break
									end
								end

								wait(1)
							else
								DeleteIgnoredMobSpawn()
							end
						end
					end
				else
					if settings["Account Main Up Gear"] then
						getgenv().SendAccMain()

						if not DetectMain() then
							toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, CFrame.new(-12463.8740234375, 374.91445922851562, -7523.77392578125).Position, CFrame.new(-12463.8740234375, 374.91445922851562, -7523.77392578125))

							return
						end
					end

					if settings["Auto Kick When End Full Moon"] then
						if getfm() == " | Full Moon" then
							getgenv().AutoKick = true
						elseif getgenv().AutoKick then
							game.Players.LocalPlayer:Kick("Auto Kick Reset Server")
						end
					end

					if not (workspace.Map:FindFirstChild("Temple of Time") or VerifyNearbyTrial()) then
						toTarget(LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(28282.5703125, 14896.8505859375, 105.10427093505859), CFrame.new(28282.5703125, 14896.8505859375, 105.10427093505859))

						return
					end

					local ok = not workspace.Map:FindFirstChild("Temple of Time")

					if not ok then
						ok = not workspace.Map["Temple of Time"].FFABorder:FindFirstChild("Forcefield") or workspace.Map["Temple of Time"].FFABorder.Forcefield.Transparency ~= 1
					end

					local doorUnion, abilityButton, raceName, trialMob, skyFinish, waterTrial, waterTrialBeast, beastRootPart, carnageMob

					if ok then
						if VerifyNearbyTrial() then

							if game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible then
								if VerifyNearbyTrial() and not getgenv().VerifyTrial then
									getgenv().VerifyTrial = true
								end

								if not VerifyNearbyTrial() then
									return
								end

								raceName = game.Players.LocalPlayer.Data.Race.Value

								if raceName == "Human" then

									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace")._WorldOrigin.Locations["Trial of Strength"].Position).Magnitude <= 1000 then
										while true do
											task.wait()
											trialMob = TrialHuman()

											if trialMob then
												while true do
													wait()
													sizepart(trialMob)
													toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, trialMob.HumanoidRootPart.Position, trialMob.HumanoidRootPart.CFrame * CFrame.new(7, 20, 0))
													ClickM1(trialMob)
													UsedualFlock()

													if not IsMobAlive(trialMob) then
														break
													end


													if game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible then

														if not ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace")._WorldOrigin.Locations["Trial of Strength"].Position).Magnitude > 1000) then
															continue
														end
													end

													break
												end
											end


											if game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible then

												if not ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace")._WorldOrigin.Locations["Trial of Strength"].Position).Magnitude > 1000) then
													continue
												end
											end

											break
										end
									end
								elseif raceName == "Skypiea" then
									while true do
										wait()


										if game:GetService("Workspace")._WorldOrigin.Locations["Trial of the King"] then

											if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace")._WorldOrigin.Locations["Trial of the King"].CFrame.Position).Magnitude <= 1000 then
												skyFinish = game:GetService("Workspace").Map.SkyTrial.Model.FinishPart
												toTarget(LocalPlayer.Character.HumanoidRootPart.Position, skyFinish.Position, skyFinish.CFrame)
												task.wait(3)
											end
										end


										if game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible then
											local Map = workspace.Map

											if not Map:FindFirstChild("Temple of Time") or workspace.Map["Temple of Time"].FFABorder.Forcefield.Transparency ~= 0 then

												if not (LocalPlayer:DistanceFromCharacter(game:GetService("Workspace").Map.SkyTrial.Model.FinishPart.Position) > 1000) then
													continue
												end
											end
										end

										break
									end
								elseif raceName == "Fishman" then
									waterTrial = nil


									if game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Trial of Water") then
										waterTrial = game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Trial of Water")
									end

									if waterTrial and (waterTrial.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 then
										waterTrialBeast = GetSeaBeastTrial()

										while true do
											task.wait()

											if waterTrialBeast then
												beastRootPart = waterTrialBeast:FindFirstChild("HumanoidRootPart")
												getgenv().AimPos = CFrame.new(beastRootPart.Position.X, 40, beastRootPart.Position.Z)
												TeleportSeabeast2(waterTrialBeast)

												if LocalPlayer:DistanceFromCharacter(beastRootPart.Position) < 400 then
													AutoAllSkill()
												end
											end

											if waterTrialBeast and waterTrialBeast.Parent and waterTrialBeast.Health.Value ~= 0 then

												if game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible then
													local Map = workspace.Map

													if not Map:FindFirstChild("Temple of Time") or workspace.Map["Temple of Time"].FFABorder.Forcefield.Transparency ~= 0 then

														if not (LocalPlayer:DistanceFromCharacter(game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Trial of Water").Position) > 1000) then
															continue
														end
													end
												end
											end

											break
										end
									end
								elseif raceName == "Mink" then
									while true do
										wait()


										if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace")._WorldOrigin.Locations["Trial of Speed"].Position).Magnitude <= 1000 then
											toTarget(LocalPlayer.Character.HumanoidRootPart.Position, game:GetService("Workspace").StartPoint.Position, game:GetService("Workspace").StartPoint.CFrame * CFrame.new(0, 2, 0))
										end


										if game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible then

											if not (LocalPlayer:DistanceFromCharacter(game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Trial of Speed").Position) > 1000) then
												continue
											end
										end

										break
									end
								elseif raceName == "Ghoul" then

									if LocalPlayer:DistanceFromCharacter(game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Trial of Carnage").Position) < 1000 then
										while true do
											wait()
											carnageMob = TrialGhoul()

											if carnageMob then
												while true do
													wait()
													sizepart(carnageMob)
													toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, carnageMob.HumanoidRootPart.Position, carnageMob.HumanoidRootPart.CFrame * CFrame.new(7, 20, 0))
													ClickM1(carnageMob)
													UsedualFlock()

													if not IsMobAlive(carnageMob) or not settings["Auto Trial"] then
														break
													end


													if game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible then

														if not (LocalPlayer:DistanceFromCharacter(game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Trial of Carnage").Position) > 1000) then
															continue
														end
													end

													break
												end
											end


											if game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible then

												if not (LocalPlayer:DistanceFromCharacter(game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Trial of Carnage").Position) > 1000) then
													continue
												end
											end

											break
										end
									end
								elseif raceName == "Cyborg" then
									while true do
										wait()
										local cyborgTrialCFrame = CFrame.new(-20021.8691, 10090.4893, -16.37994, -0.976144373, 6.71342875e-08, -0.217122361, 8.46145412e-08, 1, -7.1212007e-08, 0.217122361, -8.78849065e-08, -0.976144373)

										if (cyborgTrialCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
											toTarget(LocalPlayer.Character.HumanoidRootPart.Position, cyborgTrialCFrame.Position, cyborgTrialCFrame)
											task.wait(3)
										end


										if game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible then

											if not (LocalPlayer:DistanceFromCharacter(game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Trial of the Machine").Position) > 1000) then
												continue
											end
										end

										break
									end
								end
							else
								doorUnion = game:GetService("Workspace").Map["Temple of Time"][game.Players.LocalPlayer.Data.Race.Value .. "Corridor"].Door.Door.RightDoor.Union

								if not (LocalPlayer:DistanceFromCharacter(doorUnion.Position) > 8) then
									getgenv().SendMessage("AccHelp")

									if #AcountHelp >= 2 and CheckMultiTeleDoor() then
										if settings["Account Main Up Gear"] then
											abilityButton = MobileUIController:GetContextButton("BoundActionRaceAbility")

											if not abilityButton:FindFirstChild("HotkeyIcon") then
												if abilityButton.Button.Cooldown then
													local Cooldown = abilityButton.Button.Cooldown

													if not Cooldown:GetAttribute("Percentage") then
														game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
														getgenv().SendMessageActiveRace("ActiveRace")

														return
													end

													local Cooldown2 = abilityButton.Button.Cooldown

													if Cooldown2:GetAttribute("Percentage") < 0 then
														game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
														getgenv().SendMessageActiveRace("ActiveRace")

														return
													end
												else
													game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
													getgenv().SendMessageActiveRace("ActiveRace")
												end
											elseif abilityButton.Cooldown then
												local Cooldown = abilityButton.Cooldown

												if not Cooldown:GetAttribute("Percentage") then
													game:GetService("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
													task.wait()
													game:GetService("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
													getgenv().SendMessageActiveRace("ActiveRace")

													return
												end

												local Cooldown2 = abilityButton.Cooldown

												if Cooldown2:GetAttribute("Percentage") < 0 then
													game:GetService("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
													task.wait()
													game:GetService("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
													getgenv().SendMessageActiveRace("ActiveRace")

													return
												end
											else
												game:GetService("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
												task.wait()
												game:GetService("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
												getgenv().SendMessageActiveRace("ActiveRace")
											end
										elseif CheckMultiPlayerNearDoor() and #AcountHelp >= 2 and CheckMultiTeleDoor() and getfm() == " | Full Moon" then
											local contextButton2 = MobileUIController:GetContextButton("BoundActionRaceAbility")

											if contextButton2:FindFirstChild("HotkeyIcon") then
												game:GetService("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
												task.wait()
												game:GetService("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
											else
												game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
											end

											getgenv().TurnonRacev3 = false
										end
									end

									return
								end

								getgenv().SendMessage("Remove")
								toTarget(LocalPlayer.Character.HumanoidRootPart.Position, doorUnion.Position, doorUnion.CFrame)
							end
						else
							if getgenv().VerifyTrial then
								getgenv().VerifyTrial = false
							end

							if workspace.Map:FindFirstChild("Temple of Time") and workspace.Map["Temple of Time"].FFABorder.Forcefield.Transparency ~= 1 and not settings["Account Main Up Gear"] then
								LocalPlayer.Character.Humanoid.Health = 0
							end
						end
					elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible then
						if VerifyNearbyTrial() and not getgenv().VerifyTrial then
							getgenv().VerifyTrial = true
						end

						if not VerifyNearbyTrial() then
							return
						end

						raceName = game.Players.LocalPlayer.Data.Race.Value

						if raceName == "Human" then
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace")._WorldOrigin.Locations["Trial of Strength"].Position).Magnitude <= 1000 then
								while true do
									task.wait()
									trialMob = TrialHuman()

									if trialMob then
										while true do
											wait()
											sizepart(trialMob)
											toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, trialMob.HumanoidRootPart.Position, trialMob.HumanoidRootPart.CFrame * CFrame.new(7, 20, 0))
											ClickM1(trialMob)
											UsedualFlock()

											if not IsMobAlive(trialMob) then
												break
											end


											if game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible then

												if not ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace")._WorldOrigin.Locations["Trial of Strength"].Position).Magnitude > 1000) then
													continue
												end
											end

											break
										end
									end

									if game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible then
										if not ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace")._WorldOrigin.Locations["Trial of Strength"].Position).Magnitude > 1000) then
											continue
										end
									end

									break
								end
							end
						elseif raceName == "Skypiea" then
							while true do
								wait()

								if game:GetService("Workspace")._WorldOrigin.Locations["Trial of the King"] then
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace")._WorldOrigin.Locations["Trial of the King"].CFrame.Position).Magnitude <= 1000 then
										skyFinish = game:GetService("Workspace").Map.SkyTrial.Model.FinishPart
										toTarget(LocalPlayer.Character.HumanoidRootPart.Position, skyFinish.Position, skyFinish.CFrame)
										task.wait(3)
									end
								end

								if game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible then
									if not workspace.Map:FindFirstChild("Temple of Time") or workspace.Map["Temple of Time"].FFABorder.Forcefield.Transparency ~= 0 then
										if not (LocalPlayer:DistanceFromCharacter(game:GetService("Workspace").Map.SkyTrial.Model.FinishPart.Position) > 1000) then
											continue
										end
									end
								end

								break
							end
						elseif raceName == "Fishman" then
							waterTrial = nil

							if game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Trial of Water") then
								waterTrial = game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Trial of Water")
							end

							if waterTrial and (waterTrial.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 then
								waterTrialBeast = GetSeaBeastTrial()

								while true do
									task.wait()

									if waterTrialBeast then
										beastRootPart = waterTrialBeast:FindFirstChild("HumanoidRootPart")
										getgenv().AimPos = CFrame.new(beastRootPart.Position.X, 40, beastRootPart.Position.Z)
										TeleportSeabeast2(waterTrialBeast)

										if LocalPlayer:DistanceFromCharacter(beastRootPart.Position) < 400 then
											AutoAllSkill()
										end
									end

									if waterTrialBeast and waterTrialBeast.Parent and waterTrialBeast.Health.Value ~= 0 then
										if game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible then
											if not workspace.Map:FindFirstChild("Temple of Time") or workspace.Map["Temple of Time"].FFABorder.Forcefield.Transparency ~= 0 then
												if not (LocalPlayer:DistanceFromCharacter(game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Trial of Water").Position) > 1000) then
													continue
												end
											end
										end
									end

									break
								end
							end
						elseif raceName == "Mink" then
							while true do
								wait()

								if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace")._WorldOrigin.Locations["Trial of Speed"].Position).Magnitude <= 1000 then
									toTarget(LocalPlayer.Character.HumanoidRootPart.Position, game:GetService("Workspace").StartPoint.Position, game:GetService("Workspace").StartPoint.CFrame * CFrame.new(0, 2, 0))
								end

								if game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible then
									if not (LocalPlayer:DistanceFromCharacter(game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Trial of Speed").Position) > 1000) then
										continue
									end
								end

								break
							end
						elseif raceName == "Ghoul" then
							if LocalPlayer:DistanceFromCharacter(game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Trial of Carnage").Position) < 1000 then
								while true do
									wait()
									carnageMob = TrialGhoul()

									if carnageMob then
										while true do
											wait()
											sizepart(carnageMob)
											toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position, carnageMob.HumanoidRootPart.Position, carnageMob.HumanoidRootPart.CFrame * CFrame.new(7, 20, 0))
											ClickM1(carnageMob)
											UsedualFlock()

											if not IsMobAlive(carnageMob) or not settings["Auto Trial"] then
												break
											end


											if game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible then

												if not (LocalPlayer:DistanceFromCharacter(game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Trial of Carnage").Position) > 1000) then
													continue
												end
											end

											break
										end
									end

									if game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible then
										if not (LocalPlayer:DistanceFromCharacter(game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Trial of Carnage").Position) > 1000) then
											continue
										end
									end

									break
								end
							end
						elseif raceName == "Cyborg" then
							while true do
								wait()
								local cyborgTrialCFrame = CFrame.new(-20021.8691, 10090.4893, -16.37994, -0.976144373, 6.71342875e-08, -0.217122361, 8.46145412e-08, 1, -7.1212007e-08, 0.217122361, -8.78849065e-08, -0.976144373)

								if (cyborgTrialCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
									toTarget(LocalPlayer.Character.HumanoidRootPart.Position, cyborgTrialCFrame.Position, cyborgTrialCFrame)
									task.wait(3)
								end

								if game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible then
									if not (LocalPlayer:DistanceFromCharacter(game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild("Trial of the Machine").Position) > 1000) then
										continue
									end
								end

								break
							end
						end
					else
						doorUnion = game:GetService("Workspace").Map["Temple of Time"][game.Players.LocalPlayer.Data.Race.Value .. "Corridor"].Door.Door.RightDoor.Union

						if not (LocalPlayer:DistanceFromCharacter(doorUnion.Position) > 8) then
							getgenv().SendMessage("AccHelp")

							if #AcountHelp >= 2 and CheckMultiTeleDoor() then
								if settings["Account Main Up Gear"] then
									abilityButton = MobileUIController:GetContextButton("BoundActionRaceAbility")

									if not abilityButton:FindFirstChild("HotkeyIcon") then
										if not abilityButton.Button.Cooldown then
											game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
											getgenv().SendMessageActiveRace("ActiveRace")
										elseif not abilityButton.Button.Cooldown:GetAttribute("Percentage") then
											game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
											getgenv().SendMessageActiveRace("ActiveRace")

											return
										elseif abilityButton.Button.Cooldown:GetAttribute("Percentage") < 0 then
											game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
											getgenv().SendMessageActiveRace("ActiveRace")

											return
										end
									elseif not abilityButton.Cooldown then
										game:GetService("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
										task.wait()
										game:GetService("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
										getgenv().SendMessageActiveRace("ActiveRace")
									elseif not abilityButton.Cooldown:GetAttribute("Percentage") then
										game:GetService("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
										task.wait()
										game:GetService("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
										getgenv().SendMessageActiveRace("ActiveRace")

										return
									elseif abilityButton.Cooldown:GetAttribute("Percentage") < 0 then
										game:GetService("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
										task.wait()
										game:GetService("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
										getgenv().SendMessageActiveRace("ActiveRace")

										return
									end
								elseif CheckMultiPlayerNearDoor() and #AcountHelp >= 2 and CheckMultiTeleDoor() and getfm() == " | Full Moon" then
									if MobileUIController:GetContextButton("BoundActionRaceAbility"):FindFirstChild("HotkeyIcon") then
										game:GetService("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
										task.wait()
										game:GetService("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
									else
										game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
									end

									getgenv().TurnonRacev3 = false
								end
							end

							return
						end

						getgenv().SendMessage("Remove")
						toTarget(LocalPlayer.Character.HumanoidRootPart.Position, doorUnion.Position, doorUnion.CFrame)
					end
				end
			end
		end)

		if result then
			print(result)
		end
	end
end)
FFCMatch = function(container, pattern)
	for _, child in pairs(container:GetChildren()) do
		if string.match(child.Name, pattern) then
			return child
		end
	end

	return nil
end

local function serializeConfig(config)
	if type(config) ~= "table" then
		return config
	end

	local tableVisitCount = {}
	local pendingTables = {}
	local serializedChunks = {}
	local indentLevel = 1
	local jsonString = "{\n"

	while true do
		local keyCount = 0

		for _ in pairs(config) do
			keyCount += 1
		end

		local keyIndex = 1

		for k, v in pairs(config) do
			if tableVisitCount[config] == nil or tableVisitCount[config] <= keyIndex then
				if string.find(jsonString, "}", jsonString:len()) then
					jsonString ..= ",\n"
				elseif not string.find(jsonString, "\n", jsonString:len()) then
					jsonString ..= "\n"
				end

				table.insert(serializedChunks, jsonString)

				local emptyPrefix = ""
				local serializedKey

				if type(k) == "number" or type(k) == "boolean" then
					serializedKey = "[" .. tostring(k) .. "]"
				else
					serializedKey = "[\"" .. tostring(k) .. "\"]"
				end

				local serializedLine

				if type(v) == "number" or type(v) == "boolean" then
					serializedLine = emptyPrefix .. string.rep("\t", indentLevel) .. serializedKey .. " = " .. tostring(v)

					if keyIndex == keyCount then
						jsonString = serializedLine .. "\n" .. string.rep("\t", indentLevel - 1) .. "}"
					else
						jsonString = serializedLine .. ","
					end

					keyIndex += 1
				else
					if type(v) == "table" then
						jsonString = emptyPrefix .. string.rep("\t", indentLevel) .. serializedKey .. " = {\n"
						table.insert(pendingTables, config)
						table.insert(pendingTables, v)
						tableVisitCount[config] = keyIndex + 1
--// dsc thienhuynhngoc
						break
					end

					serializedLine = emptyPrefix .. string.rep("\t", indentLevel) .. serializedKey .. " = \"" .. tostring(v) .. "\""

					if keyIndex == keyCount then
						jsonString = serializedLine .. "\n" .. string.rep("\t", indentLevel - 1) .. "}"
					else
						jsonString = serializedLine .. ","
					end

					keyIndex += 1
				end
			else
				if keyIndex == keyCount then
					jsonString ..= "\n" .. string.rep("\t", indentLevel - 1) .. "}"
				end

				keyIndex += 1
			end
		end

		if keyCount == 0 then
			jsonString ..= "\n" .. string.rep("\t", indentLevel - 1) .. "}"
		end

		if not (#pendingTables > 0) then
			break
		end

		config = pendingTables[#pendingTables]
		pendingTables[#pendingTables] = nil
		indentLevel = tableVisitCount[config] == nil and indentLevel + 1 or indentLevel - 1
	end

	table.insert(serializedChunks, jsonString)

	return "getgenv().Config = " .. table.concat(serializedChunks)
end

Tabs.TabSetupV4:AddButton({
	Title = "Copy Config",
	Description = "",
	Callback = function()
		local data = HttpService:JSONDecode(readfile("Banana Cat Hub" .. "/" .. settingsFileName))

		setclipboard(serializeConfig(data))
		Fluent:Notify({
			Title = "Banana Cat Hub",
			Content = "Successfully Copy Config",
			SubContent = "...",
			Duration = 5
		})
	end
})

local moonParagraph = Tabs.StatusSvMain:AddParagraph({
	Title = Translate("Moon"),
	Content = ""
})

Tabs.StatusSvMain:AddInput("Input JobId", {
	Title = "Input JobId Normal\nAnd JobId BananaCat",
	Default = "",
	Numeric = false,
	Finished = false,
	Callback = function()
	end
})
Tabs.StatusSvMain:AddButton({
	Title = "Clear JobId",
	Description = "",
	Callback = function()
		Options["Input JobId"]:SetValue("")
	end
})
Tabs.StatusSvMain:AddToggle("Spam Join", {
	Title = "Spam Join",
	Default = settings["Spam Join"] or false,
	Callback = function(enabled)
		SaveSettings("Spam Join", enabled)
	end
})

local bit32_ = bit32 or bit or {
	bxor = function(left, right)
		local result = 0
		local bit = 1

		while left > 0 or right > 0 do
			local leftBit = left % 2
			local rightBit = right % 2

			if leftBit ~= rightBit then
				result += bit
			end

			left = (left - leftBit) / 2
			right = (right - rightBit) / 2
			bit *= 2
		end

		return result
	end
}

local function secureEquals(left, right)
	local leftValue
	local rightValue

	if not pcall(function()
		local rightValue2 = right

		leftValue = left
		rightValue = rightValue2
	end) or leftValue == nil or rightValue == nil then
		return false
	end

	if type(leftValue) ~= type(rightValue) then
		return false
	end

	local valuePair = {
		rightValue,
		leftValue,
		rightValue,
		leftValue
	}

	if valuePair[1] ~= valuePair[1] then
		return false
	end

	if valuePair[1] ~= valuePair[2] then
		return false
	end

	if valuePair[2] ~= valuePair[1] then
		return false
	end

	if type(leftValue) == "number" and type(rightValue) == "number" then
		return leftValue == rightValue
	end

	if type(leftValue) == "string" and type(rightValue) == "string" then
		return leftValue == rightValue
	end

	return leftValue == rightValue
end
local function antiTamperCheck()
	local now = os.time and os.time()

	now = now or 12345

	if tostring(print):find("function") == nil then
		while true do
		end
	end

	if tostring(type):find("function") == nil then
		while true do
		end
	end

	if (now * now + now) % 2 ~= 0 then
		while true do
		end
	end

	if secureEquals(now, now) then
		return
	end

	while true do
	end
end
local function buildByteTables()
	antiTamperCheck()

	local step = 17
	local byteToCharTable = {}
	local charToByteTable = {}
	local charToByteResult = {}
	local stateTable = {
		[17] = 23,
		[23] = 41,
		[41] = 999
	}

	while true do
		if step == 17 then
			for i = 0, 255 do
				local charForByte = ("%c"):format(i)

				byteToCharTable[i] = charForByte
				charToByteTable[charForByte] = i
			end

			step = stateTable[17]

			continue
		end

		if step ~= 23 then
			break
		end

		for i = 0, 255 do
			charToByteResult[i] = byteToCharTable[i]
		end

		step = stateTable[23]
	end

	if step ~= 41 then
		while true do
		end
	end

	if not secureEquals(step, 41) then
		while true do
		end
	end

	return charToByteResult, charToByteTable
end

local byteToChar, charToByte = buildByteTables()

local function buildSecretSegments()
	local maskTable = {
		90,
		60,
		126,
		145,
		66,
		184,
		109,
		47
	}
	local encryptedBlocks = {
		{
			37,
			227,
			88,
			25,
			81,
			142
		},
		{
			225,
			25,
			23,
			39,
			39,
			54,
			59
		},
		{
			80,
			105,
			211,
			103,
			227,
			12
		},
		{
			28,
			174,
			170,
			230
		},
		{
			251,
			162,
			95,
			225,
			4,
			193,
			155,
			106
		},
		{
			187,
			44,
			112,
			104,
			12,
			122,
			10,
			104
		},
		{
			68,
			36,
			55,
			125,
			210,
			73,
			24
		},
		{
			5,
			98,
			251,
			178,
			190,
			93,
			195,
			229,
			24
		}
	}

	local function encodeSegment(bytes, seed)
		local encoded = ""
		local seed = seed or 123

		for i = 1, #bytes do
			local maskByte = maskTable[(i - 1) % #maskTable + 1]
			local mixedByte = (bit32_.bxor(bytes[i], maskByte) - seed + 256) % 256

			seed = (seed + i + maskByte) % 256
			encoded ..= byteToChar[bit32_.bxor(mixedByte, i * 17 % 256)]
		end
--// dsc thienhuynhngoc
		return encoded
	end

	local decodedSegments = {}

	for i = 1, #encryptedBlocks do
		decodedSegments[i] = encodeSegment(encryptedBlocks[i], i * 61 % 256)
	end

	return decodedSegments
end

local secretSegments = buildSecretSegments()

local function byteAt(text, index)
	antiTamperCheck()

	local charCount = 0
	local step = 5
	local stateTable2 = {
		[5] = 7,
		[7] = 11,
		[11] = 999
	}

	while true do
		if step == 5 then
			for _ in text:gmatch(".") do
				charCount += 1

				if charCount == index then
					step = stateTable2[5]

					break
				end
			end

			if step == 7 then
				continue
			end

			step = stateTable2[11]

			continue
		end

		if step ~= 7 then
			if step == 11 then
				break
			end

			continue
		end

		local chunk = ""
		local charIndex = 0

		for match in text:gmatch(".") do
			charIndex += 1

			if charIndex == index then
				chunk = match

				break
			end
		end

		if secureEquals(charToByte[chunk] or 0, charToByte[chunk] or 0) then
			return charToByte[chunk] or 0
		end
	end

	return 0
end
local function charFromByte(byte)
	if not secureEquals(byte, byte) then
		while true do
		end
	end

	return byteToChar[byte % 256]
end
local function bytesToString(bytes)
	local result = ""
	local step = 3
	local stateTable3 = {
		[3] = 8,
		[8] = 999
	}

	while true do
		if step ~= 3 then
			if step == 8 and secureEquals(result, result) then
				break
			end
		end

		for i = 1, #bytes do
			result ..= bytes[i]
		end

		step = stateTable3[3]
	end

	return result
end
local function strLen(text)
	antiTamperCheck()

	local charCount = 0

	for _ in text:gmatch(".") do
		charCount += 1
	end

	if secureEquals(charCount, charCount) then
		return charCount
	end

	return 0
end
local function stripPrefix(text, prefix, fallback)
	antiTamperCheck()

	local prefixLen = strLen(prefix)
	local prefixMatches = true

	for i = 1, prefixLen do
		if byteAt(text, i) ~= byteAt(prefix, i) then
			prefixMatches = false

			break
		end
	end

	if not prefixMatches or not secureEquals(prefixMatches, true) then
		return text
	end

	local result = fallback

	for i = prefixLen + 1, strLen(text) do
		local char = ""
		local charIndex = 0

		for match in text:gmatch(".") do
			charIndex += 1

			if charIndex == i then
				char = match

				break
			end
		end

		result ..= char
	end

	return result
end
local function concatAll(...)
	local args = { ... }
	local result = ""

	for i = 1, #args do
		result ..= args[i]
	end

	if secureEquals(result, result) then
		return result
	end

	return ""
end
local function keystream(text, length)
	antiTamperCheck()

	local checksumTable = {}
	local len = strLen(text)
	local checksum = 0

	for i = 1, length do
		local byteValue = byteAt(text, (i - 1) % len + 1)

		checksum = (checksum + byteValue + i) % 256
		checksumTable[i] = (byteValue + checksum + i * 7) % 256
	end

	if secureEquals(#checksumTable, length) then
		return checksumTable
	end

	return {}
end
local function xorBlock(key, text)
	antiTamperCheck()

	local blockLen = strLen(text)
	local stream = keystream(key, strLen(text))
	local xorBytes = {}
	local checksum = 0

	for i = 1, blockLen do
		local byteValue2 = byteAt(text, i)

		checksum = (checksum + stream[i]) % 256
		xorBytes[i] = charFromByte(bit32_.bxor((bit32_.bxor(byteValue2, stream[i]) % 256 + checksum) % 256, i * 13 % 256) % 256)
	end

	return bytesToString(xorBytes)
end
local function encryptRounds(prefix, text, rounds)
	antiTamperCheck()

	local rounds = rounds or 3
	local current = text

	for i = 1, rounds do
		current = xorBlock(concatAll(prefix, charFromByte(48 + i)), current)

		if secureEquals(current, current) then
			continue
		end

		while true do
		end
	end

	return current
end
local function decryptRounds(prefix, text, rounds)
	antiTamperCheck()

	local rounds = rounds or 3
	local current = text

	for i = rounds, 1, -1 do
		local roundKey = concatAll(prefix, charFromByte(48 + i))
		local len = strLen(current)
		local stream = keystream(roundKey, len)
		local xorBytes2 = {}
		local checksum = 0

		for i2 = 1, len do
			checksum = (checksum + stream[i2]) % 256
			xorBytes2[i2] = charFromByte(bit32_.bxor((bit32_.bxor(byteAt(current, i2), i2 * 13 % 256) % 256 - checksum + 256) % 256, stream[i2]) % 256)
		end

		current = bytesToString(xorBytes2)

		if secureEquals(current, current) then
			continue
		end

		while true do
		end
	end

	return current
end
local function createBase64Codec()
	local alphabet = string.char(65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47)

	return {
		encode = function(data)
			antiTamperCheck()

			local base64Indexes = {}
			local len = strLen(data)
			local index = 1

			while index <= len do
				local triple = byteAt(data, index) * 65536 + (index + 1 <= len and byteAt(data, index + 1) or 0) * 256 + (index + 2 <= len and byteAt(data, index + 2) or 0)
				local index2 = triple // 64 % 64 + 1
				local index3 = triple % 64 + 1

				base64Indexes[#base64Indexes + 1] = byteAt(alphabet, triple // 262144 % 64 + 1)
				base64Indexes[#base64Indexes + 1] = byteAt(alphabet, triple // 4096 % 64 + 1)

				local insertAt = #base64Indexes + 1
				local hasSecond = index + 1 <= len

				base64Indexes[insertAt] = hasSecond and byteAt(alphabet, index2) or 61
				base64Indexes[#base64Indexes + 1] = index + 2 <= len and byteAt(alphabet, index3) or 61
				index += 3
			end

			local base64Chars = {}

			for i = 1, #base64Indexes do
				base64Chars[i] = charFromByte(base64Indexes[i])
			end

			if secureEquals(bytesToString(base64Chars), bytesToString(base64Chars)) then
				return bytesToString(base64Chars)
			end

			return ""
		end,
		decode = function(encoded)
			antiTamperCheck()

			local decodedBytes = {}
			local len = strLen(encoded)
			local index = 1

			while index <= len do
				local c1 = byteAt(encoded, index)
				local c2 = byteAt(encoded, index + 1)
				local c3 = byteAt(encoded, index + 2)
				local c4 = byteAt(encoded, index + 3)

				local function charToIndex(char)
					if char == 61 then
						return 0
					end

					for i = 1, 64 do
						if byteAt(alphabet, i) == char then
							return i - 1
						end
					end

					return 0
				end

				local quadValue = charToIndex(c1) * 262144 + charToIndex(c2) * 4096 + charToIndex(c3) * 64 + charToIndex(c4)

				decodedBytes[#decodedBytes + 1] = charFromByte(quadValue // 65536 % 256)

				if c3 ~= 61 then
					decodedBytes[#decodedBytes + 1] = charFromByte(quadValue // 256 % 256)
				end

				if c4 ~= 61 then
					decodedBytes[#decodedBytes + 1] = charFromByte(quadValue % 256)
				end

				index += 4
			end

			if secureEquals(bytesToString(decodedBytes), bytesToString(decodedBytes)) then
				return bytesToString(decodedBytes)
			end

			return ""
		end
	}
end

local base64 = createBase64Codec()

ebgzqifrwa = function(text)
	antiTamperCheck()

	local keyMaterial = concatAll(secretSegments[5], secretSegments[6], secretSegments[7], secretSegments[8])

	if not secureEquals(keyMaterial, keyMaterial) then
		while true do
		end
	end

	local cipher = encryptRounds(keyMaterial, text, 3)
	local payload = concatAll(secretSegments[1], secretSegments[2], cipher)
	local encoded = base64.encode(payload)

	if secureEquals(encoded, encoded) then
		return concatAll(secretSegments[3], secretSegments[4], encoded)
	end

	return ""
end
lebidlyjyf = function(text)
	antiTamperCheck()

	local keyMaterial2 = concatAll(secretSegments[5], secretSegments[6], secretSegments[7], secretSegments[8])

	if not secureEquals(keyMaterial2, keyMaterial2) then
		while true do
		end
	end

	local withoutHeader = stripPrefix(text, concatAll(secretSegments[3], secretSegments[4]), "")
	local withoutFooter = stripPrefix(base64.decode(withoutHeader), concatAll(secretSegments[1], secretSegments[2]), "")

	if secureEquals(withoutFooter, withoutFooter) then
		return decryptRounds(keyMaterial2, withoutFooter, 3)
	end
--// dsc thienhuynhngoc
	return ""
end
Tabs.StatusSvMain:AddButton({
	Title = "Join Server",
	Description = "",
	Callback = function()
		if Options["Spam Join"].Value then
			while task.wait() do
				local jobId = Options["Input JobId"].Value

				if string.find(Options["Input JobId"].Value, "BananaCat") then
					jobId = lebidlyjyf(Options["Input JobId"].Value)
				end

				game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", jobId)
			end
		else
			local jobId = Options["Input JobId"].Value

			if string.find(Options["Input JobId"].Value, "BananaCat") then
				jobId = lebidlyjyf(Options["Input JobId"].Value)
			end

			game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", jobId)
		end
	end
})

local function createAltBase64Codec()
	return {
		encode = function(data)
			return (data:gsub(".", function(char)
				local bits = ""
				local charCode = char:byte()

				for i = 8, 1, -1 do
					bits ..= charCode % 2 ^ i - charCode % 2 ^ (i - 1) > 0 and "1" or "0"
				end

				return bits
			end) .. "0000"):gsub("%d%d%d?%d?%d?%d?", function(bits)
				if #bits < 6 then
					return ""
				end

				local value = 0

				for i = 1, 6 do
					value += bits:sub(i, i) == "1" and 2 ^ (6 - i) or 0
				end

				return ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):sub(value + 1, value + 1)
			end) .. ({
				"",
				"==",
				"="
			})[#data % 3 + 1]
		end,
		decode = function(encoded)
			return string.gsub(encoded, "[^ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=]", ""):gsub(".", function(char)
				if char == "=" then
					return ""
				end

				local bits = ""
				local charIndex = ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"):find(char) - 1

				for i = 6, 1, -1 do
					bits ..= charIndex % 2 ^ i - charIndex % 2 ^ (i - 1) > 0 and "1" or "0"
				end

				return bits
			end):gsub("%d%d%d?%d?%d?%d?%d?%d?", function(bits)
				if #bits ~= 8 then
					return ""
				end
--// dsc thienhuynhngoc
				local value = 0

				for i = 1, 8 do
					value += bits:sub(i, i) == "1" and 2 ^ (8 - i) or 0
				end

				return string.char(value)
			end)
		end
	}
end

createAltBase64Codec()

local function fetchRecentServers(serverName)
	local response
	local _, result = pcall(function()
		response = ExploitReq({
			Url = ("%s/data/recent?name=%s&limit=%s"):format("https://raw.banana-hub.xyz/api", serverName, 100):gsub(" ", "%%20"),
			Method = "GET"
		})
	end)

	if not result then
		return response.Body
	end

	return false
end
--// dsc thienhuynhngoc
local now

SpecialHop = function(serverName)
	if now and tick() - now < 5 then
		return
	end

	local matchingIndexes = {}
	local raw = fetchRecentServers(serverName, 700)

	if not raw then
		return
	end

	local servers = game:GetService("HttpService"):JSONDecode(raw)

	for k, v in next, servers.data, nil do
		if v and v.name == serverName then
			table.insert(matchingIndexes, k)
		end
	end
--// dsc thienhuynhngoc
	now = tick()

	if #matchingIndexes > 0 then
		local triedJobIds = {}

		for _, v in next, servers.data, nil do
			if v and v.name == serverName then
				local jobid = v.jobid
				local Players = v.Players
				local placeid = v.placeid

				if string.find(jobid, "BananaCat") then
					jobid = lebidlyjyf(jobid)
				end

				if jobid and jobid ~= game.JobId then
					if not (table.find(triedJobIds, jobid) or settings[jobid] or (not Players or not (Players < game.Players.MaxPlayers)) and v.Players) then
						if (not placeid or game.PlaceId ~= placeid) and placeid then
							continue
						end

						table.insert(triedJobIds, jobid)
						game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", tostring(jobid))
						SaveSettings(tostring(jobid), true)
						getgenv().limit_type("clearAll")
					end
				end
			end
		end
	end
end
Tabs.StatusSvMain:AddButton({
	Title = "Hop Server FullMoon",
	Callback = function()
		SpecialHop("FullMoon")
	end
})
Tabs.StatusSvMain:AddButton({
	Title = "Hop Server Less People",
	Description = "",
	Callback = function()
		require(game:GetService("ReplicatedStorage").Notification).new("<Color=Red>Banana Hub : Hop Server<Color=/>"):Display()

		local visitedServers = {}
		local cursor = ""
		local hour = os.date("!*t").hour

		if not pcall(function()
			visitedServers = game:GetService("HttpService"):JSONDecode(readfile("Banana Cat Hub/NotSameServers.json"))
		end) then
			table.insert(visitedServers, hour)
			writefile("Banana Cat Hub/NotSameServers.json", game:GetService("HttpService"):JSONEncode(visitedServers))
		end

		local hopServerLess

		hopServerLess = function()
			local data

			if cursor == "" then
				data = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
			else
				data = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. cursor))
			end

			if data.nextPageCursor and data.nextPageCursor ~= "null" and data.nextPageCursor ~= nil then
				cursor = data.nextPageCursor
			end

			local iterIndex = 0

			for _, v in pairs(data.data) do
				local isNew = true
				local jobId = tostring(v.id)
				local maxPlayers = tonumber(v.maxPlayers)

				if tonumber(v.playing) < maxPlayers and tonumber(v.playing) <= 3 then
					for _, visited in pairs(visitedServers) do
						if iterIndex == 0 then
							if tonumber(hour) ~= tonumber(visited) then
								pcall(function()
									delfile("Banana Cat Hub/NotSameServers.json")
									visitedServers = {}
									table.insert(visitedServers, hour)
								end)
							end
						elseif jobId == tostring(visited) then
							isNew = false
						end

						iterIndex += 1
					end

					if isNew == true then
						table.insert(visitedServers, jobId)
						wait()
						pcall(function()
							writefile("Banana Cat Hub/NotSameServers.json", game:GetService("HttpService"):JSONEncode(visitedServers))
							wait()
							game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", jobId)
							getgenv().limit_type("clearAll")
						end)
						wait(4)
					end
				end
			end
		end

		while wait() do
			hopServerLess()
		end
	end
})
Tabs.StatusSvMain:AddButton({
	Title = "Copy JobId",
	Description = "",
	Callback = function()
		setclipboard(tostring(game.JobId))
	end
})
Tabs.TabDevilFruit:AddToggle("Random Devil Fruit", {
	Title = Translate("Random Devil Fruit"),
	Default = settings["Random Devil Fruit"] or false,
	Callback = function(enabled)
		SaveSettings("Random Devil Fruit", enabled)
	end
})
Tabs.TabDevilFruit:AddToggle("Auto Store Fruit", {
	Title = Translate("Auto Store Fruit"),
	Default = settings["Auto Store Fruit"] or false,
	Callback = function(enabled)
		SaveSettings("Auto Store Fruit", enabled)
	end
})
require(game:GetService("ReplicatedStorage").FruitInfo)
StoreFruit = function(container)
	for _, child in pairs(container:GetChildren()) do
		if string.find(child.Name, "Fruit") and not child:FindFirstChild("Ignored") then
			local fruitBaseName = string.gsub(child.Name, " Fruit", "")

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", string.gsub(child.Name, " Fruit", "-" .. fruitBaseName), container:FindFirstChild(child.Name))
			Instance.new("IntValue", child).Name = "Ignored"
			wait(2)
		end
	end
end
spawn(function()
	while task.wait() do
		pcall(function()
			ancientOneParagraph:SetDesc(CheckAcientOneStatus())
			moonParagraph:SetDesc(getfm())

			if not FFCMatch(LocalPlayer.Character, "_BusoLayer1") then
				if not LocalPlayer.Character:FindFirstChild("HasBuso") then
					game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Buso")
					task.wait(2)
				end
			end

			ChooseGearV4()

			if settings["Random Devil Fruit"] then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
			end

			if settings["Auto Store Fruit"] then
				StoreFruit(LocalPlayer.Backpack)
				StoreFruit(LocalPlayer.Character)
			end
		end)
	end
end)
spawn(function()
	wait(5)

	if not getgenv().SetSimulationRadiusRun then
		getgenv().SetSimulationRadiusRun = true
		game:GetService("RunService").Stepped:connect(function()
			sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
		end)
	end
end)
Tabs.ShopMain:AddButton({
	Title = "Reroll Race",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
			"BlackbeardReward",
			"Reroll",
			"2"
		}))
	end
})
Tabs.ShopMain:AddButton({
	Title = "Buy Race Cyborg",
	Description = "",
	Callback = function()
		game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CyborgTrainer", "Buy")
	end
})
Tabs.ShopMain:AddButton({
	Title = "Buy Race Ghoul",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
			"Ectoplasm",
			"BuyCheck",
			4
		}))
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
			"Ectoplasm",
			"Change",
			4
		}))
	end
})
getgenv().limit_type = function() end
spawn(function()
	getgenv().UIToggled = true
	local hideGui = Instance.new("ScreenGui")
	hideGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	hideGui.Name = "Banana Cat Hub Btn"
	hideGui.Enabled = true
	hideGui.Parent = game:GetService("CoreGui")

	local Frame = Instance.new("Frame", hideGui)

	Frame.AnchorPoint = Vector2.new(0, 1)
	Frame.Size = UDim2.new(0, 50, 0, 50)
	Frame.Position = UDim2.new(0, 15, 0.2, 5)
	Frame.Name = "dut dit"
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BackgroundTransparency = getgenv().UIToggled and 0 or 0.25

	local TextButton = Instance.new("TextButton", Frame)

	TextButton.BackgroundTransparency = 1
	TextButton.Text = ""
	TextButton.Size = UDim2.new(1, 0, 1, 0)

	local ImageLabel = Instance.new("ImageLabel", Frame)

	ImageLabel.AnchorPoint = Vector2.new(0, 0)
	ImageLabel.Image = "rbxassetid://5009915795"
	ImageLabel.BackgroundTransparency = 1

	local zero = 0
	local UIToggled = getgenv().UIToggled

	ImageLabel.Size = UDim2.new(zero, UIToggled and 40 or 30, 0, getgenv().UIToggled and 40 or 30)
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)

	local UICorner = Instance.new("UICorner")

	UICorner.Parent = Frame
	UICorner.CornerRadius = UDim.new(1, 0)
	TextButton.MouseButton1Click:Connect(function()
		getgenv().UIToggled = not getgenv().UIToggled

		local size = getgenv().UIToggled and 40 or 30

		game:GetService("TweenService"):Create(ImageLabel, TweenInfo.new(0.25), {
			Size = UDim2.new(0, size, 0, size)
		}):Play()

		local TweenService = game:GetService("TweenService")
		local service = TweenService
		local Create = TweenService.Create
		local target = Frame
		local tweenInfo = TweenInfo.new(0.25)
		local backgroundTransparency = getgenv().UIToggled and 0
		local tweenProps = {
			BackgroundTransparency = backgroundTransparency or 0.25
		}

		Create(service, target, tweenInfo, tweenProps):Play()
		game:GetService("VirtualInputManager"):SendKeyEvent(true, "LeftControl", false, game)
		task.wait()
		game:GetService("VirtualInputManager"):SendKeyEvent(false, "LeftControl", false, game)
	end)
end)
