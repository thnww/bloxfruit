local LocalPlayer = game.Players.LocalPlayer
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

game:GetService("TeleportService")
game:GetService("HttpService")

local CommF_ = ReplicatedStorage.Remotes.CommF_
local Stats = game:GetService("Stats")

repeat
	task.wait(1)

	if not LocalPlayer.Team then
		CommF_:InvokeServer("SetTeam", "Pirates")
	end
until LocalPlayer.Team

if hookfunction and hookmetamethod and getconnections and cloneref and firetouchinterest and fireproximityprompt and collectgarbage and version and gethwid then
	print("Supported Executor!")
else
	LocalPlayer:Kick("Missing hookfunction/hookmetamethod...")
	;(rawget(getrawmetatable(LocalPlayer), "Kick") or LocalPlayer.Kick)(LocalPlayer, "")
	game:Shutdown()
end

local lib = loadstring(game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
local lib2 = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau"))()
local TweenService = game:GetService("TweenService")
local ContentProvider = game:GetService("ContentProvider")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local PlayerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
local executor = tostring(identifyexecutor())
local v14 = ({
	Zenith = true,
	Volt = true,
	Wave = true,
	Potassium = true,
	Seliware = true,
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	SirHurt = true,
	Hydrogen = "macOS",
	MacSploit = "macOS"
})[executor]

Window = lib:CreateWindow({
	Title = "Vxeze Hub [ Premium ]",
	SubTitle = "Blox Fruit",
	TabWidth = 150,
	Size = UDim2.fromOffset(500, 380),
	Resize = false,
	MinSize = Vector2.new(450, 350),
	Acrylic = false,
	Theme = "Dark",
	MinimizeKey = Enum.KeyCode.LeftControl
})
Tabs = {
	Status = Window:CreateTab({
		Title = "Status",
		Icon = "align-end-vertical"
	}),
	Main = Window:CreateTab({
		Title = "Main",
		Icon = "code-xml"
	}),
	Stack = Window:CreateTab({
		Title = "Stack",
		Icon = "component"
	}),
	Sub = Window:CreateTab({
		Title = "Sub Main",
		Icon = "list-collapse"
	}),
	RF = Window:CreateTab({
		Title = "Raid & Fruit",
		Icon = "cherry"
	}),
	SE = Window:CreateTab({
		Title = "Sea Event",
		Icon = "leaf"
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	}),
	Race = Window:CreateTab({
		Title = "Race",
		Icon = "paw-print"
	}),
	PvP = Window:CreateTab({
		Title = "PvP",
		Icon = "shield"
	}),
	Shop = Window:CreateTab({
		Title = "Shopping",
		Icon = "store"
	}),
	LL = Window:CreateTab({
		Title = "Local Player",
		Icon = "user"
	}),
	SK = Window:CreateTab({
		Title = "Setting Skill",
		Icon = "settings-2"
	}),
	Settings = Window:CreateTab({
		Title = "Setting",
		Icon = "cog"
	}),
	SettingsS = Window:CreateTab({
		Title = "Settings Fluent",
		Icon = "settings"
	})
}
Config = {
	Main = {
		["Selected Method Farm"] = "Level",
		["Distance Nearest"] = 300,
		["Accept Quest"] = true,
		["Start Farm Method"] = false,
		["Selected Method Mastery"] = nil,
		["Start Farm Matery"] = false,
		["Selected Boss"] = nil,
		["Start Farm Boss Selected"] = false,
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		["Start Farm All Boss"] = false
	},
	Stack = {
		["Quest World 2"] = false,
		["Quest World 3"] = false,
		["Collect Fruit"] = false,
		["Collect Berry"] = false,
		["Hop Server Collect"] = false,
		["Factory Raid"] = false,
		["Pirate Raid"] = false,
		["Start Observation"] = false,
		["Quest Observation V2"] = false,
		["Observation [Hop Server]"] = false,
		["Quest Rainbow Haki"] = false,
		["Rainbow Haki [ Hop Server ]"] = false,
		["Chest Value Setting"] = 20,
		["Collect Chest"] = false,
		["Chest [ Hop Server ]"] = false,
		["Stop Items"] = false,
		["Selected Material"] = nil,
		["Material Value Setting"] = 30,
		["Start Farm Material"] = false
	},
	Sub = {
		["Random Bone"] = false,
		["Soul Reaper"] = false,
		["Summon Raid Boss"] = false,
		["Cake Prince"] = false,
		["Dough King"] = false,
		["Elite Hunter"] = false,
		["Elite Hunter [ Hop Server ]"] = false,
		["Touch Pad Haki"] = false,
		["rip_indra True Form"] = false,
		Darkbeard = false,
		["Tyrant of the Skies"] = false
	},
	RF = {
		["Random Fruit"] = false,
		["Store Fruit"] = false,
		["Selected Fruit Shop"] = nil,
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		["Buy Shop Fruit"] = false,
		["Select Raid"] = nil,
		["Get Fruit Low"] = false,
		["Start Raid"] = false,
		["Awakening Skills"] = false,
		["Select Difficulty"] = "Normal",
		["Min Player"] = "2",
		["Join Dungeon"] = false,
		["Select Card"] = nil,
		["Pick Card"] = false,
		["Start Dungeon"] = false,
		["Start Dungeon Hub"] = false
	},
	SE = {
		["Selected Zone"] = "Zone 1",
		["Selected Boat"] = "Guardian",
		["Selected Sea"] = nil,
		["Sea Event"] = false
	},
	Race = {},
	PvP = {},
	Shop = {
		Abilities = false,
		["Selected Buy Melee"] = "None",
		["Buy Melee"] = false
	},
	LL = {
		["Melee Stats"] = false,
		["Defense Stats"] = false,
		["Sword Stats"] = false,
		["Gun Stats"] = false,
		["Devil Fruit Stats"] = false,
		["Point Stats"] = 1,
		["Selected Island"] = nil,
		["Teleport Island"] = false,
		["Selected Npc"] = nil,
		["Teleport Npc"] = false,
		["Selected Region"] = "Singapore",
		["Job Id"] = ""
	},
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	SK = {},
	Settings = {
		["Selected Weapon"] = "Melee",
		["Delay Quest Acquisition"] = true,
		["Gather Monsters In One Area"] = false,
		["Spin Position"] = false,
		["Farm Distance"] = 25,
		["Tween Speed"] = 300,
		["Bypass Tp"] = false,
		["Bring Mob Mode"] = "Normal",
		["Value Bring"] = 3,
		["Bring Mob"] = true,
		["Fast Attack"] = true,
		["Attack Animation"] = false,
		["Value Low Health"] = 30,
		["Up Y When Low Health"] = false,
		["Auto Click"] = false,
		["Change server after 30 minutes"] = false,
		["Hide Notification"] = false,
		["Hide Monster"] = false,
		["Hide Chat"] = false,
		["Hide Leaderboard"] = false,
		["Set Spawn Point"] = true,
		["Active Race V3"] = false,
		["Active Race V4"] = false,
		["Active Buso"] = true,
		["Active Ken"] = false,
		["Active Rejoin"] = true,
		["Active Anti Cheat"] = true
	},
	SettingsS = {
		["Load Execute"] = false
	}
}
Load = function()
	if not readfile or not writefile or not isfile or not isfolder then
		return warn("Status : Undetected Executor")
	end

	if not isfolder("Vxeze Hub - Studio") then
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		makefolder("Vxeze Hub - Studio")
	end

	if not isfolder("Vxeze Hub - Studio/Blox Fruits/") then
		makefolder("Vxeze Hub - Studio/Blox Fruits/")
	end

	local v15 = "Vxeze Hub - Studio/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"

	if isfile(v15) then
		local data = game:GetService("HttpService"):JSONDecode(readfile(v15))

		for k, v in pairs(data) do
			Config[k] = v
		end
	else
		writefile(v15, game:GetService("HttpService"):JSONEncode(Config))
	end

	print("Loaded!")
end
SaveSetting = function()
	if not readfile or not writefile or not isfile or not isfolder then
		return warn("Status : Undetected Executor")
	end

	local v19 = "Vxeze Hub - Studio/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"

	if isfile(v19) then
		local t1 = {}

		for k, v in pairs(Config) do
			t1[k] = v
		end

		writefile(v19, game:GetService("HttpService"):JSONEncode(t1))
	else
		Load()
	end
end
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
ResetSetting = function()
	if readfile and writefile then
		if isfile and isfolder then
			Config = {
				Main = {
					["Selected Method Farm"] = "Level",
					["Distance Nearest"] = 300,
					["Accept Quest"] = true,
					["Start Farm Method"] = false,
					["Selected Method Mastery"] = nil,
					["Start Farm Matery"] = false,
					["Selected Boss"] = nil,
					["Start Farm Boss Selected"] = false,
					["Start Farm All Boss"] = false
				},
				Stack = {
					["Quest World 2"] = false,
					["Quest World 3"] = false,
					["Collect Fruit"] = false,
					["Collect Berry"] = false,
					["Hop Server Collect"] = false,
					["Factory Raid"] = false,
					["Pirate Raid"] = false,
					["Start Observation"] = false,
					["Quest Observation V2"] = false,
					["Observation [Hop Server]"] = false,
					["Quest Rainbow Haki"] = false,
					["Rainbow Haki [ Hop Server ]"] = false,
					["Chest Value Setting"] = 20,
					["Collect Chest"] = false,
					["Chest [ Hop Server ]"] = false,
					["Stop Items"] = false,
					["Selected Material"] = nil,
					["Material Value Setting"] = 30,
					["Start Farm Material"] = false
				},
				Sub = {
					["Random Bone"] = false,
					["Soul Reaper"] = false,
					["Summon Raid Boss"] = false,
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
					["Cake Prince"] = false,
					["Dough King"] = false,
					["Elite Hunter"] = false,
					["Elite Hunter [ Hop Server ]"] = false,
					["Touch Pad Haki"] = false,
					["rip_indra True Form"] = false,
					Darkbeard = false,
					["Tyrant of the Skies"] = false
				},
				RF = {
					["Random Fruit"] = false,
					["Store Fruit"] = false,
					["Selected Fruit Shop"] = nil,
					["Buy Shop Fruit"] = false,
					["Select Raid"] = nil,
					["Get Fruit Low"] = false,
					["Start Raid"] = false,
					["Awakening Skills"] = false,
					["Select Difficulty"] = "Normal",
					["Min Player"] = "2",
					["Join Dungeon"] = false,
					["Select Card"] = nil,
					["Pick Card"] = false,
					["Start Dungeon"] = false,
					["Start Dungeon Hub"] = false
				},
				SE = {
					["Selected Zone"] = "Zone 1",
					["Selected Boat"] = "Guardian",
					["Selected Sea"] = nil,
					["Sea Event"] = false
				},
				Race = {},
				PvP = {},
				Shop = {
					Abilities = false,
					["Selected Buy Melee"] = "None",
					["Buy Melee"] = false
				},
				LL = {
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
					["Melee Stats"] = false,
					["Defense Stats"] = false,
					["Sword Stats"] = false,
					["Gun Stats"] = false,
					["Devil Fruit Stats"] = false,
					["Point Stats"] = 1,
					["Selected Island"] = nil,
					["Teleport Island"] = false,
					["Selected Npc"] = nil,
					["Teleport Npc"] = false,
					["Selected Region"] = "Singapore",
					["Job Id"] = ""
				},
				SK = {},
				Settings = {
					["Selected Weapon"] = "Melee",
					["Delay Quest Acquisition"] = true,
					["Gather Monsters In One Area"] = false,
					["Spin Position"] = false,
					["Farm Distance"] = 25,
					["Tween Speed"] = 300,
					["Bypass Tp"] = false,
					["Bring Mob Mode"] = "Normal",
					["Value Bring"] = 3,
					["Bring Mob"] = true,
					["Fast Attack"] = true,
					["Attack Animation"] = false,
					["Value Low Health"] = 30,
					["Up Y When Low Health"] = false,
					["Auto Click"] = false,
					["Change server after 30 minutes"] = false,
					["Hide Notification"] = false,
					["Hide Monster"] = false,
					["Hide Chat"] = false,
					["Hide Leaderboard"] = false,
					["Set Spawn Point"] = true,
					["Active Race V3"] = false,
					["Active Race V4"] = false,
					["Active Buso"] = true,
					["Active Ken"] = false,
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
					["Active Rejoin"] = true,
					["Active Anti Cheat"] = true
				},
				SettingsS = {
					["Load Execute"] = false
				}
			}
			writefile("Vxeze Hub - Studio/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(Config))
			lib:Notify({
				Title = "Reset Successful!",
				Content = "All settings have been reset to default",
				Duration = 3
			})
			print("Settings reset to default!")

			return
		end
	end

	return warn("Status : Undetected Executor")
end
Load()

if v14 == "macOS" then
	lib:Notify({
		Title = "Free Vxeze Hub",
		Content = "Paid Executor (macOS)",
		SubContent = "Executor: " .. executor,
		Duration = 5
	})
elseif v14 then
	lib:Notify({
		Title = "Free Vxeze Hub",
		Content = "Paid Executor (Window)",
		SubContent = "Executor: " .. executor,
		Duration = 5
	})
else
	lib:Notify({
		Title = "Free Vxeze Hub",
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		Content = "Free Executor (Window/Mobile)",
		SubContent = "Executor: " .. executor,
		Duration = 5
	})
end

local CustomScreenGui = PlayerGui:FindFirstChild("CustomScreenGui")

if CustomScreenGui then
	CustomScreenGui:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")

ScreenGui.Name = "CustomScreenGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = PlayerGui

local Frame = Instance.new("Frame")

Frame.Name = "BorderFrame"
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 52, 0, 52)
Frame.Position = UDim2.new(0, 50, 0, 50)
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BackgroundTransparency = 0
Frame.BorderSizePixel = 2
Frame.BorderColor3 = Color3.fromRGB(0, 255, 255)

local UICorner = Instance.new("UICorner")

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Frame

local ImageButton = Instance.new("ImageButton")

ImageButton.Name = "CustomButton"
ImageButton.Parent = Frame
ImageButton.Size = UDim2.new(1, -4, 1, -4)
ImageButton.Position = UDim2.new(0.5, 0, 0.5, 0)
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
ImageButton.BackgroundTransparency = 1
ImageButton.Image = "rbxassetid://91742863926517"

local UICorner2 = Instance.new("UICorner")

UICorner2.CornerRadius = UDim.new(1, 0)
UICorner2.Parent = ImageButton

local UIStroke = Instance.new("UIStroke")

UIStroke.Thickness = 2
UIStroke.Color = Color3.fromRGB(0, 255, 255)
UIStroke.Parent = Frame
UIStroke.Enabled = false

local u30 = false

ContentProvider:PreloadAsync({ ImageButton.Image }, function()
	u30 = true
end)

local u31 = false
local u32
local Position
local Position2
local Size = ImageButton.Size
local enabled = false
local Position3 = Frame.Position
local Position4 = Frame.Position
local n1 = 0.15

local function v40(p1)
	if u31 then
		local v41 = p1.Position - Position

		Position4 = UDim2.new(Position2.X.Scale, Position2.X.Offset + v41.X, Position2.Y.Scale, Position2.Y.Offset + v41.Y)
	end
end

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
RunService.RenderStepped:Connect(function()
	if u31 then
		Position3 = Position3:Lerp(Position4, n1)
		Frame.Position = Position3
	end
end)
ImageButton.InputBegan:Connect(function(input)
	local connection

	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		u31 = true
		Position = input.Position
		Position2 = Frame.Position
		Position3 = Frame.Position

		local tween = TweenService:Create(ImageButton, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Size = UDim2.new(Size.X.Scale, Size.X.Offset * 0.9, Size.Y.Scale, Size.Y.Offset * 0.9)
		})

		tween:Play()
		connection = nil
		connection = input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				u31 = false
				connection:Disconnect()

				local t2 = {
					Size = Size
				}

				TweenService:Create(ImageButton, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), t2):Play()
			end
		end)
	elseif input.UserInputType == Enum.UserInputType.Touch then
		u31 = true
		Position = input.Position
		Position2 = Frame.Position
		Position3 = Frame.Position
		TweenService:Create(ImageButton, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Size = UDim2.new(Size.X.Scale, Size.X.Offset * 0.9, Size.Y.Scale, Size.Y.Offset * 0.9)
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		}):Play()
		connection = nil
		connection = input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				u31 = false
				connection:Disconnect()

				local t3 = {
					Size = Size
				}

				TweenService:Create(ImageButton, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), t3):Play()
			end
		end)

		return
	end
end)
ImageButton.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		u32 = input
		v40(input)
	end
end)
UserInputService.InputChanged:Connect(function(input)
	if input == u32 and u31 then
		v40(input)
	end
end)

local n2 = 0

ImageButton.MouseButton1Down:Connect(function()
	n2 = tick()
end)
ImageButton.MouseButton1Up:Connect(function()
	if tick() - n2 < 0.2 and not u31 then
		enabled = not enabled
		UIStroke.Enabled = enabled
		TweenService:Create(UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			Thickness = enabled and 4 or 2
		}):Play()

		if u30 then
			Window:Minimize()
		end
	end
end)
ImageButton.MouseEnter:Connect(function()
	TweenService:Create(ImageButton, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = UDim2.new(Size.X.Scale, Size.X.Offset * 1.1, Size.Y.Scale, Size.Y.Offset * 1.1)
	}):Play()
	TweenService:Create(Frame, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
		BackgroundTransparency = 0.3
	}):Play()
end)
ImageButton.MouseLeave:Connect(function()
	local t4 = {
		Size = Size
	}

	TweenService:Create(ImageButton, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), t4):Play()
	TweenService:Create(Frame, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
		BackgroundTransparency = 0
	}):Play()
end)
Tabs.SettingsS:AddSection("Save Setting")
Load = Tabs.SettingsS:CreateToggle("Load", {
	Title = "Load Script if hop server",
	Description = "Auto load execute script if hop server",
	Default = Config.SettingsS["Load Execute"]
})
Load:OnChanged(function(p2)
	Config.SettingsS["Load Execute"] = p2
	SaveSetting()

	if p2 then
		local queue_on_teleport_ = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport

		if queue_on_teleport_ then
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			queue_on_teleport_([[                repeat wait() until game:IsLoaded()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Dex-Bear/Vxezehub/refs/heads/main/BF-Main.lua"))()
            ]])
		end
	end
end)
Tabs.SettingsS:CreateButton({
	Title = "Copy Saved Config",
	Description = "Copy current saved config from file",
	Callback = function()
		if readfile and isfile and isfolder then
			local v49 = "Vxeze Hub - Studio/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"

			if not isfile(v49) then
				lib:Notify({
					Title = "Error!",
					Content = "No saved config found",
					Duration = 3
				})

				return
			end

			local v50 = readfile(v49)
			local data = game:GetService("HttpService"):JSONDecode(v50)

			local function v52(p3, p4)
				local v53 = p4 or 0
				local v54 = string.rep("    ", v53)
				local s1 = "{\n"

				for k, v in pairs(p3) do
					local v58 = s1 .. v54 .. "    "
					local v59

					if type(k) == "string" then
						v59 = v58 .. "[\"" .. k .. "\"] = "
					else
						v59 = v58 .. "[" .. k .. "] = "
					end
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU

					local v60

					if type(v) == "table" then
						v60 = v59 .. v52(v, v53 + 1)
					elseif type(v) == "string" then
						v60 = v59 .. "\"" .. v .. "\""
					elseif type(v) == "boolean" then
						v60 = v59 .. tostring(v)
					elseif type(v) == "nil" then
						v60 = v59 .. "nil"
					else
						v60 = v59 .. tostring(v)
					end

					s1 = v60 .. ",\n"
				end

				return s1 .. v54 .. "}"
			end

			local v61 = "Config = " .. v52(data)

			setclipboard(v61)

			if writefile then
				if not isfolder("Vxeze Hub - Studio/Exports") then
					makefolder("Vxeze Hub - Studio/Exports")
				end

				local savedConfigExportedTo = "Vxeze Hub - Studio/Exports/" .. game.Players.LocalPlayer.Name .. "_SavedConfig_" .. os.date("%Y-%m-%d_%H-%M-%S") .. ".lua"

				writefile(savedConfigExportedTo, v61)
				lib:Notify({
					Title = "Copied & Saved!",
					Content = "Saved config copied to clipboard and file",
					Duration = 3
				})
				print("Saved config exported to: " .. savedConfigExportedTo)
			else
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
				lib:Notify({
					Title = "Copied!",
					Content = "Saved config copied to clipboard",
					Duration = 3
				})
			end
		else
			lib:Notify({
				Title = "Error!",
				Content = "Executor not supported",
				Duration = 3
			})
		end
	end
})
Tabs.SettingsS:CreateButton({
	Title = "Reset Config",
	Description = "Reset all settings to default",
	Callback = function()
		Window:Dialog({
			Title = "Reset Confirmation",
			Content = "Are you sure you want to reset ALL settings to default?\nThis action cannot be undone.",
			Buttons = {
				{
					Title = "Yes",
					Callback = function()
						ResetSetting()
					end
				},
				{
					Title = "No",
					Callback = function()
						lib:Notify({
							Title = "Cancelled",
							Content = "Reset cancelled",
							Duration = 2
						})
					end
				}
			}
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		})
	end
})
Tabs.SettingsS:AddSection("Button Setting")
Tabs.SettingsS:CreateSlider("ButtonSize", {
	Title = "Button Size",
	Description = "Adjust toggle button size",
	Default = 40,
	Min = 35,
	Max = 80,
	Rounding = 0,
	Callback = function(p5)
		Frame.Size = UDim2.new(0, p5, 0, p5)
		Size = UDim2.new(1, -4, 1, -4)
		ImageButton.Size = Size
	end
})
Tabs.SettingsS:CreateSlider("DragSpeed", {
	Title = "Drag Speed",
	Description = "Adjust how smooth the dragging is",
	Default = 0.15,
	Min = 0.05,
	Max = 1,
	Rounding = 2,
	Callback = function(p6)
		n1 = p6
	end
})
Tabs.SettingsS:CreateButton({
	Title = "Reset Button Position",
	Description = "Move button back to top-left",
	Callback = function()
		local uDim2 = UDim2.new(0, 50, 0, 50)

		TweenService:Create(Frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Position = uDim2
		}):Play()
		Position3 = uDim2
		Position4 = uDim2
	end
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
})
lib2:SetLibrary(lib)
lib2:SetFolder("FluentScriptHub")
lib2:BuildInterfaceSection(Tabs.SettingsS)

local v64 = false
local v65 = false
local v66 = false
local n3 = 1500

if game.PlaceId == 85211729168715 then
	n3 = 1500
	v64 = true
