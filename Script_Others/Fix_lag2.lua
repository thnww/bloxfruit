local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local Terrain = workspace:FindFirstChildOfClass("Terrain")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

local isMobile = UserInputService.TouchEnabled and not UserInputService.MouseEnabled

-- 1. TỐI ƯU HÓA ÁNH SÁNG & ĐỒ HỌA TOÀN CỤC
Lighting.GlobalShadows = false
Lighting.FogEnd = 9e9
Lighting.Brightness = 1
Lighting.ClockTime = 14

pcall(function()
    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
end)

pcall(function()
    if setfpscap then
        setfpscap(25) -- Khóa 25 FPS chống nóng máy khi treo
    end
end)

for _, v in pairs(Lighting:GetChildren()) do
    if v:IsA("PostEffect") or v:IsA("Sky") or v:IsA("Atmosphere") or v:IsA("BlurEffect") or v:IsA("SunRaysEffect") then
        v:Destroy()
    end
end

if Terrain then
    Terrain.WaterWaveSize = 0
    Terrain.WaterWaveSpeed = 0
    Terrain.WaterReflectance = 0
    Terrain.WaterTransparency = 0
    pcall(function()
        Terrain.Decoration = false
    end)
end

-- 2. HÀM TỐI ƯU HÓA & KHỬ MÀU TOÀN BỘ (KỂ CẢ NPC VÀ PLAYER)
local function OptimizeObject(obj)
    if obj:IsA("ParticleEmitter") or obj:IsA("Trail") or obj:IsA("Beam") or obj:IsA("Fire") or obj:IsA("Smoke") or obj:IsA("Sparkles") or obj:IsA("Explosion") then
        obj.Enabled = false
    elseif obj:IsA("Decal") or obj:IsA("Texture") then
        obj:Destroy()
    elseif obj:IsA("BasePart") or obj:IsA("MeshPart") or obj:IsA("UnionOperation") then
        obj.Material = Enum.Material.SmoothPlastic
        obj.Color = Color3.fromRGB(210, 210, 210)
        obj.Reflectance = 0
        obj.CastShadow = false
    elseif obj:IsA("Shirt") or obj:IsA("Pants") or obj:IsA("ShirtGraphic") or obj:IsA("Accessory") then
        if isMobile then
            obj:Destroy()
        end
    end
end

task.spawn(function()
    local descendants = workspace:GetDescendants()
    for i = 1, #descendants do
        local v = descendants[i]
        pcall(function()
            OptimizeObject(v)
        end)
        if i % 200 == 0 then
            task.wait()
        end
    end
end)

workspace.DescendantAdded:Connect(function(v)
    task.wait(0.1)
    pcall(function()
        OptimizeObject(v)
    end)
end)

local ReplicatedStorage = game:GetService("ReplicatedStorage")
if ReplicatedStorage:FindFirstChild("Effect") then
    for _, v in pairs(ReplicatedStorage.Effect:GetDescendants()) do
        if v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Beam") then
            v.Enabled = false
        end
    end
end

-- 3. CƠ CHẾ DỌN RAM THÔNG MINH CHO TREO MÁY 1-2 TIẾNG (RIÊNG MOBILE)
if isMobile then
    task.spawn(function()
        local longAfkCounter = 0
        while true do
            task.wait(60) -- Nhịp kiểm tra mỗi 60 giây
            longAfkCounter = longAfkCounter + 1
            
            pcall(function()
                -- Cứ mỗi 60 giây dọn rác nhẹ nhàng, chống sốc bộ nhớ
                collectgarbage("step", 200)
                
                -- Cứ mỗi 15 phút (15 vòng lặp) sẽ thực hiện xả sâu bộ nhớ một lần để duy trì độ mượt khi treo lâu
                if longAfkCounter >= 15 then
                    longAfkCounter = 0
                    collectgarbage("collect")
                end
            end)
        end
    end)
end

RunService.RenderStepped:Connect(function(dt)
    frameCount = frameCount + 1
    local now = tick()
    if now - lastTime >= 1 then
        currentFPS = math.floor(frameCount / (now - lastTime))
        frameCount = 0
        lastTime = now
    end
    
    local currentPlayers = #Players:GetPlayers()
    local maxPlayers = Players.MaxPlayers
    
    TextLabel.Text = string.format("FPS: %d  |  Players: %d/%d", currentFPS, currentPlayers, maxPlayers)
end)