elseif game.PlaceId == 79091703265657 then
	n3 = 3500
	v65 = true
elseif game.PlaceId == 100117331123089 then
	n3 = 6000
	v66 = true
elseif game.PlaceId == 73902483975735 then
end

local LocalPlayer2 = game:GetService("Players").LocalPlayer
local TweenService2 = game:GetService("TweenService")
local t5 = {}
local tween
local n4 = 0

Convert_CFrame = function(p7)
	if not p7 then
		return CFrame.new()
	end

	if typeof(p7) == "Vector3" then
		return CFrame.new(p7)
	end

	if typeof(p7) == "CFrame" then
		return p7
	end
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU

	if typeof(p7) == "Model" then
		return p7:GetPivot()
	end

	if p7.CFrame then
		return p7.CFrame
	end

	return CFrame.new()
end
InArea = function(p8)
	local children, v74 = workspace._WorldOrigin.Locations:GetChildren()

	for _, v in next, children, v74 do
		if (Convert_CFrame(p8).Position - v.Position).Magnitude <= v.Mesh.Scale.X then
			return v
		end
	end

	return {
		Name = ""
	}
end
GetSpawnPoint = function(p9)
	if not p9 then
		return nil
	end

	local v77 = workspace._WorldOrigin.PlayerSpawns[tostring(LocalPlayer2.Team)]

	if not v77 then
		return nil
	end

	local children, v79 = v77:GetChildren()

	for _, v in next, children, v79 do
		local modelCFrame = v:GetModelCFrame()

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		if modelCFrame and (modelCFrame.Position - Convert_CFrame(p9).Position).Magnitude <= 5000 then
			return v
		end
	end

	return nil
end
GetClosestArena = function(p10)
	if not p10 then
		return nil
	end

	local huge = math.huge
	local t6
	local Character = LocalPlayer2.Character

	if not Character or not Character:FindFirstChild("HumanoidRootPart") then
		return nil
	end

	local Position5 = Convert_CFrame(p10).Position
	local Position6 = Character.HumanoidRootPart.Position

	if (Position5 - Position6).Magnitude < 5000 then
		return nil
	end

	local v88 = GetSpawnPoint(Position6)
	local v89 = workspace._WorldOrigin.PlayerSpawns[tostring(LocalPlayer2.Team)]

	if not v89 then
		return nil
	end

	local children, v91 = v89:GetChildren()

	for _, v in next, children, v91 do
		if tostring(v) ~= "Leviathan" then
			local Position7 = v:GetModelCFrame().Position

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			if GetSpawnPoint(Position7) ~= v88 then
				local Magnitude = (Position7 - Position5).Magnitude

				if (Position7 - Position6).Magnitude <= 10000 and Magnitude < huge then
					huge = Magnitude
					t6 = {
						Name = v.Name,
						Part = v
					}
				end
			end
		end
	end

	return t6
end
CanBypassTeleport = function(p11)
	if not Config.Settings["Bypass Tp"] then
		return false
	end

	local Name = InArea(p11).Name

	if Name == "" then
		return false
	end

	if not Name:find("Dimension") and not Name:find("Submerged") and Name ~= "Sealed Cavern" then
		if not Name:lower():find("under") and LocalPlayer2.Data.LastSpawnPoint.Value ~= "SubmergedIsland" then
			local Character = LocalPlayer2.Character

			if not Character or not Character:FindFirstChild("HumanoidRootPart") then
				return false
			end

			if (Convert_CFrame(p11).Position - Character.HumanoidRootPart.Position).Magnitude <= 8000 then
				return false
			end

			return true
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		end
	end

	return false
end
BypassTP = function(p12)
	if not p12 then
		return
	end

	local v98 = GetClosestArena(p12)

	if not v98 or not v98.Part then
		return
	end

	local Character = LocalPlayer2.Character

	if not Character or not Character:FindFirstChild("HumanoidRootPart") or Character.Humanoid.Health <= 0 then
		return
	end

	Character.LastSpawnPoint.Disabled = true
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetLastSpawnPoint", v98.Name)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")

	local modelCFrame = v98.Part:GetModelCFrame()

	if modelCFrame then
		if tween then
			tween:Cancel()
			tween = nil
		end

		Character:PivotTo(modelCFrame)
		Character.Humanoid:ChangeState(15)
	end
end
getPortal = function(p13)
	if not p13 then
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		return Vector3.new(0, 0, 0)
	end

	local Position5 = Convert_CFrame(p13).Position
	local t7

	if game.PlaceId == 85211729168715 then
		t7 = {
			Vector3.new(-7894.6201171875, 5545.49169921875, -380.24634619140602),
			Vector3.new(-4607.82275390625, 872.54229736328125, -1667.556884765625),
			Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
			Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)
		}
	elseif game.PlaceId == 79091703265657 then
		t7 = {
			Vector3.new(-288.46246337890625, 306.130615234375, 597.99884033203125),
			Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625),
			Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
			Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)
		}
	else
		if game.PlaceId ~= 100117331123089 then
			return Vector3.new(0, 0, 0)
		end

		t7 = {
			Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125),
			Vector3.new(5756.83740234375, 610.42401123046875, -253.92536926269531),
			Vector3.new(-12463.8740234375, 374.91445922851562, -7523.77392578125),
			Vector3.new(28282.5703125, 14896.8505859375, 105.10427093505859),
			Vector3.new(-11993.580078125, 334.78128051757812, -8844.1826171875),
			Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656)
		}
	end

	local vector3 = Vector3.new(0, 0, 0)
	local huge = math.huge

	for _, v in pairs(t7) do
		if (v - Position5).Magnitude < huge then
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			vector3 = v
			huge = (v - Position5).Magnitude
		end
	end

	return vector3
end
getSpawn = function(p14)
	if not p14 or not p14.Position then
		return nil
	end

	local PlayerSpawns = workspace._WorldOrigin:FindFirstChild("PlayerSpawns")

	if not PlayerSpawns then
		return nil
	end

	local v108 = PlayerSpawns:FindFirstChild(tostring(LocalPlayer2.Team))

	if not v108 then
		return nil
	end

	local v109 = tostring(LocalPlayer2.Team) .. "_spawns_get"

	if not t5[v109] or tick() - t5[v109].LastUpdate > 5 then
		t5[v109] = {
			Children = v108:GetChildren(),
			LastUpdate = tick()
		}
	end

	local v110
	local huge = math.huge

	for _, child in pairs(t5[v109].Children) do
		if tostring(child) ~= "Leviathan" then
			local modelCFrame = child:GetModelCFrame()

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			if modelCFrame and (modelCFrame.Position - p14.Position).Magnitude < huge then
				v110 = modelCFrame
				huge = (modelCFrame.Position - p14.Position).Magnitude
			end
		end
	end

	return v110
end
request = function(p15)
	if not p15 then
		return
	end

	game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack({
		"requestEntrance",
		p15
	}))
end
GetDistance = function(p16, p17, p18)
	if p16 == nil then
		return 9e9
	end

	local Character = LocalPlayer2.Character

	if Character then
		if Character:FindFirstChild("Humanoid") and not (Character.Humanoid.Health <= 0) then
			if p17 == nil then
				p17 = Character.HumanoidRootPart
			end

			local v116 = Convert_CFrame(p16)
			local v117 = Convert_CFrame(p17)

			return (Vector3.new(v116.X, p18 and 0 or v116.Y, v116.Z) - Vector3.new(v117.X, p18 and 0 or v117.Y, v117.Z)).Magnitude
		end
	end

	return 9e9
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
end
calcpos = function(p19, p20)
	if p19 and p20 then
		return GetDistance(p19, p20, true)
	end

	return math.huge
end
to = function(p21)
	local Character = LocalPlayer2.Character

	if Character then
		if Character:FindFirstChild("HumanoidRootPart") and Character:FindFirstChild("Humanoid") and not (Character.Humanoid.Health <= 0) then
			local v119 = GetDistance(p21) / Config.Settings["Tween Speed"]

			if tween then
				tween:Cancel()
			end

			Character.LastSpawnPoint.Enabled = true
			Character.Busy.Value = false
			Character.Stun.Value = 0
			tween = TweenService2:Create(Character.HumanoidRootPart, TweenInfo.new(v119, Enum.EasingStyle.Linear), {
				CFrame = p21
			})
			tween:Play()

			return
		end
	end
end
topos = function(p22)
	if not p22 or not LocalPlayer2 or not LocalPlayer2.Character then
		return
	end

	local now = tick()

	if now - n4 < 0.12 then
		return
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	end

	n4 = now

	local Character = LocalPlayer2.Character
	local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

	if not HumanoidRootPart then
		return
	end

	local Humanoid = Character:FindFirstChild("Humanoid")

	for _, descendant in pairs(Character:GetDescendants()) do
		if descendant:IsA("BasePart") then
			descendant.CanCollide = false
		end
	end

	local v126 = Convert_CFrame(p22)

	if Config.Settings["Up Y When Low Health"] and Humanoid and Humanoid.Health * 100 / Humanoid.MaxHealth <= Config.Settings["Value Low Health"] then
		if tween then
			tween:Cancel()
			tween = nil
		end

		HumanoidRootPart.CFrame = CFrame.new(HumanoidRootPart.CFrame.X, v126.Y + 150, HumanoidRootPart.CFrame.Z)

		return
	end

	local Name = InArea(HumanoidRootPart.CFrame).Name
	local Name2 = InArea(v126).Name
	local v129 = GetDistance(v126)

	if Name == "Submerged Island" and Name2 ~= "Submerged Island" then
		if v129 >= 3000 then
			local cFrame = CFrame.new(11427, -2155, 9730)

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			if GetDistance(cFrame) <= 15 then
				task.wait(1)
				game:GetService("ReplicatedStorage").Modules.Net["RF/SubmarineTransportation"]:InvokeServer("InitiateTeleport", "Tiki Outpost")
			else
				to(cFrame)
			end

			return
		end
	end

	if Name2 == "Submerged Island" and Name ~= "Submerged Island" or Name2 == "Sealed Cavern" and Name ~= "Sealed Cavern" then
		local cFrame = CFrame.new(-16270, 25, 1379)

		if GetDistance(cFrame) <= 30 then
			task.wait(1)
			game:GetService("ReplicatedStorage").Modules.Net["RF/SubmarineWorkerSpeak"]:InvokeServer("TravelToSubmergedIsland")
		else
			to(cFrame)
		end

		return
	end

	local v132 = calcpos(HumanoidRootPart.CFrame, p22)
	local v133 = getPortal(p22)

	if Config.Settings["Bypass Tp"] and CanBypassTeleport(v126) then
		BypassTP(v126)

		return
	end

	if v132 and n3 < v132 and calcpos(v133, p22) < v132 then
		return request(v133)
	end

	local tweenSpeed = Config.Settings["Tween Speed"]

	if v132 then
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		if tweenSpeed ~= nil then
			if tween then
				tween:Cancel()
			end

			tween = TweenService2:Create(HumanoidRootPart, TweenInfo.new(v132 / tweenSpeed, Enum.EasingStyle.Linear), {
				CFrame = p22
			})
			tween:Play()
		end
	end

	HumanoidRootPart.CFrame = CFrame.new(HumanoidRootPart.CFrame.X, p22.Y, HumanoidRootPart.CFrame.Z)
end
StopTween = function()
	if tween then
		tween:Cancel()
		tween = nil
	end

	local LocalPlayer3 = game:GetService("Players").LocalPlayer

	if not LocalPlayer3 or not LocalPlayer3.Character then
		return
	end

	local HumanoidRootPart = LocalPlayer3.Character:FindFirstChild("HumanoidRootPart")

	if HumanoidRootPart then
		HumanoidRootPart.CFrame = HumanoidRootPart.CFrame
	end
end
task.spawn(function()
	while task.wait() do
		pcall(function()
			if Config.Main["Start Farm Method"] or Config.Main["Start Farm Matery"] or Config.Main["Start Farm Boss Selected"] or Config.Main["Start Farm All Boss"] or Config.Stack["Quest World 2"] or Config.Stack["Quest World 3"] or Config.Stack["Collect Fruit"] or Config.Stack["Collect Berry"] or Config.Stack["Factory Raid"] or Config.Stack["Pirate Raid"] or Config.Stack["Start Observation"] or Config.Stack["Quest Observation V2"] or Config.Stack["Quest Rainbow Haki"] or Config.Stack["Collect Chest"] or Config.Stack["Start Farm Material"] or Config.Sub["Soul Reaper"] or Config.Sub["Cake Prince"] or Config.Sub["Dough King"] or Config.Sub["Elite Hunter"] or Config.Sub["Touch Pad Haki"] or Config.Sub["rip_indra True Form"] or Config.Sub.Darkbeard or Config.Sub["Tyrant of the Skies"] or Config.RF["Start Raid"] or Config.Shop["Buy Melee"] or Config.LL["Teleport Island"] or Config.LL["Teleport Npc"] or Config.SE["Sea Event"] or Config.RF["Start Dungeon"] or Config.RF["Join Dungeon"] or Config.RF["Start Dungeon Hub"] then
				if not LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					local BodyVelocity = Instance.new("BodyVelocity")

					BodyVelocity.Name = "BodyClip"
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
					BodyVelocity.Parent = LocalPlayer.Character.HumanoidRootPart
					BodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
					BodyVelocity.Velocity = Vector3.new(0, 0, 0)
				end

				if not LocalPlayer.Character:FindFirstChild("highlight") then
					local Highlight = Instance.new("Highlight")

					Highlight.Name = "highlight"
					Highlight.Enabled = true
					Highlight.FillColor = Color3.fromRGB(255, 255, 255)
					Highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
					Highlight.FillTransparency = 0.5
					Highlight.OutlineTransparency = 0.2
					Highlight.Parent = LocalPlayer.Character
				end

				for _, descendant in pairs(LocalPlayer.Character:GetDescendants()) do
					if descendant:IsA("BasePart") then
						descendant.CanCollide = false
					end
				end
			else
				if LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
				end

				if LocalPlayer.Character:FindFirstChild("highlight") then
					LocalPlayer.Character:FindFirstChild("highlight"):Destroy()
				end
			end
		end)
	end
end)

local n5 = 0

AutoHaki = function()
	if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
		local now = tick()
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU

		if now - n5 >= 1 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
			n5 = now
		end
	end
end

local n6 = 0

UnEquipWeapon = function(p23)
	local now = tick()

	if now - n6 >= 0.5 then
		if game.Players.LocalPlayer.Character:FindFirstChild(p23) then
			_G.NotAutoEquip = true
			game.Players.LocalPlayer.Character[p23].Parent = game.Players.LocalPlayer.Backpack
			_G.NotAutoEquip = false
		end

		n6 = now
	end
end

local n7 = 0

EquipWeapon = function(p24)
	local now = tick()

	if now - n7 >= 0.5 then
		if not _G.NotAutoEquip then
			local v147 = game.Players.LocalPlayer.Backpack:FindFirstChild(p24)

			if v147 then
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v147)
			end
		end

		n7 = now
	end
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
end
createEnemySpawns = function()
	local Folder = Instance.new("Folder", workspace)

	Folder.Name = "EnemySpawns"
	processSpawn = function(p25)
		if p25:IsA("Part") or p25:IsA("Model") and p25:FindFirstChild("HumanoidRootPart") then
			local clone = (p25:IsA("Part") and p25 or p25.HumanoidRootPart):Clone()

			clone.Name = p25.Name:gsub("Lv. ", ""):gsub("[%[%]]", ""):gsub("%d+", ""):gsub("%s+", "")
			clone.Parent = Folder
			clone.Anchored = true
			clone.CFrame += Vector3.new(0, 30, 0)
		end
	end

	for _, child in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
		processSpawn(child)
	end

	for _, child in pairs(workspace.Enemies:GetChildren()) do
		processSpawn(child)
	end

	for _, child in pairs(game.ReplicatedStorage:GetChildren()) do
		processSpawn(child)
	end
end
getMobCFrames = function(p26)
	local t8 = {}
	local v157 = p26:gsub("Lv. ", ""):gsub("[%[%]]", ""):gsub("%d+", ""):gsub("%s+", "")

	for _, child in pairs(workspace.EnemySpawns:GetChildren()) do
		if child.Name == v157 then
			table.insert(t8, child.CFrame)
		end
	end

	return t8
end
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
CheckQuestData = function()
	for k in next, require(game.ReplicatedStorage.GuideModule).Data, nil do
		if k == "QuestData" then
			return true
		end
	end

	return false
end
CheckNameDoubleQuest = function()
	if CheckQuestData() then
		for k in next, require(game.ReplicatedStorage.GuideModule).Data.QuestData.Task, nil do
			return k
		end
	end
end
CheckNameDoubleQuest2 = function()
	local t9 = {}

	if CheckQuestData() then
		for k in next, require(game.ReplicatedStorage.GuideModule).Data.QuestData.Task, nil do
			table.insert(t9, k)
		end
	end

	return t9
end
CheckDoubleQuest2 = function()
	local Value = LocalPlayer.Data.Level.Value
	local v165 = Value <= 700
	local v166 = Value >= 700 and Value < 1500
	local nameMonster
	local nameQuest
	local id
	local n8 = 0

	if Value >= 275 and Value < 300 then
		nameQuest = "ColosseumQuest"
		nameMonster = "Toga Warrior"
		id = 1
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	elseif Value >= 1450 and v166 then
		nameQuest = "ForgottenQuest"
		nameMonster = "Water Fighter"
		id = 2
	elseif Value >= 700 and v165 then
		nameQuest = "FountainQuest"
		nameMonster = "Galley Captain"
		id = 2
	else
		for k, v in pairs(require(game.ReplicatedStorage.Quests)) do
			for k2, v2 in pairs(v) do
				for k3 in pairs(v2.Task) do
					if v2.LevelReq <= Value and n8 <= v2.LevelReq and v2.Task[k3] > 1 and not table.find({
						"BartiloQuest",
						"Trainees",
						"MarineQuest",
						"CitizenQuest"
					}, tostring(k)) then
						n8 = v2.LevelReq
						nameQuest = k
						nameMonster = tostring(k3)
						id = k2
					end
				end
			end
		end
	end

	local t10 = {}

	if Value >= 20 then
		for k, v in pairs(require(game.ReplicatedStorage.Quests)) do
			for _, v2 in pairs(v) do
				for k2 in pairs(v2.Task) do
					if tostring(k2) == nameMonster then
						for k3, v3 in next, v, nil do
							for k4, v4 in next, v3.Task, nil do
								if k4 == nameMonster or v4 ~= 1 then
									continue
								end
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU

								local v186 = false

								for _, v5 in {
									game.ReplicatedStorage,
									workspace.Enemies
								}, nil, nil do
									local next_ = next
									local children, v191 = v5:GetChildren()

									for _, v6 in next_, children, v191 do
										if v6.Name == tostring(k4) and v6:FindFirstChild("Humanoid") and v6:FindFirstChild("HumanoidRootPart") and v6.Humanoid.Health > 0 then
											v186 = true

											break
										end
									end

									if v186 then
										break
									end
								end

								if not v186 then
									continue
								end

								t10.NameMonster = v3.LevelReq <= Value and tostring(k4) or nameMonster
								t10.NameQuest = v3.LevelReq <= Value and k or nameQuest
								t10.ID = v3.LevelReq <= Value and k3 or id

								return t10
							end
						end
					end
				end
			end
		end
	end

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	if Value >= 10 and CheckQuestData() then
		if CheckNameDoubleQuest() == nameMonster and #CheckNameDoubleQuest2() > 2 then
			for k, v in pairs(require(game.ReplicatedStorage.Quests)) do
				for _, v2 in pairs(v) do
					for k2 in pairs(v2.Task) do
						if tostring(k2) == nameMonster then
							for k3, v3 in next, v, nil do
								for k4, v4 in next, v3.Task, nil do
									if k4 == nameMonster or not (v4 > 1) then
										continue
									end

									t10.NameMonster = v3.LevelReq <= Value and tostring(k4) or nameMonster
									t10.NameQuest = v3.LevelReq <= Value and k or nameQuest
									t10.ID = v3.LevelReq <= Value and k3 or id

									return t10
								end
							end
						end
					end
				end
			end
		end
	end

	t10.NameMonster = nameMonster
	t10.NameQuest = nameQuest
	t10.ID = id

	return t10
end
CheckQuest = function()
	local v203 = CheckDoubleQuest2()
	local Value = LocalPlayer.Data.Level.Value

	Mon = v203.NameMonster
	NameQuest = v203.NameQuest
	LevelQuest = v203.ID
	NameMon = Mon
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU

	for _, v in next, require(game.ReplicatedStorage.GuideModule).Data.NPCList, nil do
		if typeof(v) == "table" then
			for _, v2 in next, v, nil do
				if v2 == NameQuest then
					CFrameQuest = v.Position and CFrame.new(v.Position) or CFrame.new(0, 0, 0)

					break
				end
			end
		end
	end

	local v209 = getMobCFrames(Mon)

	if #v209 > 0 then
		CFrameMon = v209[math.random(1, #v209)]
	else
		CFrameMon = CFrameQuest * CFrame.new(0, 0, -20) + Vector3.new(0, 30, 0)
	end

	if NameQuest == "SkyExp1Quest" and Value >= 450 then
		CFrameQuest = CFrame.new(-7859.09814453125, 5544.18994140625, -381.47601318359375)
	end

	if Value >= 2600 and Config.Main["Selected Method Farm"] == "Level" and Config.Main["Start Farm Method"] and (CFrameQuest.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
		topos(CFrame.new(-16269.408203125, 23.979995727539062, 1371.662353515625))
		task.wait(1.5)
		game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/SubmarineWorkerSpeak"):InvokeServer(unpack({ "TravelToSubmergedIsland" }))
	end

	return {
		Mon = Mon,
		NameQuest = NameQuest,
		LevelQuest = LevelQuest,
		NameMon = NameMon,
		CFrameQuest = CFrameQuest,
		CFrameMon = CFrameMon
	}
end
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
takeQuest = function()
	local v210 = CheckQuest()

	if not LocalPlayer.PlayerGui.Main.Quest.Visible or not string.find(LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v210.NameMon) then
		topos(v210.CFrameQuest)

		if (LocalPlayer.Character.HumanoidRootPart.Position - v210.CFrameQuest.Position).Magnitude < 20 then
			task.wait(0.3)
			game.ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", v210.NameQuest, v210.LevelQuest)
			task.wait(0.1)
		end
	end
end
task.spawn(function()
	while wait(20) do
		createEnemySpawns()
	end
end)
addCommas = function(p27)
	return (tostring(p27):reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", ""))
end
UpdateTime = function()
	local v211 = math.floor(workspace.DistributedGameTime + 0.5)

	TimeParagraph:SetValue(string.format("%02d:%02d:%02d", math.floor(v211 / 3600) % 24, math.floor(v211 / 60) % 60, v211 % 60))
end
UpdateInfo = function()
	InfoParagraph:SetValue(string.format("[FPS] %d\n[Ping] %s\n[Game] %s\n[Player] %s\n[Executor] %s", workspace:GetRealPhysicsFPS(), Stats.Network.ServerStatsItem["Data Ping"]:GetValueString(), game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name, LocalPlayer.Name, identifyexecutor and identifyexecutor() or "Unknown"))
end
getIslandStatus = function(p28, p29)
	if p28 and p28:FindFirstChild(p29) then
		return "🟢"
	end

	return "🔴"
end
getCakePrinceStatus = function()
	local ok, result = pcall(function()
		return CommF_:InvokeServer("CakePrinceSpawner")
	end)
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU

	if ok and result and type(result) == "string" and string.len(result) >= 86 then
		return "Kill: " .. string.sub(result, 39, 41)
	end

	return "Cake Prince: 🟢"
end
countEyes = function()
	if not workspace.Map then
		return "0/4"
	end

	local TikiOutpost = workspace.Map:FindFirstChild("TikiOutpost")

	if not TikiOutpost then
		return "0/4"
	end

	local IslandModel = TikiOutpost:FindFirstChild("IslandModel")

	if not IslandModel then
		return "0/4"
	end

	local IslandChunks = IslandModel:FindFirstChild("IslandChunks")

	if not IslandChunks then
		return "0/4"
	end

	local E = IslandChunks:FindFirstChild("E")

	if not E then
		return "0/4"
	end

	local n9 = 0

	for _, v in ipairs({
		IslandModel:FindFirstChild("Eye1"),
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		IslandModel:FindFirstChild("Eye2"),
		E:FindFirstChild("Eye3"),
		E:FindFirstChild("Eye4")
	}) do
		if v and v:IsA("BasePart") and v.Transparency == 0 then
			n9 += 1
		end
	end

	return string.format("%d/4", n9)
end
updatePlayerStats = function()
	local Data = LocalPlayer.Data

	Beli:SetValue("Beli: " .. addCommas(Data.Beli.Value))
	Bounty:SetValue("Bounty/Honor: " .. addCommas(LocalPlayer.leaderstats["Bounty/Honor"].Value))
	Fragments:SetValue("Fragments: " .. addCommas(Data.Fragments.Value))

	local Stats2 = Data.Stats

	Melee:SetValue("Melee: " .. Stats2.Melee.Level.Value)
	Defense:SetValue("Defense: " .. Stats2.Defense.Level.Value)
	Sword:SetValue("Sword: " .. Stats2.Sword.Level.Value)
	Gun:SetValue("Gun: " .. Stats2.Gun.Level.Value)
	Fruit:SetValue("Fruit: " .. Stats2["Demon Fruit"].Level.Value)
end
MirageStatus = function()
	return getIslandStatus(workspace.Map, "MysticIsland")
end
KitsuneStatus = function()
	return getIslandStatus(workspace.Map, "KitsuneShrine")
end
PrehistoricStatus = function()
	return getIslandStatus(workspace._WorldOrigin.Locations, "PrehistoricIsland")
end
FrozenStatus = function()
	return getIslandStatus(workspace._WorldOrigin.Locations, "FrozenDimension")
end
Pulllever = function()
	return CommF_:InvokeServer("CheckTempleDoor") and "🟢" or "🔴"
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
end
CheckItems = function(p30)
	local response = CommF_:InvokeServer("getInventory")

	for _, v in pairs(response) do
		if v.Name == p30 then
			return v.Count
		end
	end

	return 0
end
getRaceGrade = function()
	local Character = LocalPlayer.Character
	local Backpack = LocalPlayer.Backpack
	local t11 = {
		"Awakening",
		"Last Resort",
		"Agility",
		"Water Body",
		"Heavenly Blood",
		"Heightened Senses",
		"Energy Core",
		"Primordial Reign"
	}

	if Backpack:FindFirstChild("Awakening") or Character and Character:FindFirstChild("Awakening") then
		return "V4"
	end

	for _, v in ipairs(t11) do
		if Backpack:FindFirstChild(v) then
			return "V3"
		end

		if not Character then
			continue
		end

		if Character:FindFirstChild(v) then
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			return "V3"
		end
	end

	if LocalPlayer.Data.Race:FindFirstChild("Evolved") then
		return "V2"
	end

	return "V1"
end
task.spawn(function()
	while task.wait(1) do
		pcall(UpdateTime)
	end
end)
task.spawn(function()
	while task.wait(1) do
		pcall(UpdateInfo)
	end
end)
task.spawn(function()
	while task.wait(1) do
		pcall(function()
			Mirage:SetValue("Mirage Island " .. MirageStatus())
			Kitsune:SetValue("Kitsune Island " .. KitsuneStatus())
			Prehistoric:SetValue("Prehistoric Island " .. PrehistoricStatus())
			Frozen:SetValue("Frozen Dimension " .. FrozenStatus())
		end)
	end
end)
task.spawn(function()
	while task.wait(1) do
		pcall(function()
			CakePrince:SetValue(getCakePrinceStatus())
		end)
	end
end)
task.spawn(function()
	while task.wait(1) do
		pcall(function()
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			EyesStatus:SetValue("Eyes: " .. countEyes())
		end)
	end
end)
task.spawn(function()
	while task.wait(1) do
		pcall(updatePlayerStats)
	end
end)
task.spawn(function()
	while task.wait(1) do
		pcall(function()
			Race:SetValue("Your race: " .. LocalPlayer.Data.Race.Value .. "\nRace grade: " .. getRaceGrade())
			PullLever:SetValue("Status: " .. Pulllever())
			StatusBone:SetValue("Bones Owned: " .. tostring(CheckItems("Bones")))
		end)
	end
end)
advanceFruitsOnSale = {}
normalFruitsOnSale = {}

for _, v in pairs(CommF_:InvokeServer("GetFruits", true)) do
	if v.OnSale == true then
		table.insert(advanceFruitsOnSale, v.Name .. " - $" .. addCommas(v.Price))
	end
end

for _, v in pairs(CommF_:InvokeServer("GetFruits")) do
	if v.OnSale == true then
		table.insert(normalFruitsOnSale, v.Name .. " - $" .. addCommas(v.Price))
	end
end

Tabs.Status:AddSection("Information")
TimeParagraph = Tabs.Status:CreateParagraph("ExecutorTime", {
	Title = "Game Time",
	Content = "00:00:00"
})
InfoParagraph = Tabs.Status:CreateParagraph("SystemInfo", {
	Title = "System Info",
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Content = "Loading...",
	TitleAlignment = "Middle",
	ContentAlignment = Enum.TextXAlignment.Left
})
Tabs.Status:AddSection("Discord Servers")
Tabs.Status:CreateButton({
	Title = "Copy Discord Link!!",
	Description = "toshiroXzk Hub | Community",
	Callback = function()
		setclipboard("https://discord.gg/SMT26Vajqv")
		lib:Notify({
			Title = "Copied!",
			Content = "Deobf By Realskira",
			Duration = 2
		})
	end
})
Tabs.Status:AddSection("Status Islands")
Mirage = Tabs.Status:CreateParagraph("MirageIsland", {
	Title = "Mirage Island",
	Content = "Status: Loading..."
})
Kitsune = Tabs.Status:CreateParagraph("KitsuneIsland", {
	Title = "Kitsune Island",
	Content = "Status: Loading..."
})
Prehistoric = Tabs.Status:CreateParagraph("PrehistoricIsland", {
	Title = "Prehistoric Island",
	Content = "Status: Loading..."
})
Frozen = Tabs.Status:CreateParagraph("FrozenIsland", {
	Title = "Frozen Dimension",
	Content = "Status: Loading..."
})
Tabs.Status:AddSection("Status Server")
CakePrince = Tabs.Status:CreateParagraph("CakePrince", {
	Title = "Cake Prince Status",
	Content = "Loading..."
})
EyesStatus = Tabs.Status:CreateParagraph("EyesStatus", {
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Title = "Eyes Status",
	Content = "Eyes: 0/4"
})
Tabs.Status:AddSection("Stats Player")
Beli = Tabs.Status:CreateParagraph("Beli", {
	Title = "Beli",
	Content = "Loading..."
})
Bounty = Tabs.Status:CreateParagraph("Bounty", {
	Title = "Bounty / Honor",
	Content = "Loading..."
})
Fragments = Tabs.Status:CreateParagraph("Fragments", {
	Title = "Fragments",
	Content = "Loading..."
})
PullLever = Tabs.Status:CreateParagraph("PullLever", {
	Title = "Pull Lever",
	Content = "Status: Loading..."
})
Race = Tabs.Status:CreateParagraph("Race", {
	Title = "Race",
	Content = "Loading race information..."
})
StatusBone = Tabs.Status:CreateParagraph("BoneStatus", {
	Title = "Bone",
	Content = "Loading..."
})
Melee = Tabs.Status:CreateParagraph("MeleeLevel", {
	Title = "Melee",
	Content = "Melee: Loading..."
})
Defense = Tabs.Status:CreateParagraph("DefenseLevel", {
	Title = "Defense",
	Content = "Defense: Loading..."
})
Sword = Tabs.Status:CreateParagraph("SwordLevel", {
	Title = "Sword",
	Content = "Sword: Loading..."
})
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
Gun = Tabs.Status:CreateParagraph("GunLevel", {
	Title = "Gun",
	Content = "Gun: Loading..."
})
Fruit = Tabs.Status:CreateParagraph("DemonFruitLevel", {
	Title = "Demon Fruit",
	Content = "Fruit: Loading..."
})
Tabs.Status:AddSection("Stock Devil Fruit")
AdvanceFruitParagraph = Tabs.Status:CreateParagraph("AdvanceFruitStock", {
	Title = "Advance Fruit Stock",
	Content = #advanceFruitsOnSale > 0 and table.concat(advanceFruitsOnSale, "\n") or "No Advance Fruits on Sale",
	TitleAlignment = "Middle",
	ContentAlignment = Enum.TextXAlignment.Center
})
NormalFruitParagraph = Tabs.Status:CreateParagraph("NormalFruitStock", {
	Title = "Normal Fruit Stock",
	Content = #normalFruitsOnSale > 0 and table.concat(normalFruitsOnSale, "\n") or "No Normal Fruits on Sale",
	TitleAlignment = "Middle",
	ContentAlignment = Enum.TextXAlignment.Center
})
Tabs.Main:AddSection("Farm Mode Section")
MethodFarm = {
	"Level",
	"Nearest",
	"Bone",
	"Cake",
	"Tiki"
}
ChooseMode = Tabs.Main:CreateDropdown("ChooseMode", {
	Title = "Choose Method Farm",
	Values = MethodFarm,
	Multi = false,
	Default = Config.Main["Selected Method Farm"]
})
ChooseMode:OnChanged(function(p31)
	Config.Main["Selected Method Farm"] = p31
	SaveSetting()
end)
Tabs.Main:CreateSlider("Slider", {
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Title = "Distance Nearest",
	Description = "",
	Default = Config.Main["Distance Nearest"],
	Min = 0,
	Max = 5000,
	Rounding = 1,
	Callback = function(p32)
		Config.Main["Distance Nearest"] = p32
		SaveSetting()
	end
})
AQuest = Tabs.Main:CreateToggle("QuestA", {
	Title = "Accept Quest",
	Description = "[ Bone / Cake / Tiki ]",
	Default = Config.Main["Accept Quest"]
})
AQuest:OnChanged(function(p33)
	Config.Main["Accept Quest"] = p33
	SaveSetting()
end)
FarmMethod = Tabs.Main:CreateToggle("StartFarmToggle", {
	Title = "Start Farm",
	Description = "Start Farm Method Select",
	Default = Config.Main["Start Farm Method"]
})
FarmMethod:OnChanged(function(p34)
	Config.Main["Start Farm Method"] = p34
	SaveSetting()
	StopTween(Config.Main["Start Farm Method"])
end)
Tabs.Main:AddSection("Mastery Mode Section")
MarteryMethod = {
	"Fruit",
	"Gun"
}
ChooseMode = Tabs.Main:CreateDropdown("ChooseMode", {
	Title = "Choose Method Matery",
	Values = MarteryMethod,
	Multi = false,
	Default = Config.Main["Selected Method Mastery"]
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
})
ChooseMode:OnChanged(function(p35)
	Config.Main["Selected Method Mastery"] = p35
	SaveSetting()
end)
Matery = Tabs.Main:CreateToggle("StartFarmToggle", {
	Title = "Start Farm Matery",
	Description = "Start Matery Method Select",
	Default = Config.Main["Start Farm Matery"]
})
Matery:OnChanged(function(p36)
	Config.Main["Start Farm Matery"] = p36
	SaveSetting()
	StopTween(Config.Main["Start Farm Matery"])

	if p36 then
		lib:Notify({
			Title = "No Function",
			Content = "pls wait Soon",
			Duration = 5
		})
	end
end)
Tabs.Main:AddSection("Boss Section")
BossS = Tabs.Main:CreateParagraph("Paragraph", {
	Title = "Boss Status :",
	Content = "Select a boss to see status!"
})
getBosses = function()
	local t12 = {}

	for _, v in {
		workspace.Enemies,
		game.ReplicatedStorage
	}, nil, nil do
		local next_ = next
		local children, v240 = v:GetChildren()

		for _, v2 in next_, children, v240 do
			if not table.find(t12, v2.Name) and v2:GetAttribute("IsBoss") and v2:IsA("Model") then
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
				if not v.Name:find("Terror") then
					table.insert(t12, v2.Name)
				end
			end
		end
	end

	return t12
end
SelectBoss = Tabs.Main:CreateDropdown("Select Boss", {
	Title = "Choose Target Boss",
	Values = getBosses(),
	Multi = false,
	Default = Config.Main["Selected Boss"]
})
SelectBoss:OnChanged(function(p37)
	Config.Main["Selected Boss"] = p37
	SaveSetting()
end)
Tabs.Main:CreateButton({
	Title = "Refresh Boss",
	Description = "Refresh Boss List",
	Callback = function()
		SelectBoss:SetValues(getBosses())
		lib:Notify({
			Title = "System",
			Content = "Bosss list refreshed!",
			Duration = 3
		})
	end
})
Boss = Tabs.Main:CreateToggle("Boss", {
	Title = "Start Farm Boss",
	Description = "Auto Farm Boss Select",
	Default = Config.Main["Start Farm Boss Selected"]
})
Boss:OnChanged(function(p38)
	Config.Main["Start Farm Boss Selected"] = p38
	SaveSetting()
	StopTween(Config.Main["Start Farm Boss Selected"])
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
end)
AllBoss = Tabs.Main:CreateToggle("AllBoss", {
	Title = "Start Farn All Boss",
	Description = "Auto Farm All Boss",
	Default = Config.Main["Start Farm All Boss"]
})
AllBoss:OnChanged(function(p39)
	Config.Main["Start Farm All Boss"] = p39
	SaveSetting()
	StopTween(Config.Main["Start Farm All Boss"])
end)

local t13 = {
	Bone = {
		"Reborn Skeleton",
		"Living Zombie",
		"Demonic Soul",
		"Posessed Mummy"
	},
	Cake = {
		"Cookie Crafter",
		"Cake Guard",
		"Baking Staff",
		"Head Baker"
	},
	Tiki = {
		"Island Boy",
		"Isle Outlaw",
		"Isle Champion",
		"Serpent Hunter",
		"Skull Slayer",
		"Sun-kissed Warrior"
	}
}

IsAlive = function(p40)
	return p40 and not p40:FindFirstChild("VehicleSeat") and p40:FindFirstChild("Humanoid") and p40.Humanoid.Health > 0 and p40:FindFirstChild("HumanoidRootPart")
end
GetEnemies = function(p41)
	local Enemies = game:GetService("Workspace").Enemies
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	local LocalPlayer3 = game:GetService("Players").LocalPlayer
	local huge = math.huge
	local v247

	for _, child in pairs(Enemies:GetChildren()) do
		if table.find(p41, child.Name) then
			local Humanoid = child:FindFirstChild("Humanoid")
			local HumanoidRootPart = child:FindFirstChild("HumanoidRootPart")
			local HumanoidRootPart2 = LocalPlayer3.Character and LocalPlayer3.Character:FindFirstChild("HumanoidRootPart")

			if Humanoid and Humanoid.Health > 0 and HumanoidRootPart and HumanoidRootPart2 then
				local Magnitude = (HumanoidRootPart2.Position - HumanoidRootPart.Position).Magnitude

				if Magnitude <= huge then
					huge = Magnitude
					v247 = child
				end
			end
		end
	end

	return v247
end
task.spawn(function()
	while wait(0.1) do
		if Config.Main["Selected Method Farm"] == "Level" and Config.Main["Start Farm Method"] then
			pcall(function()
				local v254 = CheckQuest()
				local Text = LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text

				if not string.find(Text, v254.NameMon) then
					game.ReplicatedStorage.Remotes.CommF_:InvokeServer("AbandonQuest")
				end

				if LocalPlayer.PlayerGui.Main.Quest.Visible then
					local v256 = getMobCFrames(v254.Mon)
					local v257

					for _, child in pairs(workspace.Enemies:GetChildren()) do
						if child.Name == v254.Mon and child:FindFirstChild("HumanoidRootPart") and child:FindFirstChild("Humanoid") and child.Humanoid.Health > 0 then
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
							v257 = child

							break
						end
					end

					if v257 and string.find(Text, v254.NameMon) then
						repeat
							game:GetService("RunService").Heartbeat:Wait()
							EquipWeapon(Config.Settings.Weapon)
							AutoHaki()
							PosMon = v257.HumanoidRootPart.CFrame
							topos(v257.HumanoidRootPart.CFrame * Pos)
							v257.HumanoidRootPart.CanCollide = false
							v257.Humanoid.WalkSpeed = 0

							if v257:FindFirstChild("Head") then
								v257.Head.CanCollide = false
							end

							v257.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
							Attack()
						until not Config.Main["Start Farm Method"] or v257.Humanoid.Health <= 0 or not v257.Parent or not LocalPlayer.PlayerGui.Main.Quest.Visible
					elseif #v256 > 0 then
						task.wait(0.5)
						topos(v256[math.random(1, #v256)])
					else
						topos(v254.CFrameMon)
					end
				else
					topos(v254.CFrameQuest)

					if (LocalPlayer.Character.HumanoidRootPart.Position - v254.CFrameQuest.Position).Magnitude <= 20 then
						if Config.Settings["Delay Quest Acquisition"] then
							local v260 = math.random(1, 2)

							wait(v260)
						end

						game.ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", v254.NameQuest, v254.LevelQuest)
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
					end
				end
			end)
		else
			if Config.Main["Selected Method Farm"] == "Nearest" then
				if Config.Main["Start Farm Method"] then
					pcall(function()
						local Character = game:GetService("Players").LocalPlayer.Character
						local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")

						if not Character or not HumanoidRootPart then
							return
						end

						if not workspace:FindFirstChild("Enemies") then
							return
						end

						for _, child in pairs(workspace.Enemies:GetChildren()) do
							if child:FindFirstChild("Humanoid") and child:FindFirstChild("HumanoidRootPart") and child.Humanoid.Health > 0 and (HumanoidRootPart.Position - child.HumanoidRootPart.Position).Magnitude <= Config.Main["Distance Nearest"] then
								while true do
									game:GetService("RunService").Heartbeat:wait()
									AutoHaki()
									EquipWeapon(Config.Settings.Weapon)
									topos(child.HumanoidRootPart.CFrame * Pos)
									child.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
									child.HumanoidRootPart.Transparency = 1
									child.Humanoid.JumpPower = 0
									child.Humanoid.WalkSpeed = 0
									child.HumanoidRootPart.CanCollide = false
									PosMon = child.HumanoidRootPart.CFrame
									MonFarm = child.Name
									Attack()

									if not Config.Main["Start Farm Method"] then
										break
									end

									if child.Parent and not (child.Humanoid.Health <= 0) then
										if workspace.Enemies:FindFirstChild(child.Name) then
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
											continue
										end
									end

									break
								end
							end
						end
					end)

					continue
				end
			end

			if Config.Main["Selected Method Farm"] == "Bone" then
				if Config.Main["Start Farm Method"] then
					local cFrame = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)

					pcall(function()
						if Config.Main["Accept Quest"] then
							if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible and not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
								task.wait(0.5)
							end

							if not game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
								topos(cFrame)

								if (cFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
									if Config.Settings["Delay Quest Acquisition"] then
										task.wait(math.random(1, 2))
									end

									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest2", 1)
								end
							elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
								if GetEnemies(t13.Bone, true) then
									local v266 = GetEnemies(t13.Bone, true)

									if IsAlive(v266) and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
										while true do
											task.wait()
											AutoHaki()
											EquipWeapon(Config.Settings.Weapon)
											PosMon = v266.HumanoidRootPart.CFrame
											MonFarm = v266.Name
											topos(v266.HumanoidRootPart.CFrame * Pos)
											Attack()

											if Config.Main["Selected Method Farm"] ~= "Bone" then
												break
											elseif not IsAlive(v266) or Config.Main["Start Farm Method"] == false then
												break
											end
										end
									end
								else
									topos(cFrame)
								end
							end
						elseif GetEnemies(t13.Bone, true) then
							local v267 = GetEnemies(t13.Bone, true)

							if IsAlive(v267) then
								while true do
									task.wait()
									AutoHaki()
									EquipWeapon(Config.Settings.Weapon)
									PosMon = v267.HumanoidRootPart.CFrame
									MonFarm = v267.Name
									topos(v267.HumanoidRootPart.CFrame * Pos)
									Attack()

									if Config.Main["Selected Method Farm"] ~= "Bone" then
										break
									elseif not IsAlive(v267) or Config.Main["Start Farm Method"] == false then
										break
									end
								end
							end
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
						else
							topos(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375))
						end
					end)

					continue
				end
			end

			if Config.Main["Selected Method Farm"] == "Cake" and Config.Main["Start Farm Method"] then
				if not workspace.Enemies:FindFirstChild("Cake Prince") then
					local cFrame = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)

					pcall(function()
						if Config.Main["Accept Quest"] then
							if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible and not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Cake Guard") then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
								task.wait(0.5)
							end

							if not game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
								topos(cFrame)

								if (cFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
									if Config.Settings["Delay Quest Acquisition"] then
										task.wait(math.random(1, 2))
									end

									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CakeQuest1", 2)
								end
							elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
								if GetEnemies(t13.Cake, true) then
									local v269 = GetEnemies(t13.Cake, true)

									if IsAlive(v269) and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Cake Guard") then
										while true do
											task.wait()
											AutoHaki()
											EquipWeapon(Config.Settings.Weapon)
											PosMon = v269.HumanoidRootPart.CFrame
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
											MonFarm = v269.Name
											topos(v269.HumanoidRootPart.CFrame * Pos)
											Attack()

											if Config.Main["Selected Method Farm"] ~= "Cake" then
												break
											elseif not IsAlive(v269) or Config.Main["Start Farm Method"] == false then
												break
											end
										end
									end
								else
									topos(cFrame)
								end
							end
						elseif GetEnemies(t13.Cake, true) then
							local v270 = GetEnemies(t13.Cake, true)

							if IsAlive(v270) then
								while true do
									task.wait()
									AutoHaki()
									EquipWeapon(Config.Settings.Weapon)
									PosMon = v270.HumanoidRootPart.CFrame
									MonFarm = v270.Name
									topos(v270.HumanoidRootPart.CFrame * Pos)
									Attack()

									if Config.Main["Selected Method Farm"] ~= "Cake" then
										break
									elseif not IsAlive(v270) or Config.Main["Start Farm Method"] == false then
										break
									end
								end
							end
						else
							topos(CFrame.new(-2094.305908203125, 70.032310485839844, -12129.0302734375))
						end
					end)

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
					continue
				end
			end

			if Config.Main["Selected Method Farm"] == "Tiki" and Config.Main["Start Farm Method"] then
				local cFrame = CFrame.new(-16669.755859375, 105.30571746826172, 1577.952880859375)

				pcall(function()
					if Config.Main["Accept Quest"] then
						if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
							if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Skull Slayer") then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
								task.wait(0.5)
							end
						end

						if not game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
							topos(cFrame)

							if (cFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
								if Config.Settings["Delay Quest Acquisition"] then
									task.wait(math.random(1, 2))
								end

								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "TikiQuest3", 2)
							end
						elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
							if GetEnemies(t13.Tiki, true) then
								local v272 = GetEnemies(t13.Tiki, true)

								if IsAlive(v272) and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Skull Slayer") then
									while true do
										task.wait()
										AutoHaki()
										EquipWeapon(Config.Settings.Weapon)
										PosMon = v272.HumanoidRootPart.CFrame
										MonFarm = v272.Name
										topos(v272.HumanoidRootPart.CFrame * Pos)
										Attack()

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
										if Config.Main["Selected Method Farm"] ~= "Tiki" then
											break
										elseif not IsAlive(v272) or Config.Main["Start Farm Method"] == false then
											break
										end
									end
								end
							else
								topos(cFrame)
							end
						end
					elseif GetEnemies(t13.Tiki, true) then
						local v273 = GetEnemies(t13.Tiki, true)

						if IsAlive(v273) then
							while true do
								task.wait()
								AutoHaki()
								EquipWeapon(Config.Settings.Weapon)
								PosMon = v273.HumanoidRootPart.CFrame
								MonFarm = v273.Name
								topos(v273.HumanoidRootPart.CFrame * Pos)
								Attack()

								if Config.Main["Selected Method Farm"] ~= "Tiki" then
									break
								elseif not IsAlive(v273) or Config.Main["Start Farm Method"] == false then
									break
								end
							end
						end
					else
						topos(CFrame.new(-16194.0048828125, 155.21844482421875, 1420.719970703125))
					end
				end)
			end
		end
	end
end)
KillBoss = function(p42)
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	local v274 = workspace.Enemies:FindFirstChild(p42)

	if v274 and v274:FindFirstChild("Humanoid") and v274:FindFirstChild("HumanoidRootPart") and v274.Humanoid.Health > 0 then
		for _, child in pairs(workspace.Enemies:GetChildren()) do
			if child.Name == v274.Name and child:FindFirstChild("Humanoid") and child:FindFirstChild("HumanoidRootPart") and child.Humanoid.Health > 0 then
				while true do
					task.wait()
					AutoHaki()
					EquipWeapon(Config.Settings.Weapon)
					child.HumanoidRootPart.CanCollide = false
					child.Humanoid.WalkSpeed = 0
					topos(child.HumanoidRootPart.CFrame * Pos)
					pcall(function()
						local LocalPlayer3 = Players.LocalPlayer

						LocalPlayer3.MaximumSimulationRadius = math.huge
						sethiddenproperty(LocalPlayer3, "SimulationRadius", math.huge)
					end)

					if not child then
						break
					elseif not child.Parent or child.Humanoid.Health <= 0 or not Players.LocalPlayer.Character then
						break
					end
				end
			end
		end
	else
		local v278 = game.ReplicatedStorage:FindFirstChild(p42)

		if v278 then
			topos(v278.HumanoidRootPart.CFrame * Pos)
		end
	end
end
task.spawn(function()
	while task.wait(0.5) do
		if Config.Main["Selected Boss"] then
			BossS:SetValue("Selected Boss: " .. Config.Main["Selected Boss"] .. "\nStatus: " .. ((game:GetService("ReplicatedStorage"):FindFirstChild(Config.Main["Selected Boss"]) or game:GetService("Workspace").Enemies:FindFirstChild(Config.Main["Selected Boss"])) and "🟢" or "🔴"))
		else
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			BossS:SetValue("No boss selected!")
		end
	end
end)
task.spawn(function()
	while task.wait(0.1) do
		if Config.Main["Start Farm Boss Selected"] then
			pcall(function()
				local Quests, v280 = require(game.ReplicatedStorage.Quests)

				for k, v in next, Quests, v280 do
					for k2, v2 in next, v, nil do
						for k3, v3 in pairs(v2) do
							if k3 == "Name" and v3 == Config.Main["Selected Boss"] then
								if not game.ReplicatedStorage:FindFirstChild(Config.Main["Selected Boss"]) then
									if not workspace.Enemies:FindFirstChild(Config.Main["Selected Boss"]) then
										continue
									end
								end

								game.ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", k, k2)
								task.wait(1)
							end
						end
					end
				end

				KillBoss(Config.Main["Selected Boss"])
			end)
		elseif Config.Main["Start Farm All Boss"] then
			pcall(function()
				local v287 = false
				local exitTo
				local v289

				for _, v in pairs(getBosses()) do
					local v292 = game.Workspace.Enemies:FindFirstChild(v)

					if v292 and v292:FindFirstChild("Humanoid") and v292:FindFirstChild("HumanoidRootPart") and v292.Humanoid.Health > 0 then
						v289 = v
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
						exitTo = 1

						break
					end
				end

				local v293

				if exitTo == 1 then
					v287 = true

					local next_ = next
					local Quests, v296 = require(game.ReplicatedStorage.Quests)

					for k, v in next_, Quests, v296 do
						for k2, v2 in next, v, nil do
							for k3, v3 in pairs(v2) do
								if k3 == "Name" and v3 == v289 then
									if not game.ReplicatedStorage:FindFirstChild(v289) then
										if not workspace.Enemies:FindFirstChild(v289) then
											continue
										end
									end

									game.ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", k, k2)
									task.wait(1)
								end
							end
						end
					end

					KillBoss(v289)

					if not v287 then
						for _, v in pairs(getBosses()) do
							v293 = game.ReplicatedStorage:FindFirstChild(v)

							if v293 and v293:FindFirstChild("HumanoidRootPart") then
								topos(v293.HumanoidRootPart.CFrame * Pos)

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
								break
							end
						end
					end
				elseif not v287 then
					for _, v in pairs(getBosses()) do
						v293 = game.ReplicatedStorage:FindFirstChild(v)

						if v293 and v293:FindFirstChild("HumanoidRootPart") then
							topos(v293.HumanoidRootPart.CFrame * Pos)

							break
						end
					end
				end
			end)
		end
	end
end)
Tabs.Stack:AddSection("Quest Sea Section")
Stack = Tabs.Stack:CreateToggle("Stack", {
	Title = "Quest Sea 2",
	Description = "Auto Quest Teleport To World 2",
	Default = Config.Stack["Quest World 2"]
})
Stack:OnChanged(function(p43)
	Config.Stack["Quest World 2"] = p43
	StopTween(Config.Stack["Quest World 2"])
	SaveSetting()

	if p43 then
		lib:Notify({
			Title = "No Function",
			Content = "pls wait Soon",
			Duration = 5
		})
	end
end)
Stack = Tabs.Stack:CreateToggle("Stack", {
	Title = "Quest Sea 3",
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Description = "Auto Quest Teleport To World 3",
	Default = Config.Stack["Quest World 3"]
})
Stack:OnChanged(function(p44)
	Config.Stack["Quest World 3"] = p44
	StopTween(Config.Stack["Quest World 3"])
	SaveSetting()

	if p44 then
		lib:Notify({
			Title = "No Function",
			Content = "pls wait Soon",
			Duration = 5
		})
	end
end)
Tabs.Stack:AddSection("Collect Section")
Stack = Tabs.Stack:CreateToggle("Stack", {
	Title = "Collect To Fruit",
	Description = "Auto Teleport To Devil Fruit",
	Default = Config.Stack["Collect Fruit"]
})
Stack:OnChanged(function(p45)
	Config.Stack["Collect Fruit"] = p45
	StopTween(Config.Stack["Collect Fruit"])
	SaveSetting()
end)
Stack = Tabs.Stack:CreateToggle("Stack", {
	Title = "Collect To Berries",
	Description = "Auto Teleport To Berry",
	Default = Config.Stack["Collect Berry"]
})
Stack:OnChanged(function(p46)
	Config.Stack["Collect Berry"] = p46
	StopTween(Config.Stack["Collect Berry"])
	SaveSetting()
end)
Stack = Tabs.Stack:CreateToggle("Stack", {
	Title = "Fruit / Berries [ Hop Server ]",
	Description = "Hop Server if not have Devil Fruit / Berries in Server",
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Default = Config.Stack["Hop Server Collect"]
})
Stack:OnChanged(function(p47)
	Config.Stack["Hop Server Collect"] = p47
	SaveSetting()
end)
getFruits = function()
	for _, child in pairs(workspace:GetChildren()) do
		if not string.find(child.Name, "Fruit") then
			continue
		end

		if not child:IsA("Tool") and not child:IsA("Model") then
			continue
		end

		if child.Name == "Fruit" then
			continue
		end

		return child
	end

	return nil
end
GetBerries = function()
	local tagged = game:GetService("CollectionService"):GetTagged("BerryBush")
	local huge = math.huge
	local v311

	for i = 1, #tagged do
		local next_ = next
		local attributes, v315 = tagged[i]:GetAttributes()

		for _, v in next_, attributes, v315 do
			if table.find({
				"Blue Icicle Berry",
				"Green Toad Berry",
				"Orange Berry",
				"Pink Pig Berry",
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
				"Purple Jelly Berry",
				"Red Cherry Berry",
				"White Cloud Berry",
				"Yellow Star Berry"
			}, v) then
				local Magnitude = (tagged[i].Parent:GetPivot().Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

				if Magnitude <= huge then
					huge = Magnitude
					v311 = tagged[i]
				end
			end
		end
	end

	return v311
end
task.spawn(function()
	while task.wait(0.5) do
		if Config.Stack["Collect Fruit"] then
			pcall(function()
				local v319 = getFruits()

				if v319 and v319:FindFirstChild("Handle") then
					topos(v319.Handle.CFrame)
				elseif Config.Stack["Hop Server Collect"] then
					hopServer()
				end
			end)
		elseif Config.Stack["Collect Berry"] then
			pcall(function()
				local v320 = GetBerries()

				if v320 then
					local Model = v320:FindFirstChildOfClass("Model")

					if Model then
						local pivot = Model:GetPivot() or v320.Parent:GetPivot()

						if GetDistance(pivot.Position) <= 15 then
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
							if Model:FindFirstChildOfClass("ProximityPrompt") then
								fireproximityprompt(Model:FindFirstChildOfClass("ProximityPrompt"))
							end
						else
							topos(pivot)
						end
					end
				elseif Config.Stack["Hop Server Collect"] then
					hopServer()
				end
			end)
		end
	end
end)
Tabs.Stack:AddSection("Raid Event Section")
Stack = Tabs.Stack:CreateToggle("Stack", {
	Title = "Factory Raid",
	Description = "Auto Farm Factory Raid",
	Default = Config.Stack["Factory Raid"]
})
Stack:OnChanged(function(p48)
	Config.Stack["Factory Raid"] = p48
	StopTween(Config.Stack["Factory Raid"])
	SaveSetting()

	if p48 then
		lib:Notify({
			Title = "No Function",
			Content = "pls wait Soon",
			Duration = 5
		})
	end
end)
Stack = Tabs.Stack:CreateToggle("Stack", {
	Title = "Pirate Raid",
	Description = "Auto Farm Pirate Raid",
	Default = Config.Stack["Pirate Raid"]
})
Stack:OnChanged(function(p49)
	Config.Stack["Pirate Raid"] = p49
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	StopTween(Config.Stack["Pirate Raid"])
	SaveSetting()

	if p49 then
		lib:Notify({
			Title = "No Function",
			Content = "pls wait Soon",
			Duration = 5
		})
	end
end)
Tabs.Stack:AddSection("Observation Section")
ObservationRange = Tabs.Stack:CreateParagraph("Stack", {
	Title = "Observation Level",
	Content = ""
})
task.spawn(function()
	local Value = game:GetService("Players").LocalPlayer.VisionRadius.Value

	while task.wait(1) do
		pcall(function()
			local Value2 = game:GetService("Players").LocalPlayer.VisionRadius.Value

			if Value2 ~= Value then
				ObservationRange:SetValue("Observation Range Level: " .. math.floor(Value2))
				Value = Value2
			end
		end)
	end
end)
StackToggle1 = Tabs.Stack:CreateToggle("Stack", {
	Title = "Start Observation",
	Description = "Auto Farm Observation",
	Default = Config.Stack["Start Observation"]
})
StackToggle1:OnChanged(function(p50)
	Config.Stack["Start Observation"] = p50
	StopTween(Config.Stack["Start Observation"])
	SaveSetting()

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	if p50 then
		lib:Notify({
			Title = "No Function",
			Content = "pls wait Soon",
			Duration = 5
		})
	end
end)
StackToggle2 = Tabs.Stack:CreateToggle("Stack", {
	Title = "Quest Observation V2",
	Description = "Auto Start Quest Observation V2",
	Default = Config.Stack["Quest Observation V2"]
})
StackToggle2:OnChanged(function(p51)
	Config.Stack["Quest Observation V2"] = p51
	StopTween(Config.Stack["Quest Observation V2"])
	SaveSetting()

	if p51 then
		lib:Notify({
			Title = "No Function",
			Content = "pls wait Soon",
			Duration = 5
		})
	end
end)
StackToggle3 = Tabs.Stack:CreateToggle("Stack", {
	Title = "Observation [Hop Server]",
	Description = "Hop Server if farm Observation",
	Default = Config.Stack["Observation [Hop Server]"]
})
StackToggle3:OnChanged(function(p52)
	Config.Stack["Observation [Hop Server]"] = p52
	SaveSetting()

	if p52 then
		lib:Notify({
			Title = "No Function",
			Content = "pls wait Soon",
			Duration = 5
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		})
	end
end)
Tabs.Stack:AddSection("Rainbow Haki Section")
StackToggle4 = Tabs.Stack:CreateToggle("Stack", {
	Title = "Quest Rainbow Haki",
	Description = "Auto Start Quest Rainbow Haki",
	Default = Config.Stack["Quest Rainbow Haki"]
})
StackToggle4:OnChanged(function(p53)
	Config.Stack["Quest Rainbow Haki"] = p53
	StopTween(Config.Stack["Quest Rainbow Haki"])
	SaveSetting()
end)
StackToggle5 = Tabs.Stack:CreateToggle("Stack", {
	Title = "Rainbow Haki [ Hop Server ]",
	Description = "Hop Server if farm Rainbow Haki",
	Default = Config.Stack["Rainbow Haki [ Hop Server ]"]
})
StackToggle5:OnChanged(function(p54)
	Config.Stack["Rainbow Haki [ Hop Server ]"] = p54
	SaveSetting()
end)
CheckNameBoss = function(p55)
	local children, v326 = game.ReplicatedStorage:GetChildren()

	for _, v in next, children, v326 do
		if not v:IsA("Model") then
			continue
		end

		if (typeof(p55) ~= "table" or not table.find(p55, v.Name)) and v.Name ~= p55 then
			continue
		end

		if not v:FindFirstChild("Humanoid") then
			continue
		end

		if v.Humanoid.Health > 0 then
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			return v
		end
	end

	local children2, v330 = game.Workspace.Enemies:GetChildren()

	for _, v in next, children2, v330 do
		if v:IsA("Model") and (typeof(p55) == "table" and table.find(p55, v.Name) or v.Name == p55) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
			return v
		end
	end
end
task.spawn(function()
	while task.wait(0.75) do
		if Config.Stack["Quest Rainbow Haki"] then
			pcall(function()
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
					local ok2 = not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible

					if not ok2 then
						ok2 = not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone")
					end

					if ok2 then
						local ok = not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible

						if not ok then
							ok = not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Hydra Leader")
						end

						if ok then
							if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
								if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
										if CheckNameBoss("Beautiful Pirate") then
											KillBoss("Beautiful Pirate")
										elseif Config.Stack["Rainbow Haki [ Hop Server ]"] then
											hopServer()
										end

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
										if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
											wait(1.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet")
										end
									end
								elseif CheckNameBoss("Captain Elephant") then
									KillBoss("Captain Elephant")
								elseif Config.Stack["Rainbow Haki [ Hop Server ]"] then
									hopServer()
								end
							elseif CheckNameBoss("Kilo Admiral") then
								KillBoss("Kilo Admiral")
							elseif Config.Stack["Rainbow Haki [ Hop Server ]"] then
								hopServer()
							end
						elseif CheckNameBoss("Hydra Leader") then
							KillBoss("Hydra Leader")
						elseif Config.Stack["Rainbow Haki [ Hop Server ]"] then
							hopServer()
						end
					elseif CheckNameBoss("Stone") then
						KillBoss("Stone")
					elseif Config.Stack["Rainbow Haki [ Hop Server ]"] then
						hopServer()
					end
				else
					topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))

					if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
						wait(1.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet")
					end
				end
			end)
		end
	end
end)
Tabs.Stack:AddSection("Chest Section")

local n10 = 0
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
local u336 = false

Tabs.Stack:CreateSlider("Slider", {
	Title = "Setting Value Chest Collect",
	Description = "Setting Chest For Hop Server",
	Default = Config.Stack["Chest Value Setting"],
	Min = 10,
	Max = 100,
	Rounding = 1,
	Callback = function(p56)
		Config.Stack["Chest Value Setting"] = p56
		SaveSetting()
	end
})
Tabs.Stack:CreateButton({
	Title = "Reset Chest Counter",
	Description = "Reset collected chest count to 0",
	Callback = function()
		n10 = 0
	end
})

local Stack_ = Tabs.Stack:CreateToggle("Stack", {
	Title = "Collect Chest For Value",
	Description = "Auto Collect Chest For Value in Slider",
	Default = Config.Stack["Collect Chest"]
})

Stack_:OnChanged(function(p57)
	Config.Stack["Collect Chest"] = p57
	SaveSetting()

	if p57 then
		u336 = true
	else
		StopTween()
		u336 = false
	end
end)

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
local Stack_2 = Tabs.Stack:CreateToggle("Stack", {
	Title = "Chest [ Hop Server ]",
	Description = "Hop Server if collect chest",
	Default = Config.Stack["Chest [ Hop Server ]"]
})

Stack_2:OnChanged(function(p58)
	Config.Stack["Chest [ Hop Server ]"] = p58
	SaveSetting()
end)
GetChest = function()
	if LocalPlayer and LocalPlayer.Character then
		if LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
			local v339
			local huge = math.huge
			local Position5 = LocalPlayer.Character.HumanoidRootPart.Position
			local tagged = game:GetService("CollectionService"):GetTagged("_ChestTagged")

			for _, v in ipairs(tagged) do
				if v and v.Parent and v:FindFirstChild("TouchInterest") and not v:GetAttribute("IsDisabled") then
					local Magnitude = (v:GetPivot().Position - Position5).Magnitude

					if Magnitude < huge then
						huge = Magnitude
						v339 = v
					end
				end
			end

			return v339, huge
		end
	end

	return nil, math.huge
end
task.spawn(function()
	while task.wait(0.1) do
		if Config.Stack["Collect Chest"] and u336 then
			local v346, v347 = GetChest()

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			if v346 then
				pcall(function()
					topos(v346:GetPivot())
				end)

				if v347 then
					if v347 <= 15 then
						pcall(function()
							firetouchinterest(v346, LocalPlayer.Character.HumanoidRootPart, 0)
							task.wait(0.05)
							firetouchinterest(v346, LocalPlayer.Character.HumanoidRootPart, 1)
						end)
						task.wait(0.3)

						if not v346:GetAttribute("IsDisabled") then
							n10 += 1
						end
					end
				end

				if Config.Stack["Chest [ Hop Server ]"] and Config.Stack["Chest Value Setting"] <= n10 then
					pcall(function()
						hopServer()
					end)
					n10 = 0
					task.wait(2)
				end
			end
		end
	end
end)
Stop = Tabs.Stack:CreateToggle("Stack", {
	Title = "Stop Collect if Have Items",
	Description = "Stop Collect if have God's Chalice or Fist of Darkness",
	Default = Config.Stack["Stop Items"]
})
Stop:OnChanged(function(p59)
	Config.Stack["Stop Items"] = p59
	SaveSetting()
end)
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
task.spawn(function()
	while wait() do
		pcall(function()
			if Config.Stack["Stop Items"] then
				local LocalPlayer3 = game:GetService("Players").LocalPlayer
				local GodSChalice = LocalPlayer3.Backpack:FindFirstChild("God's Chalice") or LocalPlayer3.Character:FindFirstChild("God's Chalice")
				local FistOfDarkness = LocalPlayer3.Backpack:FindFirstChild("Fist of Darkness") or LocalPlayer3.Character:FindFirstChild("Fist of Darkness")

				if GodSChalice or FistOfDarkness then
					Config.Stack["Collect Chest"] = false
					Config.Stack["Chest [ Hop Server ]"] = false
					Config.Settings["Bypass Tp"] = false
					Stack_:SetValue(false)
					Stack_2:SetValue(false)
					BypassTp:SetValue(false)

					if v66 then
						topos(CFrame.new(-5063.19140625, 314.57675170898438, -2983.61962890625))
					end
				end
			end
		end)
	end
end)
Tabs.Stack:AddSection("Material Section")
getMaterials = function()
	local t14

	if v64 then
		t14 = {
			"Angel Wings",
			"Leather + Scrap Metal",
			"Magma Ore",
			"Fish Tail"
		}
	elseif v65 then
		t14 = {
			"Leather + Scrap Metal",
			"Magma Ore",
			"Ectoplasm",
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			"Mystic Droplet",
			"Radioactive Material",
			"Vampire Fang"
		}
	else
		t14 = {
			"Leather + Scrap Metal",
			"Fish Tail",
			"Conjured Cocoa",
			"Dragon Scale",
			"Gunpowder",
			"Mini Tusk"
		}
	end

	return t14
end
ChooseMode = Tabs.Stack:CreateDropdown("ChooseMode", {
	Title = "Selected Material",
	Values = getMaterials(),
	Multi = false,
	Default = Config.Stack["Selected Material"]
})
ChooseMode:OnChanged(function(p60)
	Config.Stack["Selected Material"] = p60
	SaveSetting()
end)
Tabs.Stack:CreateSlider("Slider", {
	Title = "Setting Value Material",
	Description = "Setting Material For Farm",
	Default = Config.Stack["Material Value Setting"],
	Min = 1,
	Max = 100,
	Rounding = 1,
	Callback = function(p61)
		Config.Stack["Material Value Setting"] = p61
		SaveSetting()
	end
})
StackToggle = Tabs.Stack:CreateToggle("Stack", {
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Title = "Start Farm Material",
	Description = "Auto Farm Material",
	Default = Config.Stack["Start Farm Material"]
})
StackToggle:OnChanged(function(p62)
	Config.Stack["Start Farm Material"] = p62
	SaveSetting()

	if p62 then
		lib:Notify({
			Title = "No Function",
			Content = "pls wait Soon",
			Duration = 5
		})
	end
end)
Tabs.Sub:AddSection("Sub Soul Reaper Section")
SoulReaperStatus = Tabs.Sub:CreateParagraph("SoulReaper", {
	Title = "Soul Reaper",
	Content = ""
})
CheckSoulReaper = function()
	if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") or game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
		return "🟢"
	end

	return "🔴"
end
task.spawn(function()
	while task.wait() do
		SoulReaperStatus:SetValue("Soul Reaper " .. CheckSoulReaper())
	end
end)
RandomBone = Tabs.Sub:CreateToggle("RandomBone", {
	Title = "Random Bone",
	Description = "Random all bones",
	Default = Config.Sub["Random Bone"]
})
RandomBone:OnChanged(function(p63)
	Config.Sub["Random Bone"] = p63
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	SaveSetting()
end)
task.spawn(function()
	while task.wait() do
		if Config.Sub["Random Bone"] then
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
					"Bones",
					"Buy",
					1,
					1
				}))
			end)
		end
	end
end)
Tabs.Sub:CreateButton({
	Title = "Pray",
	Description = "Vxeze Hub | Studio",
	Callback = function()
		lib:Notify({
			Title = "Success",
			Content = "Prayed!",
			Duration = 2
		})
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
			"gravestoneEvent",
			1
		}))
	end
})
Tabs.Sub:CreateButton({
	Title = "Try Luck",
	Description = "Vxeze Hub | Studio",
	Callback = function()
		lib:Notify({
			Title = "Success",
			Content = "Tried Luck!",
			Duration = 2
		})
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
			"gravestoneEvent",
			2
		}))
	end
})
Hallow = Tabs.Sub:CreateToggle("Hallow", {
	Title = "Soul Reaper [ Hallow Scythe ]",
	Description = "Summon Soul Reaper and attack",
	Default = Config.Sub["Soul Reaper"]
})
Hallow:OnChanged(function(p64)
	Config.Sub["Soul Reaper"] = p64
	StopTween(Config.Sub["Soul Reaper"])
	SaveSetting()
end)
task.spawn(function()
	while task.wait() do
		if Config.Sub["Soul Reaper"] and v66 then
			pcall(function()
				local SoulReaper = workspace.Enemies:FindFirstChild("Soul Reaper")

				if SoulReaper and SoulReaper:FindFirstChild("Humanoid") and SoulReaper:FindFirstChild("HumanoidRootPart") and SoulReaper.Humanoid.Health > 0 then
					KillBoss("Soul Reaper")
				elseif LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then
					EquipWeapon("Hallow Essence")

					if character:FindFirstChild("Hallow Essence") then
						local cFrame = CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)

						repeat
							topos(cFrame)
							task.wait()
						until (cFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
					end
				end
			end)
		end
	end
end)
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
Tabs.Sub:AddSection("Sub Cake Prince / Dough King Section")
CakePrinceStatus = Tabs.Sub:CreateParagraph("CakePrince", {
	Title = "Cake Prince",
	Content = ""
})
DoughKingStatus = Tabs.Sub:CreateParagraph("DoughKing", {
	Title = "Dough King",
	Content = ""
})
CheckCakePrince = function()
	if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
		return "🟢"
	end

	return "🔴"
end
CheckDoughKing = function()
	if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
		return "🟢"
	end

	return "🔴"
end
task.spawn(function()
	while task.wait() do
		CakePrinceStatus:SetValue("Cake Prince " .. CheckCakePrince())
		DoughKingStatus:SetValue("Dough King " .. CheckDoughKing())
	end
end)
CakeSpawn = Tabs.Sub:CreateToggle("CakeSpawner", {
	Title = "Spawn Cake Prince / Dough King",
	Description = "Summon Cake Prince / Dough King",
	Default = Config.Sub["Summon Raid Boss"]
})
CakeSpawn:OnChanged(function(p65)
	Config.Sub["Summon Raid Boss"] = p65
	SaveSetting()
end)
AttackCake = Tabs.Sub:CreateToggle("AttackCake", {
	Title = "Cake Prince [ Raid Boss ]",
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Description = "Attack Cake Prince",
	Default = Config.Sub["Cake Prince"]
})
AttackCake:OnChanged(function(p66)
	Config.Sub["Cake Prince"] = p66
	StopTween(Config.Sub["Cake Prince"])
	SaveSetting()
end)
task.spawn(function()
	while task.wait(0.1) do
		if Config.Sub["Cake Prince"] then
			local CakePrince_ = workspace.Enemies:FindFirstChild("Cake Prince")

			if CakePrince_ and CakePrince_:FindFirstChild("Humanoid") then
				if CakePrince_:FindFirstChild("HumanoidRootPart") then
					if CakePrince_.Humanoid.Health > 0 then
						if LocalPlayer:DistanceFromCharacter(Vector3.new(-2132, 70, -12319)) >= 1200 then
						end

						KillBoss("Cake Prince")

						continue
					end
				end
			end

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
		end
	end
end)
AttackCake2 = Tabs.Sub:CreateToggle("AttackCake2", {
	Title = "Dough King [ Raid Boss ]",
	Description = "Attack Dough King and get Sweet Chalice",
	Default = Config.Sub["Dough King"]
})
AttackCake2:OnChanged(function(p67)
	Config.Sub["Dough King"] = p67
	StopTween(Config.Sub["Dough King"])
	SaveSetting()

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	if p67 then
		lib:Notify({
			Title = "No Function",
			Content = "pls wait Soon",
			Duration = 5
		})
	end
end)
Tabs.Sub:AddSection("Rip Indra Section")
EliteStatus = Tabs.Sub:CreateParagraph("EliteHunter", {
	Title = "Elite Hunter",
	Content = "Status: "
})
RipIndraStatus = Tabs.Sub:CreateParagraph("RipIndra", {
	Title = "rip_indra True Form",
	Content = ""
})
CheckRipIndra = function()
	if game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
		return "🟢"
	end

	return "🔴"
end
CheckElite = function()
	if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
		return "🟢"
	end

	return "🔴"
end
task.spawn(function()
	while task.wait() do
		RipIndraStatus:SetValue("rip_indra True Form " .. CheckRipIndra())
		EliteStatus:SetValue("Status: " .. CheckElite() .. " | Killed: " .. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress"))
	end
end)
EliteHunterToggle = Tabs.Sub:CreateToggle("EliteHunterToggle", {
	Title = "Elite Hunter",
	Description = "Auto Farm Quest Elite Hunter",
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Default = Config.Sub["Elite Hunter"]
})
EliteHunterToggle:OnChanged(function(p68)
	Config.Sub["Elite Hunter"] = p68
	StopTween(Config.Sub["Elite Hunter"])
	SaveSetting()

	if p68 then
		lib:Notify({
			Title = "No Function",
			Content = "pls wait Soon",
			Duration = 5
		})
	end
end)
EliteHunterHopToggle = Tabs.Sub:CreateToggle("EliteHunterHopToggle", {
	Title = "Elite Hunter [ Hop Server ]",
	Description = "Hop Server If u have god Chalice and safe zone",
	Default = Config.Sub["Elite Hunter [ Hop Server ]"]
})
EliteHunterHopToggle:OnChanged(function(p69)
	Config.Sub["Elite Hunter [ Hop Server ]"] = p69
	StopTween(Config.Sub["Elite Hunter [ Hop Server ]"])
	SaveSetting()

	if p69 then
		lib:Notify({
			Title = "No Function",
			Content = "pls wait Soon",
			Duration = 5
		})
	end
end)
TouchPadToggle = Tabs.Sub:CreateToggle("TouchPadToggle", {
	Title = "Touch Pad Haki",
	Description = "Need Full 3 haki legendary",
	Default = Config.Sub["Touch Pad Haki"]
})
TouchPadToggle:OnChanged(function(p70)
	Config.Sub["Touch Pad Haki"] = p70
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	StopTween(Config.Sub["Touch Pad Haki"])
	SaveSetting()

	if p70 then
		lib:Notify({
			Title = "No Function",
			Content = "pls wait Soon",
			Duration = 5
		})
	end
end)
RipIndraToggle = Tabs.Sub:CreateToggle("RipIndraToggle", {
	Title = "rip_indra True Form [ Raid Boss ]",
	Description = "Summon rip_indra True Form and attack boss",
	Default = Config.Sub["rip_indra True Form"]
})
RipIndraToggle:OnChanged(function(p71)
	Config.Sub["rip_indra True Form"] = p71
	StopTween(Config.Sub["rip_indra True Form"])
	SaveSetting()

	if p71 then
		lib:Notify({
			Title = "No Function",
			Content = "pls wait Soon",
			Duration = 5
		})
	end
end)
Tabs.Sub:AddSection("Darkbeard Section")
DarkBeardStatus = Tabs.Sub:CreateParagraph("DarkBeard", {
	Title = "Dark Beard",
	Content = ""
})
DarkbeardToggle = Tabs.Sub:CreateToggle("DarkbeardToggle", {
	Title = "Darkbeard [ Raid Boss ]",
	Description = "Summon Darkbeard and attack boss",
	Default = Config.Sub.Darkbeard
})
DarkbeardToggle:OnChanged(function(p72)
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Config.Sub.Darkbeard = p72
	StopTween(Config.Sub.Darkbeard)
	SaveSetting()

	if p72 then
		lib:Notify({
			Title = "No Function",
			Content = "pls wait Soon",
			Duration = 5
		})
	end
end)
Tabs.Sub:AddSection("Tyrant of the Skies Section")
TyrantStatus = Tabs.Sub:CreateParagraph("Tyrant", {
	Title = "Tyrant of the Skies",
	Content = ""
})
TyrantToggle = Tabs.Sub:CreateToggle("TyrantToggle", {
	Title = "Tyrant of the Skies [ Raid Boss ]",
	Description = "Summon Tyrant of the Skies and attack boss",
	Default = Config.Sub["Tyrant of the Skies"]
})
TyrantToggle:OnChanged(function(p73)
	Config.Sub["Tyrant of the Skies"] = p73
	StopTween(Config.Sub["Tyrant of the Skies"])
	SaveSetting()

	if p73 then
		lib:Notify({
			Title = "No Function",
			Content = "pls wait Soon",
			Duration = 5
		})
	end
end)
CheckDarkBeard = function()
	if game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") or game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
		return "🟢"
	end

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	return "🔴"
end
CheckTyrant = function()
	if game:GetService("ReplicatedStorage"):FindFirstChild("Tyrant of the Skies") or game:GetService("Workspace").Enemies:FindFirstChild("Tyrant of the Skies") then
		return "🟢"
	end

	return "🔴"
end
task.spawn(function()
	while task.wait() do
		TyrantStatus:SetValue("Tyrant of the Skies " .. CheckTyrant())
		DarkBeardStatus:SetValue("Dark Beard " .. CheckDarkBeard())
	end
end)
Tabs.RF:AddSection("Devil Fruit Section")
FruitR = Tabs.RF:CreateToggle("Fruit", {
	Title = "Random Fruit",
	Description = "Buy Random Fruit",
	Default = Config.RF["Random Fruit"]
})
FruitR:OnChanged(function(p74)
	Config.RF["Random Fruit"] = p74
	SaveSetting()
end)
Store = Tabs.RF:CreateToggle("Store", {
	Title = "Store Fruit",
	Description = "store fruit when you have a devil fruit",
	Default = Config.RF["Store Fruit"]
})
Store:OnChanged(function(p75)
	Config.RF["Store Fruit"] = p75
	SaveSetting()
end)
FruitList = {
	"Rocket-Rocket",
	"Spin-Spin",
	"Blade-Blade",
	"Spring-Spring",
	"Bomb-Bomb",
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	"Smoke-Smoke",
	"Spike-Spike",
	"Flame-Flame",
	"Ice-Ice",
	"Sand-Sand",
	"Dark-Dark",
	"Eagle-Eagle",
	"Diamond-Diamond",
	"Light-Light",
	"Rubber-Rubber",
	"Ghost-Ghost",
	"Magma-Magma",
	"Quake-Quake",
	"Buddha-Buddha",
	"Love-Love",
	"Creation-Creation",
	"Spider-Spider",
	"Sound-Sound",
	"Phoenix-Phoenix",
	"Portal-Portal",
	"Lightning-Lightning",
	"Pain-Pain",
	"Blizzard-Blizzard",
	"Gravity-Gravity",
	"Mammoth-Mammoth",
	"T-Rex-T-Rex",
	"Dough-Dough",
	"Shadow-Shadow",
	"Venom-Venom",
	"Control-Control",
	"Gas-Gas",
	"Spirit-Spirit",
	"Tiger-Tiger",
	"Yeti-Yeti",
	"Kitsune-Kitsune",
	"Dragon-Dragon"
}
SelectFruit = Tabs.RF:CreateDropdown("SelectFruit", {
	Title = "Devil Fruit Sniper Shop",
	Values = FruitList,
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Multi = false,
	Default = Config.RF["Selected Fruit Shop"]
})
SelectFruit:OnChanged(function(p76)
	Config.RF["Selected Fruit Shop"] = p76
	SaveSetting()
end)
ShopFruit = Tabs.RF:CreateToggle("Store", {
	Title = "Buy Blox Fruit Sniper Shop",
	Default = Config.RF["Buy Shop Fruit"]
})
ShopFruit:OnChanged(function(p77)
	Config.RF["Buy Shop Fruit"] = p77
	SaveSetting()
end)
Tabs.RF:AddSection("Raid Section")
RaidList = {
	"Flame",
	"Ice",
	"Quake",
	"Light",
	"Dark",
	"String",
	"Rumble",
	"Magma",
	"Human: Buddha",
	"Sand",
	"Bird: Phoenix",
	"Dough"
}
SelectRaid = Tabs.RF:CreateDropdown("SelectRaid", {
	Title = "Select Chip",
	Values = RaidList,
	Multi = false,
	Default = Config.RF["Select Raid"]
})
SelectRaid:OnChanged(function(p78)
	Config.RF["Select Raid"] = p78
	SaveSetting()
end)
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
GetFruitLow = Tabs.RF:CreateToggle("GetFruitLow", {
	Title = "Get Fruit In Inventory Low Beli",
	Default = Config.RF["Get Fruit Low"]
})
GetFruitLow:OnChanged(function(p79)
	Config.RF["Get Fruit Low"] = p79
	SaveSetting()
end)
AutoRaid = Tabs.RF:CreateToggle("AutoRaid", {
	Title = "Start Raid",
	Default = Config.RF["Start Raid"]
})
AutoRaid:OnChanged(function(p80)
	Config.RF["Start Raid"] = p80
	StopTween(Config.RF["Start Raid"])
	SaveSetting()
end)
Awakening = Tabs.RF:CreateToggle("Awakening", {
	Title = "Awakening Skills Fruit",
	Default = Config.RF["Awakening Skills"]
})
Awakening:OnChanged(function(p81)
	Config.RF["Awakening Skills"] = p81
	SaveSetting()
end)
task.spawn(function()
	pcall(function()
		while task.wait() do
			if _G.Awakening then
				if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Awakener", "Check") == 0 then
					game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Awakener", "Teleport")
				else
					game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Awakener", "Awaken")
				end

				task.wait(1.75)
			end
		end
	end)
end)
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
Tabs.RF:AddSection("Dungeon Section")
Tabs.RF:CreateButton({
	Title = "Teleport To Dungeon Sea [ Dungeon Hub ]",
	Description = "Travel to the beginner dungeon",
	Callback = function()
		game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/DungeonNPCNetworkFunction"):InvokeServer("TeleportToDungeonHub")
		lib:Notify({
			Title = "Teleport Successful",
			Content = "Arrived at Dungeon Hub!",
			Duration = 2
		})
	end
})
Difficulty = {
	"Normal",
	"Hard",
	"Challenge"
}
SelectDifficulty = Tabs.RF:CreateDropdown("SelectDifficulty", {
	Title = "Select Difficulty",
	Values = Difficulty,
	Multi = false,
	Default = Config.RF["Select Difficulty"]
})
SelectDifficulty:OnChanged(function(p82)
	Config.RF["Select Difficulty"] = p82
	SaveSetting()
end)
MinPlayerValues = {
	"1",
	"2",
	"3",
	"4"
}
MinPlayer = Tabs.RF:CreateDropdown("MinPlayer", {
	Title = "Select Min Player",
	Values = MinPlayerValues,
	Multi = false,
	Default = Config.RF["Min Player"]
})
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
MinPlayer:OnChanged(function(p83)
	Config.RF["Min Player"] = p83
	SaveSetting()
end)
JoinToggle = Tabs.RF:CreateToggle("Join", {
	Title = "Join Dungeon",
	Description = "Auto Join Dungeon",
	Default = Config.RF["Join Dungeon"]
})
JoinToggle:OnChanged(function(p84)
	Config.RF["Join Dungeon"] = p84
	StopTween(Config.RF["Join Dungeon"])
	SaveSetting()
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			local LocalPlayer3 = game:GetService("Players").LocalPlayer

			if workspace:GetAttribute("IsDungeonHub") and Config.RF["Join Dungeon"] and Config.RF["Start Dungeon"] then
				local Character = LocalPlayer3.Character

				if not Character then
					return
				end

				local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

				if not HumanoidRootPart then
					return
				end

				local Map = workspace:FindFirstChild("Map")

				if not Map then
					return
				end

				local SimulationHub = Map:FindFirstChild("Simulation Hub")

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
				if not SimulationHub then
					return
				end

				local Pads = SimulationHub:FindFirstChild("Pads")

				if not Pads then
					return
				end

				local v361
				local n11 = 0

				for i = 1, 3 do
					local v364 = Pads:FindFirstChild("DUNGEON_TELEPORTER" .. i)

					if v364 then
						local Pad = v364:FindFirstChild("Pad")

						if Pad then
							local TeleporterBillboard = Pad:FindFirstChild("TeleporterBillboard")

							if TeleporterBillboard then
								local Status = TeleporterBillboard:FindFirstChild("Status")

								if Status and Status:IsA("TextLabel") then
									local Text = Status.Text

									if Text == "Teleport cancelled" or Text:match("Teleporting in") then
										v361 = v364
										n11 = tonumber(Config.RF["Min Player"])

										break
									end

									local match, v370 = Text:match("(%d+)%/(%d+)")
									local v371 = tonumber(match)
									local v372 = tonumber(v370)

									if v371 and v372 and tonumber(Config.RF["Min Player"]) <= v371 then
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
										v361 = v364
										n11 = v371

										break
									end
								end
							end
						end
					end
				end

				if v361 and v361:FindFirstChild("Pad") then
					local Pad = v361.Pad

					topos(Pad.CFrame * CFrame.new(0, 3, 0))

					if (Pad.Position - HumanoidRootPart.Position).Magnitude <= 15 then
						if tonumber(Config.RF["Min Player"]) <= n11 then
							if v361:FindFirstChild("DungeonSettingsChanged") then
								v361.DungeonSettingsChanged:FireServer("Start")
								task.wait(1)
							end
						elseif v361:FindFirstChild("DungeonSettingsChanged") then
							v361.DungeonSettingsChanged:FireServer("Difficulty", Config.RF["Select Difficulty"])
							task.wait(1)
						end
					end
				else
					topos(CFrame.new(-363.97525024414062, 253.82789611816406, -330.17074584960938))
				end
			end
		end)
	end
end)
Tabs.RF:CreateDropdown("SelectCard", {
	Title = "Select Card",
	Values = {
		"Lifesteal",
		"All Cooldowns",
		"HYPER!",
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		"Fruit M1 Speed",
		"Armor",
		"Sniper",
		"Overflow",
		"Gun",
		"Melee",
		"Fruit",
		"Defense",
		"Fortress"
	},
	Multi = true,
	Default = {}
}):OnChanged(function(p85)
	Config.RF["Select Card"] = p85
	SaveSetting()
end)

local t15 = {}
local u375 = false

updateNamesList = function()
	local children, v377 = game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()

	for _, v in next, children, v377 do
		if v.Name == "ScreenGui" and v:FindFirstChild("1") then
			if v["1"]:FindFirstChild("2") then
				local ok, result = pcall(function()
					return v["1"]["2"].DisplayName.Text
				end)

				if ok and result and result ~= "" then
					t15[result] = true
				end
			end
		end
	end
end
thuabro = function()
	local selectCard = Config.RF["Select Card"] or {}
	local v383 = #selectCard > 0
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	local t16 = {}
	local children, v386 = game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()

	for _, v in next, children, v386 do
		if v.Name == "ScreenGui" and v:FindFirstChild("1") then
			if v["1"]:FindFirstChild("2") then
				local ok, result = pcall(function()
					return v["1"]["2"].DisplayName.Text
				end)

				if ok and result and result ~= "" then
					local v391 = false

					if v383 then
						for _, v2 in ipairs(selectCard) do
							if v2 == result then
								v391 = true

								break
							end
						end
					else
						v391 = true
					end

					if v391 then
						if not t16[result] then
							t16[result] = {}
						end

						t16[result][#t16[result] + 1] = function()
							pcall(function()
								firesignal(v["1"]["2"].Activated)
							end)
						end
					end
				end
			end
		end
	end
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU

	for _, v in next, t16, nil do
		for _, v2 in next, v, nil do
			v2()
		end
	end
end
autoPickLoop = function()
	while u375 do
		updateNamesList()
		thuabro()
		task.wait(0.5)
	end
end
Tabs.RF:CreateToggle("PickCard", {
	Title = "Pick Card",
	Description = "Auto Pick Card or Pick card select",
	Default = Config.RF["Pick Card"]
}):OnChanged(function(p86)
	Config.RF["Pick Card"] = p86
	SaveSetting()
	u375 = p86

	if p86 then
		task.spawn(autoPickLoop)
		game:GetService("Players").LocalPlayer.PlayerGui.ChildAdded:Connect(function(child)
			if child.Name == "ScreenGui" and u375 then
				task.wait(0.1)
				updateNamesList()
				thuabro()
			end
		end)
	end
end)
ReturnToggle = Tabs.RF:CreateToggle("Dungeon", {
	Title = "Return Dungeon",
	Description = "Auto Return Dungeon",
	Default = Config.RF["Return Dungeon"]
})
ReturnToggle:OnChanged(function(p87)
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Config.RF["Return Dungeon"] = p87
	SaveSetting()
end)
task.spawn(function()
	while wait() do
		if Config.RF["Return Dungeon"] then
			if workspace:GetAttribute("IsDungeonInstance") then
				game:GetService("ReplicatedStorage"):WaitForChild("DungeonShared"):WaitForChild("ReturnToHub"):FireServer()
			end
		end
	end
end)
DungeonToggle = Tabs.RF:CreateToggle("Dungeon", {
	Title = "Start Dungeon",
	Description = "Auto farm Dungeon and next floor",
	Default = Config.RF["Start Dungeon"]
})
DungeonToggle:OnChanged(function(p88)
	Config.RF["Start Dungeon"] = p88
	StopTween(Config.RF["Start Dungeon"])
	SaveSetting()
end)
GetCurrentDungeonZone = function()
	local function v398(p89)
		local Character = game.Players.LocalPlayer.Character

		if Character then
			if Character:FindFirstChild("HumanoidRootPart") then
				return (Character.HumanoidRootPart.Position - p89.Position).Magnitude
			end
		end

		return math.huge
	end

	local huge = math.huge
	local v401

	for _, child in pairs(workspace.Map.Dungeon:GetChildren()) do
		if child:FindFirstChild("Root") and child:FindFirstChild("ExitTeleporter") then
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			if child.ExitTeleporter:FindFirstChild("Root") then
				local v404 = v398(child.Root.CFrame)

				if v404 < huge then
					huge = v404
					v401 = child
				end
			end
		end
	end

	return v401
end
task.spawn(function()
	while task.wait() do
		if Config.RF["Start Dungeon"] then
			if workspace:GetAttribute("IsDungeonInstance") then
				pcall(function()
					local Character = game:GetService("Players").LocalPlayer.Character
					local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")

					if not Character or not HumanoidRootPart then
						return
					end

					local Enemies = workspace:FindFirstChild("Enemies")
					local v408 = false

					if Enemies then
						for _, child in pairs(Enemies:GetChildren()) do
							if child:FindFirstChild("Humanoid") and child:FindFirstChild("HumanoidRootPart") and child.Humanoid.Health > 0 and (HumanoidRootPart.Position - child.HumanoidRootPart.Position).Magnitude <= Config.Main["Distance Nearest"] then
								v408 = true

								while true do
									game:GetService("RunService").Heartbeat:wait()
									AutoHaki()
									EquipWeapon(Config.Settings.Weapon)
									topos(child.HumanoidRootPart.CFrame * Pos)
									child.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
									child.HumanoidRootPart.Transparency = 1
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
									child.Humanoid.JumpPower = 0
									child.Humanoid.WalkSpeed = 0
									child.HumanoidRootPart.CanCollide = false
									PosMon = child.HumanoidRootPart.CFrame
									MonFarm = child.Name
									Attack()

									if not child.Parent then
										break
									elseif child.Humanoid.Health <= 0 or not Enemies:FindFirstChild(child.Name) then
										break
									end
								end
							end
						end
					end

					if not v408 then
						local v411 = GetCurrentDungeonZone()

						if v411 then
							local ExitTeleporter = v411:FindFirstChild("ExitTeleporter")

							if ExitTeleporter then
								local Root = ExitTeleporter:FindFirstChild("Root")

								if Root then
									topos(Root.CFrame)
								end
							end
						end
					end
				end)
			end
		end
	end
end)
DungeonHubToggle = Tabs.RF:CreateToggle("DungeonHub", {
	Title = "Start Dungeon Hub [ Fully ][Premium]",
	Description = "Auto farm Dungeon / next floor / start Dungeon",
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Default = Config.RF["Start Dungeon Hub"]
})
DungeonHubToggle:OnChanged(function(p90)
	if p90 then
		lib:Notify({
			Title = "Vxeze Hub | Studio",
			Content = "This feature requires Premium subscription to use. Please upgrade to Premium to access Dungeon Hub automation.",
			Duration = 5
		})
		Config.RF["Start Dungeon Hub"] = false
		DungeonHubToggle:SetValue(false)
	else
		Config.RF["Start Dungeon Hub"] = p90
		StopTween(Config.RF["Start Dungeon Hub"])
	end

	SaveSetting()
end)
task.spawn(function()
	while task.wait(0.2) do
		if Config.RF["Random Fruit"] then
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
			end)
		elseif Config.RF["Store Fruit"] then
			pcall(function()
				for _, v in {
					LocalPlayer.Backpack,
					character
				}, nil, nil do
					for _, child in pairs(v:GetChildren()) do
						if string.find(child.Name, "Fruit") then
							game.ReplicatedStorage.Remotes.CommF_:InvokeServer("StoreFruit", child:GetAttribute("OriginalName"), child)
						end
					end
				end
			end)
		elseif Config.RF["Selected Fruit Shop"] then
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit", Config.RF["Selected Fruit Shop"])
			end)
		end
	end
end)
getUseableFruit = function()
	for _, v in pairs(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")) do
		for _, v2 in pairs(v) do
			if v2 == "Blox Fruit" and v.Value < 1000000 then
				return v.Name
			end
		end
	end
end
task.spawn(function()
	while true do
		if not task.wait() then
			return
		end

		if Config.RF["Start Raid"] and (v66 or v65) then
			local LocalPlayer3 = game.Players.LocalPlayer

			if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false then
				if not LocalPlayer3.Backpack:FindFirstChild("Special Microchip") then
					if not LocalPlayer3.Character:FindFirstChild("Special Microchip") then
						if LocalPlayer3.Data.Beli.Value >= 100000 then
							if not game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Config.RF["Select Raid"]):find("wait") then
								game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Config.RF["Select Raid"])

								continue
							end
						end

						if not Config.RF["Get Fruit Low"] then
							continue
						end

						local v423 = getUseableFruit()

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
						if not v423 then
							continue
						end

						game.ReplicatedStorage.Remotes.CommF_:InvokeServer("LoadFruit", v423)
						game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Config.RF["Select Raid"])

						continue
					end
				end
			end

			if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false then
				local ok = LocalPlayer3.Backpack:FindFirstChild("Special Microchip")

				if not ok then
					ok = LocalPlayer3.Character:FindFirstChild("Special Microchip")
				end

				local ok2 = not ok

				if not ok2 then
					ok2 = workspace._WorldOrigin.Locations:FindFirstChild("Island 1")
				end

				if not ok2 then
					if v65 then
						topos(CFrame.new(-6438.73535, 250.645355, -4501.50684))
						task.wait(0.5)
						fireclickdetector(workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
					elseif v66 then
						topos(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
						task.wait(0.5)
						fireclickdetector(workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
					end

					continue
				end
			end

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible ~= true then
				for i = 5, 1, -1 do
					if workspace._WorldOrigin.Locations:FindFirstChild("Island " .. i) then
						if LocalPlayer3:DistanceFromCharacter(workspace._WorldOrigin.Locations:FindFirstChild("Island " .. i).CFrame.Position) <= 2000 then
							topos(workspace._WorldOrigin.Locations:FindFirstChild("Island " .. i).CFrame * CFrame.new(60, 30, 60))

							break
						end
					end
				end

				continue
			end

			local Character = game:GetService("Players").LocalPlayer.Character
			local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")

			if not Character then
				return
			end

			if not HumanoidRootPart then
				return
			end

			if not workspace:FindFirstChild("Enemies") then
				break
			end

			for _, child in pairs(workspace.Enemies:GetChildren()) do
				if child:FindFirstChild("Humanoid") then
					if child:FindFirstChild("HumanoidRootPart") and child.Humanoid.Health > 0 and (HumanoidRootPart.Position - child.HumanoidRootPart.Position).Magnitude <= 3000 then
						while true do
							game:GetService("RunService").Heartbeat:wait()
							AutoHaki()
							EquipWeapon(Config.Settings.Weapon)
							topos(child.HumanoidRootPart.CFrame * Pos)
							child.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
							child.HumanoidRootPart.Transparency = 1
							child.Humanoid.JumpPower = 0
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
							child.Humanoid.WalkSpeed = 0
							child.HumanoidRootPart.CanCollide = false
							PosMon = child.HumanoidRootPart.CFrame
							MonFarm = child.Name
							Attack()

							if not Config.RF["Start Raid"] or not child.Parent then
								break
							end

							if not (child.Humanoid.Health <= 0) then
								if workspace.Enemies:FindFirstChild(child.Name) then
									continue
								end
							end

							break
						end
					end
				end
			end
		end
	end
end)
Tabs.Shop:AddSection("Abilities Shop")
Tabs.Shop:AddButton({
	Title = "Buy Geppo [ $10,000 ]",
	Description = "Purchase Geppo ability",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
		lib:Notify({
			Title = "Success",
			Content = "Geppo purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Buy Buso Haki [ $25,000 ]",
	Description = "Purchase Buso Haki ability",
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
		lib:Notify({
			Title = "Success",
			Content = "Buso Haki purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Buy Soru [ $25,000 ]",
	Description = "Purchase Soru ability",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
		lib:Notify({
			Title = "Success",
			Content = "Soru purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Buy Observation Haki [ $750,000 ]",
	Description = "Purchase Observation Haki ability",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
		lib:Notify({
			Title = "Success",
			Content = "Observation Haki purchased!",
			Duration = 3
		})
	end
})
AutoBuyToggle = Tabs.Shop:AddToggle("AutoBuyHaki", {
	Title = "Auto Buy Full Abilities",
	Description = "Automatically purchase all Haki abilities",
	Default = Config.LL.Abilities
})
AutoBuyToggle:OnChanged(function(p91)
	Config.LL.Abilities = p91
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU

	while Config.LL.Abilities do
		wait(0.2)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
	end
end)
Tabs.Shop:AddSection("Fighting Style Shop")
meleeData = {
	["Black Leg"] = {
		npc = "Dark Step Teacher",
		cmd = "BuyBlackLeg"
	},
	Electro = {
		npc = "Mad Scientist",
		cmd = "BuyElectro"
	},
	["Fishman Karate"] = {
		npc = "Water Kung-fu Teacher",
		cmd = "BuyFishmanKarate"
	},
	["Dragon Claw"] = {
		npc = "Sabi",
		cmd = "DragonClaw"
	},
	Superhuman = {
		npc = "Martial Arts Master",
		cmd = "BuySuperhuman"
	},
	["Death Step"] = {
		npc = "Phoeyu, the Reformed",
		cmd = "BuyDeathStep"
	},
	["Sharkman Karate"] = {
		npc = "Sharkman Teacher",
		cmd = "BuySharkmanKarate"
	},
	["Electric Claw"] = {
		npc = "Previous Hero",
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		cmd = "BuyElectricClaw"
	},
	["Dragon Talon"] = {
		npc = "Uzoth",
		cmd = "BuyDragonTalon"
	},
	Godhuman = {
		npc = "Ancient Monk",
		cmd = "BuyGodhuman"
	},
	["Sanguine Art"] = {
		npc = "Shafi",
		cmd = "BuySanguineArt"
	}
}
FindNPC = function(p92)
	local v431 = workspace.NPCs:FindFirstChild(p92)

	if not v431 then
		local ReplicatedStorage2 = game:GetService("ReplicatedStorage")

		if ReplicatedStorage2:FindFirstChild("NPCs") then
			v431 = ReplicatedStorage2.NPCs:FindFirstChild(p92)
		end
	end

	return v431
end
BuyMelee = function(p93)
	if p93 == "None" then
		return
	end

	if not Config.LL["Buy Melee"] then
		return
	end

	local LocalPlayer3 = game.Players.LocalPlayer
	local CommF_2 = game:GetService("ReplicatedStorage").Remotes.CommF_
	local v435 = meleeData[p93]
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU

	if not v435 then
		return
	end

	if not LocalPlayer3.Character then
		return
	end

	local HumanoidRootPart = LocalPlayer3.Character:FindFirstChild("HumanoidRootPart")

	if not HumanoidRootPart then
		return
	end

	local v437 = FindNPC(v435.npc)

	if not v437 then
		return
	end

	local HumanoidRootPart2 = v437:FindFirstChild("HumanoidRootPart")

	if not HumanoidRootPart2 then
		return
	end

	if (HumanoidRootPart.Position - HumanoidRootPart2.Position).Magnitude > 12 then
		if not topos then
			return
		end

		topos(HumanoidRootPart2.CFrame * CFrame.new(0, 0, 3))
		task.wait(0.5)
	end

	if (HumanoidRootPart.Position - HumanoidRootPart2.Position).Magnitude <= 12 then
		if v435.cmd == "DragonClaw" then
			CommF_2:InvokeServer("BlackbeardReward", "DragonClaw", "2")
		else
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			CommF_2:InvokeServer(v435.cmd)
		end
	end
end

local t17 = {}

for k in pairs(meleeData) do
	table.insert(t17, k)
end

table.sort(t17)
table.insert(t17, 1, "None")
Chon_Melee = Tabs.Shop:AddDropdown("FightingStyleDropdown", {
	Title = "Buy Fighting Style",
	Values = t17,
	Multi = false,
	Default = Config.LL["Selcet Buy Melee"]
})
Chon_Melee:OnChanged(function(p94)
	Config.LL["Selcet Buy Melee"] = p94
end)
AutoBuyToggle = Tabs.Shop:AddToggle("AutoBuyToggle", {
	Title = "Auto Buy Selected Style",
	Description = "",
	Default = Config.LL["Buy Melee"]
})
AutoBuyToggle:OnChanged(function(p95)
	Config.LL["Buy Melee"] = p95

	if p95 then
		task.spawn(function()
			while wait() do
				if Config.LL["Buy Melee"] then
					BuyMelee(Config.LL["Selcet Buy Melee"])
					task.wait(1)
				end
			end
		end)
	end
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
end)
Tabs.Shop:AddSection("Sword Normal Shop")
Tabs.Shop:AddButton({
	Title = "Cutlass [ $1,000 ]",
	Description = "Purchase Cutlass sword",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass")
		lib:Notify({
			Title = "Success",
			Content = "Cutlass purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Katana [ $1,000 ]",
	Description = "Purchase Katana sword",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana")
		lib:Notify({
			Title = "Success",
			Content = "Katana purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Iron Mace [ $25,000 ]",
	Description = "Purchase Iron Mace",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace")
		lib:Notify({
			Title = "Success",
			Content = "Iron Mace purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Dual Katana [ $12,000 ]",
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Description = "Purchase Dual Katana",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana")
		lib:Notify({
			Title = "Success",
			Content = "Dual Katana purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Triple Katana [ $60,000 ]",
	Description = "Purchase Triple Katana",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana")
		lib:Notify({
			Title = "Success",
			Content = "Triple Katana purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Pipe [ $100,000 ]",
	Description = "Purchase Pipe",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe")
		lib:Notify({
			Title = "Success",
			Content = "Pipe purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Dual-Headed Blade [ $400,000 ]",
	Description = "Purchase Dual-Headed Blade",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade")
		lib:Notify({
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			Title = "Success",
			Content = "Dual-Headed Blade purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Bisento [ $1,200,000 ]",
	Description = "Purchase Bisento",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento")
		lib:Notify({
			Title = "Success",
			Content = "Bisento purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Soul Cane [ $750,000 ]",
	Description = "Purchase Soul Cane",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane")
		lib:Notify({
			Title = "Success",
			Content = "Soul Cane purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Pole v.2 [ ƒ5,000 / If have Rumble v2 full ]",
	Description = "Purchase Pole v.2",
	Callback = function()
		game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk")
		lib:Notify({
			Title = "Success",
			Content = "Pole v.2 purchased!",
			Duration = 3
		})
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	end
})
Tabs.Shop:AddSection("Gun Shop")
Tabs.Shop:AddButton({
	Title = "Slingshot [ $5,000 ]",
	Description = "Purchase Slingshot",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Slingshot")
		lib:Notify({
			Title = "Success",
			Content = "Slingshot purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Musket [ $8,000 ]",
	Description = "Purchase Musket",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Musket")
		lib:Notify({
			Title = "Success",
			Content = "Musket purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Flintlock [ $10,500 ]",
	Description = "Purchase Flintlock",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Flintlock")
		lib:Notify({
			Title = "Success",
			Content = "Flintlock purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Title = "Refined Slingshot [ $30,000 ]",
	Description = "Purchase Refined Slingshot",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock")
		lib:Notify({
			Title = "Success",
			Content = "Refined Slingshot purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Refined Flintlock [ $65,000 ]",
	Description = "Purchase Refined Flintlock",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
			"BuyItem",
			"Refined Flintlock"
		}))
		lib:Notify({
			Title = "Success",
			Content = "Refined Flintlock purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Cannon [ $100,000 ]",
	Description = "Purchase Cannon",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cannon")
		lib:Notify({
			Title = "Success",
			Content = "Cannon purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Kabucha [ ƒ1,500]",
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Description = "Purchase Kabucha",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2")
		lib:Notify({
			Title = "Success",
			Content = "Kabucha purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Bizarre Rifle [ 250 Ectoplasm ]",
	Description = "Purchase Bizarre Rifle",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Buy", 1)
		lib:Notify({
			Title = "Success",
			Content = "Bizarre Rifle purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddSection("Reroll Shop")
Tabs.Shop:AddButton({
	Title = "Reset Stats [ Use ƒ2,500 ]",
	Description = "Reset your character stats",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
		lib:Notify({
			Title = "Success",
			Content = "Stats reset!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Random Race [ Use ƒ3000 ]",
	Description = "Reroll for a random race",
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
		lib:Notify({
			Title = "Success",
			Content = "Race rerolled!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Race Ghoul",
	Description = "Purchase Ghoul race",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
			"Ectoplasm",
			"BuyCheck",
			4
		}))
		wait(0.5)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
			"Ectoplasm",
			"Change",
			4
		}))
		lib:Notify({
			Title = "Success",
			Content = "Ghoul race purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Race Cyborg [ Use ƒ2500 ]",
	Description = "Purchase Cyborg race",
	Callback = function()
		if not isBuying then
			isBuying = true
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
				"CyborgTrainer",
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
				"Buy"
			}))
			wait(0.5)
			isBuying = false
			lib:Notify({
				Title = "Success",
				Content = "Cyborg race purchased!",
				Duration = 3
			})
		end
	end
})
Tabs.Shop:AddSection("Accessories Shop")
Tabs.Shop:AddButton({
	Title = "Black Cape [ $50,000 ]",
	Description = "Purchase Black Cape",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
			"BuyItem",
			"Black Cape"
		}))
		lib:Notify({
			Title = "Success",
			Content = "Black Cape purchased!",
			Duration = 3
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Swordsman Hat [ $150,000 ]",
	Description = "Purchase Swordsman Hat",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
			"BuyItem",
			"Swordsman Hat"
		}))
		lib:Notify({
			Title = "Success",
			Content = "Swordsman Hat purchased!",
			Duration = 3
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		})
	end
})
Tabs.Shop:AddButton({
	Title = "Tomoe Ring [ $500,000 ]",
	Description = "Purchase Tomoe Ring",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({
			"BuyItem",
			"Tomoe Ring"
		}))
		lib:Notify({
			Title = "Success",
			Content = "Tomoe Ring purchased!",
			Duration = 3
		})
	end
})
Tabs.LL:AddSection("Stats Section")
Pointstat = Tabs.LL:CreateParagraph("StatPoints", {
	Title = "Stat Points",
	Content = ""
})
MeleeToggle = Tabs.LL:CreateToggle("Auto Melee", {
	Title = "Add Melee Stats",
	Description = "Automatically add points to Melee",
	Default = Config.LL["Melee Stats"]
})
MeleeToggle:OnChanged(function(p96)
	Config.LL["Melee Stats"] = p96
	SaveSetting()
end)
DefenseToggle = Tabs.LL:CreateToggle("Auto Defense", {
	Title = "Add Defense Stats",
	Description = "Automatically add points to Defense",
	Default = Config.LL["Defense Stats"]
})
DefenseToggle:OnChanged(function(p97)
	Config.LL["Defense Stats"] = p97
	SaveSetting()
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
end)
SwordToggle = Tabs.LL:CreateToggle("Auto Sword", {
	Title = "Add Sword Stats",
	Description = "Automatically add points to Sword",
	Default = Config.LL["Sword Stats"]
})
SwordToggle:OnChanged(function(p98)
	Config.LL["Sword Stats"] = p98
	SaveSetting()
end)
GunToggle = Tabs.LL:CreateToggle("Auto Gun", {
	Title = "Add Gun Stats",
	Description = "Automatically add points to Gun",
	Default = Config.LL["Gun Stats"]
})
GunToggle:OnChanged(function(p99)
	Config.LL["Gun Stats"] = p99
	SaveSetting()
end)
FruitToggle = Tabs.LL:CreateToggle("Auto Devil Fruit", {
	Title = "Add Devil Fruit Stats",
	Description = "Automatically add points to Devil Fruit",
	Default = Config.LL["Devil Fruit Stats"]
})
FruitToggle:OnChanged(function(p100)
	Config.LL["Devil Fruit Stats"] = p100
	SaveSetting()
end)
PointSlider = Tabs.LL:CreateSlider("PointSlider", {
	Title = "Point Amount",
	Description = "Set the amount of points to add",
	Default = Config.LL["Point Stats"],
	Min = 1,
	Max = 100,
	Rounding = 0
})
PointSlider:OnChanged(function(p101)
	Config.LL["Point Stats"] = p101
	SaveSetting()
end)
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
task.spawn(function()
	while wait(0.2) do
		Pointstat:SetValue("Stat Points: " .. tostring(game.Players.LocalPlayer.Data.Points.Value))

		if Config.LL["Point Stats"] <= game.Players.LocalPlayer.Data.Points.Value then
			if Config.LL["Melee Stats"] then
				local t18 = {
					"AddPoint",
					"Melee",
					Config.LL["Point Stats"]
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(t18))
			end

			if Config.LL["Defense Stats"] then
				local t19 = {
					"AddPoint",
					"Defense",
					Config.LL["Point Stats"]
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(t19))
			end

			if Config.LL["Sword Stats"] then
				local t20 = {
					"AddPoint",
					"Sword",
					Config.LL["Point Stats"]
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(t20))
			end

			if Config.LL["Gun Stats"] then
				local t21 = {
					"AddPoint",
					"Gun",
					Config.LL["Point Stats"]
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(t21))
			end

			if Config.LL["Devil Fruit Stats"] then
				local t22 = {
					"AddPoint",
					"Demon Fruit",
					Config.LL["Point Stats"]
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(t22))
			end
		end
	end
end)
Tabs.LL:AddSection("Player Gui Section")
Tabs.LL:CreateButton({
	Title = "Open Fruit Shop",
	Description = "Open Fruit Shop GUI",
	Callback = function()
		require(game.Players.LocalPlayer.PlayerGui:WaitForChild("Main"):WaitForChild("FruitShopAndDealer"):WaitForChild("Controller")):Open()
		lib:Notify({
			Title = "Success",
			Content = "Fruit Shop opened!",
			Duration = 2
		})
	end
})
Tabs.LL:CreateButton({
	Title = "Open Titles",
	Description = "Open Titles GUI",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({ "getTitles" }))
		game.Players.LocalPlayer.PlayerGui.Main.Titles.Visible = true
		lib:Notify({
			Title = "Success",
			Content = "Titles opened!",
			Duration = 2
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		})
	end
})
Tabs.LL:AddSection("Team Section")
Tabs.LL:CreateButton({
	Title = "Select Pirates",
	Description = "Join Pirates team",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
		lib:Notify({
			Title = "Success",
			Content = "Joined Pirates team!",
			Duration = 2
		})
	end
})
Tabs.LL:CreateButton({
	Title = "Select Marines",
	Description = "Join Marines team",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")
		lib:Notify({
			Title = "Success",
			Content = "Joined Marines team!",
			Duration = 2
		})
	end
})
Tabs.LL:AddSection("World Sea Section")
Tabs.LL:CreateButton({
	Title = "Teleport To First Sea [ World 1 ]",
	Description = "Travel to the beginner world",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
		lib:Notify({
			Title = "Teleport Successful",
			Content = "Arrived at First Sea!",
			Duration = 2
		})
	end
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
})
Tabs.LL:CreateButton({
	Title = "Teleport To Second Sea [ World 2 ]",
	Description = "Travel to the intermediate world",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
		lib:Notify({
			Title = "Teleport Successful",
			Content = "Arrived at Second Sea!",
			Duration = 2
		})
	end
})
Tabs.LL:CreateButton({
	Title = "Teleport To Third Sea [ World 3 ]",
	Description = "Travel to the advanced world",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
		lib:Notify({
			Title = "Teleport Successful",
			Content = "Arrived at Third Sea!",
			Duration = 2
		})
	end
})
Tabs.LL:AddSection("Teleport Section")
Islands = {}
RefreshIslands = function()
	table.clear(Islands)

	for _, child in pairs(game:GetService("Workspace")._WorldOrigin.Locations:GetChildren()) do
		table.insert(Islands, child.Name)
	end

	table.sort(Islands)
end
NPCs = {}
RefreshNPCs = function()
	table.clear(NPCs)

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	for _, child in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
		if child:IsA("Model") and child:FindFirstChild("HumanoidRootPart") and child:FindFirstChildOfClass("Humanoid") then
			table.insert(NPCs, child.Name)
		end
	end

	table.sort(NPCs)
end
DropdownIsland = Tabs.LL:CreateDropdown("Dropdown", {
	Title = "Select Island",
	Values = Islands,
	Multi = false,
	Default = Config.LL["Selected Island"]
})
DropdownIsland:OnChanged(function(p102)
	Config.LL["Selected Island"] = p102
	SaveSetting()
end)
Tabs.LL:CreateButton({
	Title = "Refresh Islands",
	Description = "Update the list of available islands",
	Callback = function()
		RefreshIslands()
		DropdownIsland:SetValues(Islands)
		lib:Notify({
			Title = "Success",
			Content = "Islands list refreshed",
			Duration = 2
		})
	end
})
ToggleIsland = Tabs.LL:CreateToggle("MyToggle", {
	Title = "Teleport To Island",
	Default = Config.LL["Teleeport Island"]
})
ToggleIsland:OnChanged(function(p103)
	Config.LL["Teleport Island"] = p103
	SaveSetting()
end)
DropdownNpc = Tabs.LL:CreateDropdown("Dropdown", {
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Title = "Select NPC",
	Values = NPCs,
	Multi = false,
	Default = ""
})
DropdownNpc:OnChanged(function(p104)
	Config.LL["Selected Npc"] = p104
	SaveSetting()
end)
Tabs.LL:CreateButton({
	Title = "Refresh NPCs",
	Description = "Update the list of available NPCs",
	Callback = function()
		RefreshNPCs()
		DropdownNpc:SetValues(NPCs)
		lib:Notify({
			Title = "Success",
			Content = "NPCs list refreshed",
			Duration = 2
		})
	end
})
ToggleNpc = Tabs.LL:CreateToggle("MyToggle", {
	Title = "Teleport To NPC",
	Default = false
})
ToggleNpc:OnChanged(function(p105)
	Config.LL["Teleport Npc"] = p105
	SaveSetting()
end)
task.spawn(function()
	while task.wait(1) do
		if Config.LL["Teleport Island"] then
			pcall(function()
				local v450 = game:GetService("Workspace")._WorldOrigin.Locations:FindFirstChild(Config.LL["Selected Island"])

				if v450 then
					topos(v450.CFrame)
				end
			end)
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		elseif Config.LL["Teleport Npc"] then
			pcall(function()
				local v451 = game:GetService("Workspace").NPCs:FindFirstChild(Config.LL["Selected Npc"])

				if v451 then
					if v451:FindFirstChild("HumanoidRootPart") then
						topos(v451.HumanoidRootPart.CFrame)
					end
				end
			end)
		end
	end
end)
Tabs.LL:AddSection("Server Section")
Region = {
	"Singapore",
	"United States",
	"Germany",
	"India",
	"Netherlands",
	"Australia"
}
Dropdown = Tabs.LL:CreateDropdown("Dropdown", {
	Title = "Choose Region",
	Values = Region,
	Multi = false,
	Default = 1
})
Dropdown:OnChanged(function(p106)
	Config.LL["Selected Region"] = p106
	SaveSetting()
	lib:Notify({
		Title = "Region Selected",
		Content = "Selected: " .. p106,
		Duration = 2
	})
end)
hopServerlow = function()
	local _, result = pcall(function()
		local response = game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU

		for _, v in ipairs(game:GetService("HttpService"):JSONDecode(response).data) do
			if v.playing < v.maxPlayers and v.playing <= 4 then
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v.id)

				break
			end
		end
	end)

	if result then
		game:GetService("TeleportService"):Teleport(game.PlaceId)
	end
end
hopServer = function()
	local ok, result = pcall(function()
		local response = game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Desc&limit=100")
		local data = game:GetService("HttpService"):JSONDecode(response)
		local v461

		for _, v in ipairs(data.data) do
			if v.playing > 5 and v.playing < v.maxPlayers - 2 then
				v461 = v

				break
			end
		end

		if not v461 then
			for _, v in ipairs(data.data) do
				if v.playing > 10 and v.playing < v.maxPlayers then
					v461 = v

					break
				end
			end
		end

		if not v461 and #data.data > 0 then
			v461 = data.data[1]
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		end

		if v461 then
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v461.id)
		else
			game:GetService("TeleportService"):Teleport(game.PlaceId)
		end
	end)

	if not ok or result then
		game:GetService("TeleportService"):Teleport(game.PlaceId)
	end
end
Tabs.LL:CreateButton({
	Title = "Server Hop",
	Description = "Hop to a different server in selected region",
	Callback = function()
		lib:Notify({
			Title = "Server Hop",
			Content = "Hopping to " .. Config.LL["Selected Region"] .. " server...",
			Duration = 2
		})
		hopServer()
	end
})
Tabs.LL:CreateButton({
	Title = "Server Hop Less Players",
	Description = "Hop to a different server in selected region",
	Callback = function()
		lib:Notify({
			Title = "Server Hop",
			Content = "Hopping to server with fewer players...",
			Duration = 2
		})
		hopServerlow()
	end
})
Tabs.LL:CreateButton({
	Title = "Rejoin Server",
	Description = "Rejoin current server",
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Callback = function()
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
		lib:Notify({
			Title = "Rejoining",
			Content = "Rejoining server...",
			Duration = 2
		})
	end
})
Job = Tabs.LL:CreateParagraph("Paragraph", {
	Title = "Server Info",
	Content = "ID: " .. game.JobId
})
Tabs.LL:CreateButton({
	Title = "Copy Job ID",
	Description = "Copy current server Job ID to clipboard",
	Callback = function()
		setclipboard(tostring(game.JobId))
		lib:Notify({
			Title = "Copied",
			Content = "Job ID copied to clipboard!",
			Duration = 2
		})
	end
})
Input = Tabs.LL:CreateInput("Input", {
	Title = "Teleport to Job ID",
	Default = "",
	Placeholder = "Enter Job ID",
	Numeric = false,
	Finished = false,
	Callback = function(p107)
		Config.LL["Job Id"] = string.gsub(p107, "`", "")
	end
})
Input:OnChanged(function(p108)
	Config.LL["Job Id"] = string.gsub(p108, "`", "")
end)
Tabs.LL:CreateButton({
	Title = "Teleport to Job ID",
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Description = "Teleport to specific server by Job ID",
	Callback = function()
		if Config.LL["Job Id"] then
			if Config.LL["Job Id"] == "" then
				lib:Notify({
					Title = "Error",
					Content = "Please enter a Job ID first",
					Duration = 2
				})

				return
			end

			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, Config.LL["Job Id"], game.Players.LocalPlayer)
			lib:Notify({
				Title = "Teleporting",
				Content = "Teleporting to Job ID: " .. Config.LL["Job Id"],
				Duration = 2
			})
		else
			lib:Notify({
				Title = "Error",
				Content = "Please enter a Job ID first",
				Duration = 2
			})
		end
	end
})
Tabs.Settings:AddSection("Setting Farm Section")
WeaponSet = {
	"Melee",
	"Sword",
	"Fruit",
	"Gun"
}
ChooseWeapon = Tabs.Settings:CreateDropdown("ChooseWeapon", {
	Title = "Choose Weapon",
	Values = WeaponSet,
	Multi = false,
	Default = Config.Settings["Selected Weapon"]
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
})
ChooseWeapon:OnChanged(function(p109)
	Config.Settings["Selected Weapon"] = p109
	SaveSetting()
end)
Tabs.Settings:CreateButton({
	Title = "Stop Tween!",
	Description = "Vxeze Hub | Studio",
	Callback = function()
		StopTween()
		lib:Notify({
			Title = "Success",
			Content = "Stop Tween",
			Duration = 2
		})
	end
})
Tabs.Settings:CreateButton({
	Title = "Fix Ui Button Error",
	Description = "Vxeze Hub | Studio",
	Callback = function()
		local LocalPlayer3 = game.Players.LocalPlayer
		local Humanoid = (LocalPlayer3.Character or LocalPlayer3.CharacterAdded:Wait()):FindFirstChild("Humanoid")

		if Humanoid then
			Humanoid.Health = 0
		end

		lib:Notify({
			Title = "Success",
			Content = "Fix Ui Button",
			Duration = 2
		})
	end
})
WaitQ = Tabs.Settings:CreateToggle("WaitQ", {
	Title = "Reduce Quest Acquisition Time [1-2s]",
	Description = "Delay Quest Acquisition",
	Default = Config.Settings["Delay Quest Acquisition"]
})
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
WaitQ:OnChanged(function(p110)
	Config.Settings["Delay Quest Acquisition"] = p110
	SaveSetting()
end)
AB = Tabs.Settings:CreateToggle("AllBring", {
	Title = "Gather Monsters In One Area",
	Description = "Bring Bone and Cake monsters in one place of the area",
	Default = Config.Settings["Gather Monsters In One Area"]
})
AB:OnChanged(function(p111)
	if p111 then
		if Config.Settings["Bring Mob"] then
			lib:Notify({
				Title = "Vxeze Hub | Studio",
				Content = "Please turn off 'Bring Mob' first before enabling this feature",
				Duration = 8
			})
			Config.Settings["Gather Monsters In One Area"] = false
			AB:SetValue(false)

			return
		end
	end

	Config.Settings["Gather Monsters In One Area"] = p111
	SaveSetting()
end)
Spin = Tabs.Settings:CreateToggle("SpinPosition", {
	Title = "Spin Position When Farm",
	Description = "Spin Position When Farm",
	Default = Config.Settings["Spin Position"]
})
Spin:OnChanged(function(p112)
	Config.Settings["Spin Position"] = p112
	SaveSetting()
end)
Distance = Tabs.Settings:CreateSlider("FarmDistance", {
	Title = "Farm Distance",
	Description = "Adjust the farm distance",
	Default = Config.Settings["Farm Distance"],
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Min = 10,
	Max = 50,
	Rounding = 1
})
Distance:OnChanged(function(p113)
	Config.Settings["Farm Distance"] = p113
	SaveSetting()
end)
Tween = Tabs.Settings:CreateSlider("TweenSpeed", {
	Title = "Player Tween Speed",
	Description = "Adjust the player's tween speed",
	Default = Config.Settings["Tween Speed"],
	Min = 200,
	Max = 350,
	Rounding = 1
})
Tween:OnChanged(function(p114)
	Config.Settings["Tween Speed"] = p114
	SaveSetting()
end)
BypassTp = Tabs.Settings:CreateToggle("BypassTp", {
	Title = "Reset Bypass Tp [ Beta ]",
	Description = "Teleport Reset Bypass",
	Default = Config.Settings["Bypass Tp"]
})
BypassTp:OnChanged(function(p115)
	Config.Settings["Bypass Tp"] = p115
	SaveSetting()
end)
BringSet = {
	"Low",
	"Normal",
	"High"
}
BringMode = Tabs.Settings:CreateDropdown("BringMobMode", {
	Title = "Bring Mob Mode",
	Values = BringSet,
	Multi = false,
	Default = Config.Settings["Bring Mob Mode"]
})
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
BringMode:OnChanged(function(p116)
	Config.Settings["Bring Mob Mode"] = p116
	SaveSetting()
end)
BringValue = Tabs.Settings:CreateSlider("BringValue", {
	Title = "Value Count Bring Mob",
	Description = "Value Set Count Bring Mob",
	Default = Config.Settings["Value Bring"],
	Min = 1,
	Max = 6,
	Rounding = 1
})
BringValue:OnChanged(function(p117)
	Config.Settings["Value Bring"] = p117
	SaveSetting()
end)
Bring = Tabs.Settings:CreateToggle("BringMob", {
	Title = "Bring Mob",
	Description = "Bring Mob When farm",
	Default = Config.Settings["Bring Mob"]
})
Bring:OnChanged(function(p118)
	if not p118 or not Config.Settings["Gather Monsters In One Area"] then
		Config.Settings["Bring Mob"] = p118
		SaveSetting()

		return
	end

	lib:Notify({
		Title = "Vxeze Hub | Studio",
		Content = "Please turn off 'Gather Monsters' first before enabling this feature",
		Duration = 8
	})
	Config.Settings["Bring Mob"] = false
	Bring:SetValue(false)
end)
Attack = Tabs.Settings:CreateToggle("FastAttack", {
	Title = "Fast Attack [M1/Melee/Sword]",
	Description = "[ Not Supported Gas M1 ]",
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	Default = Config.Settings["Fast Attack"]
})
Attack:OnChanged(function(p119)
	Config.Settings["Fast Attack"] = p119
	SaveSetting()
end)
AttackAnimation = Tabs.Settings:CreateToggle("AttackAnimation", {
	Title = "Attack Animation",
	Description = "Fast Attack Animation",
	Default = Config.Settings["Attack Animation"]
})
AttackAnimation:OnChanged(function(p120)
	Config.Settings["Attack Animation"] = p120
	SaveSetting()
end)
Health = Tabs.Settings:CreateSlider("Health", {
	Title = "Value Low Health",
	Description = "Value Up Y When Low Health",
	Default = Config.Settings["Value Low Health"],
	Min = 20,
	Max = 100,
	Rounding = 1
})
Health:OnChanged(function(p121)
	Config.Settings["Value Low Health"] = p121
	SaveSetting()
end)
LowHealth = Tabs.Settings:CreateToggle("LowHealth", {
	Title = "Up Y When Low Health",
	Description = "Set Value Low Health and Turn On",
	Default = Config.Settings["Up Y When Low Health"]
})
LowHealth:OnChanged(function(p122)
	Config.Settings["Up Y When Low Health"] = p122
	SaveSetting()
end)
Click = Tabs.Settings:CreateToggle("Click", {
	Title = "Auto Click [ M1 ]",
	Description = "Click M1",
	Default = Config.Settings["Auto Click"]
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
})
Click:OnChanged(function(p123)
	Config.Settings["Auto Click"] = p123
	SaveSetting()
end)
Hop30 = Tabs.Settings:CreateToggle("Hop30", {
	Title = "Change server after 30 minutes",
	Description = "Hopping server after 30 minutes",
	Default = Config.Settings["Change server after 30 minutes"]
})
Hop30:OnChanged(function(p124)
	Config.Settings["Change server after 30 minutes"] = p124
	SaveSetting()
end)
Tabs.Settings:AddSection("Graphic Section")
HideNotification = Tabs.Settings:CreateToggle("HideNotification", {
	Title = "Hide Notification",
	Description = "Invisible Notification",
	Default = Config.Settings["Hide Notification"]
})
HideNotification:OnChanged(function(p125)
	Config.Settings["Hide Notification"] = p125
	SaveSetting()
end)
Monster = Tabs.Settings:CreateToggle("Monster", {
	Title = "Hide Monster",
	Description = "Invisible Monsters",
	Default = Config.Settings["Hide Monster"]
})
Monster:OnChanged(function(p126)
	Config.Settings["Hide Monster"] = p126
	SaveSetting()
end)
Chat = Tabs.Settings:CreateToggle("Chat", {
	Title = "Hide Chat",
	Description = "Invisible Chat",
	Default = Config.Settings["Hide Chat"]
})
Chat:OnChanged(function(p127)
	Config.Settings["Hide Chat"] = p127
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	SaveSetting()
	game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, not p127)
end)
Leaderboard = Tabs.Settings:CreateToggle("Leaderboard", {
	Title = "Hide Leaderboard",
	Description = "Invisible Leaderboard",
	Default = Config.Settings["Hide Leaderboard"]
})
Leaderboard:OnChanged(function(p128)
	Config.Settings["Hide Leaderboard"] = p128
	SaveSetting()
	game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, not p128)
end)
Tabs.Settings:AddSection("Other Section")
SpawnPoint = Tabs.Settings:CreateToggle("SpawnPoint", {
	Title = "Set Spawn Point",
	Description = "Set Spawn Point",
	Default = Config.Settings["Set Spawn Point"]
})
SpawnPoint:OnChanged(function(p129)
	Config.Settings["Set Spawn Point"] = p129
	SaveSetting()
end)
ActiveV3 = Tabs.Settings:CreateToggle("Active Race V3", {
	Title = "Active Race V3",
	Description = "Auto activate Race V3",
	Default = Config.Settings["Active Race V3"]
})
ActiveV3:OnChanged(function(p130)
	Config.Settings["Active Race V3"] = p130
	SaveSetting()
end)
ActiveV4 = Tabs.Settings:CreateToggle("Active Race V4", {
	Title = "Active Race V4",
	Description = "Auto activate Race V4",
	Default = Config.Settings["Active Race V4"]
})
ActiveV4:OnChanged(function(p131)
	Config.Settings["Active Race V4"] = p131
	SaveSetting()
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
end)
Buso = Tabs.Settings:CreateToggle("Buso", {
	Title = "Active Buso",
	Description = "Active Haki Buso",
	Default = Config.Settings["Active Buso"]
})
Buso:OnChanged(function(p132)
	Config.Settings["Active Buso"] = p132
	SaveSetting()
end)
Ken = Tabs.Settings:CreateToggle("Ken", {
	Title = "Active Ken",
	Description = "Active Haki Ken",
	Default = Config.Settings["Active Ken"]
})
Ken:OnChanged(function(p133)
	Config.Settings["Active Ken"] = p133
	SaveSetting()
end)
Rejoin = Tabs.Settings:CreateToggle("Rejoin", {
	Title = "Active Rejoin",
	Description = "Rejoin if disconnected or get kicked",
	Default = Config.Settings["Active Rejoin"]
})
Rejoin:OnChanged(function(p134)
	Config.Settings["Active Rejoin"] = p134
	SaveSetting()
end)
Cheat = Tabs.Settings:CreateToggle("Cheat", {
	Title = "Active Anti Cheat",
	Description = "Reset Flags",
	Default = Config.Settings["Active Anti Cheat"]
})
Cheat:OnChanged(function(p135)
	Config.Settings["Active Anti Cheat"] = p135
	SaveSetting()
end)
task.spawn(function()
	while wait() do
		pcall(function()
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			if Config.Settings["Selected Weapon"] == "Melee" then
				for _, child in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if child.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(child.Name)) then
							Config.Settings.Weapon = child.Name
						end
					end
				end
			elseif Config.Settings["Selected Weapon"] == "Sword" then
				for _, child in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if child.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(child.Name)) then
							Config.Settings.Weapon = child.Name
						end
					end
				end
			elseif Config.Settings["Selected Weapon"] == "Gun" then
				for _, child in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if child.ToolTip == "Gun" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(child.Name)) then
							Config.Settings.Weapon = child.Name
						end
					end
				end
			elseif Config.Settings["Selected Weapon"] == "Fruit" then
				for _, child in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if child.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(child.Name)) then
							Config.Settings.Weapon = child.Name
						end
					end
				end
			end
		end)
	end
end)
bonePositions = {
	["Reborn Skeleton"] = CFrame.new(-8769.58984, 142.13063, 6055.27637),
	["Living Zombie"] = CFrame.new(-10156.4531, 138.652481, 5964.5752),
	["Demonic Soul"] = CFrame.new(-9525.17188, 172.13063, 6152.30566),
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	["Posessed Mummy"] = CFrame.new(-9570.88281, 5.81831884, 6187.86279)
}
cakePositions = {
	["Cookie Crafter"] = CFrame.new(-2333.28052, 37.8239059, -12093.2861),
	["Cake Guard"] = CFrame.new(-1575.56433, 37.8238907, -12416.2529),
	["Baking Staff"] = CFrame.new(-1872.35742, 37.8239517, -12899.4248),
	["Head Baker"] = CFrame.new(-2223.1416, 53.5283203, -12854.752)
}
task.spawn(function()
	while task.wait(0.1) do
		if Config.Settings["Gather Monsters In One Area"] then
			if Config.Main["Selected Method Farm"] == "Bone" and Config.Main["Start Farm Method"] then
				pcall(function()
					for _, child in pairs(game.Workspace.Enemies:GetChildren()) do
						if bonePositions[child.Name] then
							local v478 = bonePositions[child.Name]

							if v478 then
								child.HumanoidRootPart.CFrame = v478
							end

							child.Head.CanCollide = false
							child.Humanoid.Sit = false
							child.Humanoid:ChangeState(14)
							child.HumanoidRootPart.CanCollide = false
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						end
					end
				end)
			elseif Config.Main["Selected Method Farm"] == "Cake" and Config.Main["Start Farm Method"] then
				pcall(function()
					for _, child in pairs(game.Workspace.Enemies:GetChildren()) do
						if cakePositions[child.Name] then
							local v481 = cakePositions[child.Name]

							if v481 then
								child.HumanoidRootPart.CFrame = v481
							end

							child.Head.CanCollide = false
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
							child.Humanoid.Sit = false
							child.Humanoid:ChangeState(14)
							child.HumanoidRootPart.CanCollide = false
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						end
					end
				end)
			end
		end
	end
end)
task.spawn(function()
	local n12 = 0

	while task.wait() do
		if Config.Settings["Spin Position"] then
			local farmDistance = Config.Settings["Farm Distance"]
			local v484 = math.rad(n12)

			Pos = CFrame.new(math.cos(v484) * 20, farmDistance, math.sin(v484) * 20)
			n12 = (n12 + 30) % 360
		else
			Pos = CFrame.new(0, Config.Settings["Farm Distance"], 0)
		end
	end
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if Config.Settings["Bring Mob Mode"] == "Low" then
				BringDistance = 150
			elseif Config.Settings["Bring Mob Mode"] == "Normal" then
				BringDistance = 250
			elseif Config.Settings["Bring Mob Mode"] == "High" then
				BringDistance = 350
			else
				BringDistance = 250
			end
		end)
	end
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
end)

local t23 = {}
local t24 = {}
local t25 = {}

if not NameMon then
	NameMon = ""
end

if not MonFarm then
	MonFarm = ""
end

if not PosMon then
	PosMon = nil
end

if not BringDistance then
	BringDistance = 250
end

GetPosMonVector3 = function()
	if not PosMon then
		return nil
	end

	if typeof(PosMon) == "CFrame" then
		return PosMon.Position
	end

	if typeof(PosMon) == "Vector3" then
		return PosMon
	end

	if typeof(PosMon) == "Instance" then
		if PosMon:IsA("BasePart") then
			return PosMon.Position
		end
	end
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU

	return nil
end
IsValidMob = function(p136)
	if not p136 or not p136.Parent then
		return false
	end

	if not p136:FindFirstChild("Humanoid") or not p136:FindFirstChild("HumanoidRootPart") then
		return false
	end

	if p136.Humanoid.Health <= 0 then
		return false
	end

	if p136.Name ~= NameMon then
		return false
	end

	if p136.Name == "Ice Admiral" or p136.Name == "Don Swan" or p136.Name == "Saber Expert" or p136.Name == "Longma" then
		return false
	end

	local v488 = GetPosMonVector3()

	if not v488 then
		return false
	end

	if BringDistance < (p136.HumanoidRootPart.Position - v488).Magnitude then
		return false
	end

	if table.find(t23, p136) then
		return false
	end

	return true
end
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
LockMob = function(p137)
	if not p137 or not p137.Parent then
		return false
	end

	local HumanoidRootPart = p137:FindFirstChild("HumanoidRootPart")
	local Humanoid = p137:FindFirstChild("Humanoid")

	if not HumanoidRootPart or not Humanoid then
		return false
	end

	local v491 = GetPosMonVector3()

	if not v491 then
		return false
	end

	local v492 = true

	if syn and isnetworkowner then
		local ok, result = pcall(function()
			return isnetworkowner(HumanoidRootPart)
		end)

		if ok and type(result) == "boolean" then
			v492 = result
		end
	end

	if v492 then
		local now = tick()

		if not t24[p137] or now - t24[p137] > 1 then
			t24[p137] = now

			for _, child in pairs(HumanoidRootPart:GetChildren()) do
				if child:IsA("BodyMover") then
					child:Destroy()
				end
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			end
		end

		pcall(function()
			HumanoidRootPart.CFrame = CFrame.new(v491)

			if not Humanoid:GetAttribute("OriginalWalkSpeed") then
				Humanoid:SetAttribute("OriginalWalkSpeed", Humanoid.WalkSpeed)
			end

			if not Humanoid:GetAttribute("OriginalJumpPower") then
				Humanoid:SetAttribute("OriginalJumpPower", Humanoid.JumpPower)
			end

			Humanoid.WalkSpeed = 0
			Humanoid.JumpPower = 0
			Humanoid.Sit = false
			Humanoid:ChangeState(14)

			if p137:FindFirstChild("Head") then
				p137.Head.CanCollide = false
			end

			HumanoidRootPart.CanCollide = false
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		end)

		if HumanoidRootPart:FindFirstChild("HoldPos") then
			HumanoidRootPart.HoldPos.Position = v491
		else
			local BodyPosition = Instance.new("BodyPosition")

			BodyPosition.Name = "HoldPos"
			BodyPosition.MaxForce = Vector3.new(1e9, 1e9, 1e9)
			BodyPosition.D = 4000
			BodyPosition.P = 60000
			BodyPosition.Position = v491
			BodyPosition.Parent = HumanoidRootPart
		end

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		if HumanoidRootPart:FindFirstChild("HoldGyro") then
			HumanoidRootPart.HoldGyro.CFrame = CFrame.new(v491)
		else
			local BodyGyro = Instance.new("BodyGyro")

			BodyGyro.Name = "HoldGyro"
			BodyGyro.MaxTorque = Vector3.new(1e9, 1e9, 1e9)
			BodyGyro.P = 50000
			BodyGyro.CFrame = CFrame.new(v491)
			BodyGyro.Parent = HumanoidRootPart
		end

		if not t25[p137] then
			t25[p137] = {
				health = Humanoid.Health,
				time = tick()
			}
		end
	end

	return v492
end
CheckGhostMob = function(p138)
	if not p138 or not p138.Parent then
		return true
	end

	local v500 = t25[p138]

	if not v500 then
		return false
	end

	local Humanoid = p138:FindFirstChild("Humanoid")

	if not Humanoid then
		return true
	end

	local now = tick()
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU

	if now - v500.time >= 5 then
		if math.abs(Humanoid.Health - v500.health) < 1 then
			return true
		end

		t25[p138] = {
			health = Humanoid.Health,
			time = now
		}
	end

	return false
end
ReleaseMob = function(p139)
	if p139 and p139.Parent then
		local HumanoidRootPart = p139:FindFirstChild("HumanoidRootPart")

		if HumanoidRootPart then
			pcall(function()
				for _, child in pairs(HumanoidRootPart:GetChildren()) do
					if child:IsA("BodyMover") then
						child:Destroy()
					end
				end

				HumanoidRootPart.CanCollide = true
			end)
		end

		if p139:FindFirstChild("Head") then
			p139.Head.CanCollide = true
		end

		local Humanoid = p139:FindFirstChild("Humanoid")

		if Humanoid then
			pcall(function()
				Humanoid.WalkSpeed = Humanoid:GetAttribute("OriginalWalkSpeed") or 16
				Humanoid.JumpPower = Humanoid:GetAttribute("OriginalJumpPower") or 50
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
				Humanoid:SetAttribute("OriginalWalkSpeed", nil)
				Humanoid:SetAttribute("OriginalJumpPower", nil)
				Humanoid:ChangeState(1)
			end)
		end
	end

	t25[p139] = nil
	t24[p139] = nil
end
PullMobs = function()
	if Config then
		if Config.Settings and Config.Settings["Bring Mob"] and PosMon and NameMon and NameMon ~= "" then
			if not GetPosMonVector3() then
				return
			end

			for i = #t23, 1, -1 do
				local v508 = t23[i]

				if not v508 or not v508.Parent or not v508:FindFirstChild("Humanoid") or v508.Humanoid.Health <= 0 or v508.Name ~= NameMon then
					ReleaseMob(v508)
					table.remove(t23, i)
				elseif CheckGhostMob(v508) then
					ReleaseMob(v508)
					table.remove(t23, i)
				else
					LockMob(v508)
				end
			end

			if Config.Settings["Value Bring"] > #t23 then
				if workspace:FindFirstChild("Enemies") then
					for _, child in pairs(workspace.Enemies:GetChildren()) do
						if Config.Settings["Value Bring"] <= #t23 then
							break
						end

						if IsValidMob(child) and LockMob(child) then
							table.insert(t23, child)
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
						end
					end
				end
			end

			return
		end
	end
end

if not syn then
	isnetworkowner = function()
		return true
	end
end

task.spawn(function()
	while task.wait(0.05) do
		pcall(PullMobs)
	end
end)
task.spawn(function()
	while task.wait(0.05) do
		pcall(function()
			if Config then
				if Config.Settings and Config.Settings["Bring Mob"] and PosMon and MonFarm and MonFarm ~= "" then
					local v511 = true

					for i = #t23, 1, -1 do
						local v513 = t23[i]

						if v513 and v513.Parent and v513:FindFirstChild("Humanoid") and not (v513.Humanoid.Health <= 0) and v513.Name == MonFarm then
							v511 = false

							if CheckGhostMob(v513) then
								ReleaseMob(v513)
								table.remove(t23, i)
							else
								LockMob(v513)
							end
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
						else
							ReleaseMob(v513)
							table.remove(t23, i)
						end
					end

					if not v511 or Config.Settings["Value Bring"] <= #t23 then
						return
					end

					local n13 = 0

					if workspace:FindFirstChild("Enemies") then
						for _, child in pairs(workspace.Enemies:GetChildren()) do
							if Config.Settings["Value Bring"] - #t23 <= n13 then
								break
							end

							if child and child.Name == MonFarm and child:FindFirstChild("Humanoid") and child:FindFirstChild("HumanoidRootPart") and child.Humanoid.Health > 0 then
								local v517 = GetPosMonVector3()

								if v517 and (child.HumanoidRootPart.Position - v517).Magnitude <= BringDistance and LockMob(child) then
									table.insert(t23, child)
									n13 += 1
								end
							end
						end
					end
				end
			end
		end)
	end
end)
Attack = function()
	local RunService2 = game:GetService("RunService")
	local Players2 = game:GetService("Players")
	local ReplicatedStorage2 = game:GetService("ReplicatedStorage")
	local Workspace = game:GetService("Workspace")
	local LocalPlayer3 = Players2.LocalPlayer
	local Character = LocalPlayer3.Character or LocalPlayer3.CharacterAdded:Wait()
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
	local Humanoid = Character:FindFirstChildOfClass("Humanoid")

	LocalPlayer3.CharacterAdded:Connect(function(character_)
		Character = character_
		Humanoid = character_:WaitForChild("Humanoid")
	end)

	local Modules = ReplicatedStorage2:WaitForChild("Modules")
	local v526
	local v527
	local ok, result = pcall(function()
		return require(Modules:WaitForChild("CombatUtil"))
	end)
	local ok2, result2 = pcall(function()
		return require(Modules:WaitForChild("WeaponData"))
	end)

	if ok then
		v526 = result
	end

	if ok2 then
		v527 = result2
	end

	local Net = Modules:FindFirstChild("Net")
	local RERegisterAttack = Net and (Net:FindFirstChild("RE/RegisterAttack") or Net:FindFirstChild("RegisterAttack"))
	local RERegisterHit = Net and (Net:FindFirstChild("RE/RegisterHit") or Net:FindFirstChild("RegisterHit"))
	local SendHitsToServer
	local PlayerScripts = LocalPlayer3:FindFirstChild("PlayerScripts")

	if PlayerScripts then
		for _, descendant in ipairs(PlayerScripts:GetDescendants()) do
			if descendant:IsA("ModuleScript") then
				if descendant.Name:find("Combat") then
					local ok3, result3 = pcall(require, descendant)

					if ok3 and result3 and result3.SendHitsToServer then
						SendHitsToServer = result3.SendHitsToServer

-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
						break
					end
				end
			end
		end
	end

	if not SendHitsToServer and _G.SendHitsToServer then
		SendHitsToServer = _G.SendHitsToServer
	end

	if v526 then
		local hookfunction_ = hookfunction or function()
		end

		pcall(function()
			hookfunction_(v526.GetComboPaddingTime, function()
				return 0
			end)
			hookfunction_(v526.GetAttackCancelMultiplier, function()
				return 0
			end)
			hookfunction_(v526.CanAttack, function()
				return true
			end)
		end)
	end

	local n14 = 0

	IsEntityAlive = function(p140)
		if not p140 then
			return false
		end

		local Humanoid2 = p140:FindFirstChildOfClass("Humanoid")

		return Humanoid2 and Humanoid2.Health > 0
	end
	GetEnemiesInRange = function(p141)
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		local t26 = {}

		if not Character then
			return t26
		end

		local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

		if not HumanoidRootPart then
			return t26
		end

		local Position5 = HumanoidRootPart.Position

		if Workspace:FindFirstChild("Enemies") then
			for _, child in ipairs(Workspace.Enemies:GetChildren()) do
				local HumanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")

				if HumanoidRootPart2 and IsEntityAlive(child) and (HumanoidRootPart2.Position - Position5).Magnitude <= p141 then
					table.insert(t26, child)
				end
			end
		end

		return t26
	end

	local t27 = {
		"RightLowerArm",
		"RightUpperArm",
		"LeftLowerArm",
		"LeftUpperArm",
		"RightHand",
		"LeftHand",
		"Head",
		"UpperTorso"
	}

	GetHitPart = function(p142)
		for _, v in ipairs(t27) do
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			local v553 = p142:FindFirstChild(v)

			if v553 then
				return v553
			end
		end

		return p142:FindFirstChild("HumanoidRootPart") or p142.PrimaryPart
	end
	PrepareTargets = function(p143)
		local v554
		local t28 = {}

		for _, v in ipairs(p143) do
			if not v:GetAttribute("IsBoat") then
				local v558 = GetHitPart(v)

				if v558 then
					table.insert(t28, {
						v,
						v558
					})
					v554 = v554 or v558
				end
			end
		end

		return v554, t28
	end
	SendAttack = function(p144, p145)
		if not p144 or #p145 == 0 then
			return false
		end

		return (pcall(function()
			if SendHitsToServer then
				SendHitsToServer(p144, p145)

				return true
			end
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU

			if not RERegisterHit then
				return false
			end

			RERegisterHit:FireServer(p144, p145)

			return true
		end))
	end
	AttackNoCooldown = function()
		if not Character then
			return false
		end

		local now = tick()

		if now - n14 < 0.05 then
			return false
		end

		n14 = now

		if not Character:FindFirstChildOfClass("Tool") then
			return false
		end

		local v560 = GetEnemiesInRange(50)

		if #v560 == 0 then
			return false
		end

		local v561, v562 = PrepareTargets(v560)

		if not v561 then
			return false
		end

		if not pcall(function()
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			if RERegisterAttack then
				RERegisterAttack:FireServer(0)
			end
		end) then
			return false
		end

		task.wait(0.01)

		return SendAttack(v561, v562)
	end
	CheckAndUseBloxFruit = function()
		if not Character then
			return false, nil
		end

		local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

		if not HumanoidRootPart then
			return false, nil
		end

		local Position5 = HumanoidRootPart.Position

		if Workspace:FindFirstChild("Enemies") then
			for _, child in ipairs(Workspace.Enemies:GetChildren()) do
				local HumanoidRootPart2 = child:FindFirstChild("HumanoidRootPart")

				if not HumanoidRootPart2 then
					continue
				end

				if not IsEntityAlive(child) then
					continue
				end

				if (HumanoidRootPart2.Position - Position5).Magnitude <= 30 then
					return true, (child:FindFirstChild("UpperTorso") or child:FindFirstChild("Head") or HumanoidRootPart2).Position
				end
			end
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
		end

		return false, nil
	end

	local t29 = {}
	local n15 = 0

	RunService2.Heartbeat:Connect(function()
		if not Config.Settings["Fast Attack"] then
			return
		end

		if not Character or not Humanoid then
			return
		end

		if not AttackNoCooldown() then
			return
		end

		local now = tick()

		if now - n15 < 0.1 then
			return
		end

		n15 = now

		local Tool = Character:FindFirstChildOfClass("Tool")

		if not Tool then
			return
		end

		if Config.Settings["Attack Animation"] and v527 then
			local attribute = Tool:GetAttribute("WeaponName")

			if attribute and v527[attribute] then
				local v573 = v527[attribute]
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU

				if v573.Moveset and v573.Moveset.Basic and #v573.Moveset.Basic >= 2 then
					local v574 = v573.Moveset.Basic[2]

					if v574 and v574.AnimationId then
						if not t29[v574.AnimationId] then
							local Animation = Instance.new("Animation")

							Animation.AnimationId = v574.AnimationId
							t29[v574.AnimationId] = Humanoid:LoadAnimation(Animation)
						end

						local v576 = t29[v574.AnimationId]

						if v576 then
							v576:Stop()
							v576:Play(0)
							v576:AdjustSpeed(0.25)
						end
					end
				end
			end
		end
	end)
	pcall(function()
		require(ReplicatedStorage2.Util.CameraShaker):Stop()
	end)
end
task.spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		if Config.Settings["Auto Click"] then
			pcall(function()
				local VirtualInputManager = game:GetService("VirtualInputManager")

				VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 0)
				task.wait()
				VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, game, 0)
			end)
		end
	end)
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
end)
task.spawn(function()
	while task.wait() do
		if Config.Settings["Change server after 30 minutes"] then
			task.wait(1800)
			lib:Notify({
				Title = "Start Hopping!",
				Content = "Hopping...",
				Duration = 2
			})
			hopServer()
		end
	end
end)
task.spawn(function()
	while task.wait(0.2) do
		if Config.Settings["Hide Notification"] then
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
		else
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
		end
	end
end)
task.spawn(function()
	while task.wait(0.2) do
		if Config.Settings["Hide Monster"] then
			pcall(function()
				for _, descendant in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if descendant.ClassName == "MeshPart" then
						descendant.Transparency = 1
					end
				end

				for _, descendant in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if descendant.Name == "Head" then
						descendant.Transparency = 1
					end
				end

				for _, descendant in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
					if descendant.ClassName == "Accessory" then
						descendant.Handle.Transparency = 1
					end
				end

				for _, descendant in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if descendant.ClassName == "Decal" then
						descendant.Transparency = 1
					end
				end
			end)
		else
			pcall(function()
				for _, descendant in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if descendant.ClassName == "MeshPart" then
						descendant.Transparency = 0
					end
				end

				for _, descendant in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if descendant.Name == "Head" then
						descendant.Transparency = 0
					end
				end

				for _, descendant in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if descendant.ClassName == "Accessory" then
						descendant.Handle.Transparency = 0
					end
				end

				for _, descendant in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if descendant.ClassName == "Decal" then
						descendant.Transparency = 0
					end
				end
			end)
		end
	end
end)
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
task.spawn(function()
	while task.wait() do
		if Config.Settings["Set Spawn Point"] then
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
			end)
		end

		if Config.Settings["Active Buso"] then
			pcall(function()
				if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
					AutoHaki()
				end
			end)
		end

		if Config.Settings["Active Ken"] then
			pcall(function()
				if LocalPlayer:GetAttribute("KenDodgesLeft") > 0 then
					game:GetService("ReplicatedStorage").Remotes.CommE:FireServer(unpack({
						"Ken",
						true
					}))
				end
			end)
		end

		if Config.Settings["Active Rejoin"] then
			pcall(function()
				game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
					if child.Name == "ErrorPrompt" and child:FindFirstChild("MessageArea") then
						if child.MessageArea:FindFirstChild("ErrorFrame") then
							game:GetService("TeleportService"):Teleport(game.PlaceId)
						end
					end
				end)
			end)
		end

		if Config.Settings["Active Race V3"] then
-- This source was deobfuscated by  |toshiroXzk Hub.
-- https://discord.gg/qwfjvNGwU
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
			end)
		end

		if Config.Settings["Active Race V4"] then
			pcall(function()
				if tick() - 0 >= 0.5 then
					local LocalPlayer3 = game.Players.LocalPlayer
					local Character = LocalPlayer3.Character or LocalPlayer3.CharacterAdded:Wait()

					if Character and Character:FindFirstChild("RaceEnergy") and Character:FindFirstChild("RaceTransformed") and Character.RaceEnergy.Value >= 1 and not Character.RaceTransformed.Value then
						local VirtualInputManager = game:GetService("VirtualInputManager")

						VirtualInputManager:SendKeyEvent(true, "Y", false, game)
						task.wait(0.05)
						VirtualInputManager:SendKeyEvent(false, "Y", false, game)
					end
				end
			end)
		end

		if Config.Settings["Active Anti Cheat"] then
			pcall(function()
				for _, descendant in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
					if descendant:IsA("LocalScript") and (descendant.Name == "General" or descendant.Name == "Shiftlock" or descendant.Name == "FallDamage" or descendant.Name == "4444" or descendant.Name == "CamBob" or descendant.Name == "JumpCD" or descendant.Name == "Looking" or descendant.Name == "Run") then
						descendant:Destroy()
					end
				end

				for _, descendant in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
					if descendant:IsA("LocalScript") and (descendant.Name == "RobloxMotor6DBugFix" or descendant.Name == "Clans" or descendant.Name == "Codes" or descendant.Name == "CustomForceField" or descendant.Name == "MenuBloodSp" or descendant.Name == "PlayerList") then
						descendant:Destroy()
					end
				end
			end)
		end
	end
end)