--[[Original Script By Nihilize :https://pastebin.com/raw/QLtH2v8i
Remade By TrAXzHJ
Enjoy The Script
Triger Bot Hotkey = 't'
Press 'LeftAlt' respawn
Press 'RightAlt' to invisible
Press 'M' to no ClientInputHandler
Press 'E' to get Guns
Press 'Q' to Visible Main Gui
Press 'Z' to Disable Chat
Press 'X' to Disable Bubble Chat]]


local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")
local CoolColor = Color3.fromRGB(33, 33, 33)
FavoriteColor = Color3.fromRGB(81, 81, 81)
local function GetPos()
	print(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
end
local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
	Title = "TrAXzHJ Gui Loaded";
	Text = "v 0.6";

Green = Color3.fromRGB(0,255,0)
CoolColor = Color3.fromRGB(33,33,33)
colorxd = Color3.fromRGB(50,50,50)
Home = script.Parent
hud = Home.hud
intro = Home.intro
hud.GunFrame.Frame.TextLabel:Destroy()
for i,v2 in next, {hud.Topbar.titleBar, hud.Topbar.Pulldownmenu, hud.Topbar.Pulldownmenu.tb, hud.ClockFrame,hud.MenuButton, hud.MenuButton.MenuFrame.respawn, hud.MenuButton.MenuFrame.votekick, hud.MenuButton.MenuFrame,hud.MenuButton.MenuFrame.gamepasses,hud.StaminaFrame,hud.GunFrame,hud.GunFrame,hud.GunFrame.Frame,hud.AddedGui.mousehover,hud.AddedGui.tooltip,hud.CameraFrame,hud.CameraFrame.Frame} do
    v2.BackgroundColor3 = CoolColor
    v2.BorderColor3 = CoolColor
end
hud.MenuButton.MenuFrame.respawn.TextColor3 = Green
hud.Topbar.Pulldownmenu.Frame.Description.TextColor3 = Color3.fromRGB(214, 214, 214)
for i,v2 in next,{intro.NoticeFrame,intro.okFrame} do
    v2.BackgroundColor3 = CoolColor
    v2.BorderColor3 = CoolColor
end
for i,v2 in next,{intro.okFrame.Frame,intro.NoticeFrame.tb1,intro.NoticeFrame.tb2,intro.okFrame.tb1,intro.Content.Buttons.help,intro.Content.Buttons.teamsGui,intro.Content.menus.premium.riot} do
    v2.BackgroundColor3 = colorxd
    v2.BorderColor3 = colorxd
end
intro.NoticeFrame.Frame.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
intro.NoticeFrame.Frame.BorderColor3 = Color3.fromRGB(150, 150, 150)
intro.Content.Buttons.premium.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
intro.Content.Buttons.premium.BorderColor3 = Color3.fromRGB(150, 150, 150)
intro.Content.menus.premium.TextLabel.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
intro.Content.menus.premium.TextLabel.BorderColor3 = Color3.fromRGB(150, 150, 150)
})

local function getGuns()
	--Remington870--------------------------------------------
	game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP) --Remington 870
	----------------------------------------------------------

	--M4A1----------------------------------------------------
	if (game:GetService("MarketplaceService"):UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 96651)) then
		game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
	else --If you don't have gamepass for M4A1 then you will get the converted AK-47
		game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP) 
		require(game.Players.LocalPlayer.Backpack:FindFirstChild("AK-47"):FindFirstChild("GunStates"))["FireRate"] = 0.0875
		require(game.Players.LocalPlayer.Backpack:FindFirstChild("AK-47"):FindFirstChild("GunStates"))["Range"] = 800
		require(game.Players.LocalPlayer.Backpack:FindFirstChild("AK-47"):FindFirstChild("GunStates"))["Spread"] = 18
		require(game.Players.LocalPlayer.Backpack:FindFirstChild("AK-47"):FindFirstChild("GunStates"))["ReloadTime"] = 2
	end
	----------------------------------------------------------
	
	--AK-47---------------------------------------------------
	if (game:GetService("MarketplaceService"):UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 96651)) then
		--If you don't have gamepass for M4A1 then you will not get this AK-47
		game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
	end
	----------------------------------------------------------
	
	--M9---------------------------------------------------
	game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
	if game.Players.LocalPlayer:FindFirstChild("M9") then
		game.Players.LocalPlayer:FindFirstChild("M9").Parent = game.Players.LocalPlayer.Backpack
	end
	-------------------------------------------------------
end

-- Instances:
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Garage = Instance.new("TextButton")
local Hitmarker = Instance.new("TextButton")
local NoShield = Instance.new("TextButton")
local SuperPunch = Instance.new("TextButton")
local AimBot = Instance.new("TextButton")
local Invisible = Instance.new("TextButton")
local Base = Instance.new("TextButton")
local TeamColorPicker = Instance.new("TextButton")
local TriggerBot = Instance.new("TextButton")
local ObGuns = Instance.new("TextButton")
local WallTP = Instance.new("TextButton")
local Armory = Instance.new("TextButton")
local NexusTP = Instance.new("TextButton")
local BackTP = Instance.new("TextButton")
local BeGuardF = Instance.new("TextButton")
local BeInmate = Instance.new("TextButton")
local BeCriminal = Instance.new("TextButton")
local BeNeutral = Instance.new("TextButton")
local YardTP = Instance.new("TextButton")
local CafeTP = Instance.new("TextButton")
local Refresh = Instance.new("TextButton")
local Respawn = Instance.new("TextButton")
local BeGuard = Instance.new("TextButton")
local CellsTP = Instance.new("TextButton")
local Lock = Instance.new("TextButton")
local ArmoryTP = Instance.new("TextButton")
local ChatEnabled = true
local BubblesEnabled = true

--Properties:
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = FavoriteColor
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.8, 0, 0.1, 0)
Frame.Size = UDim2.new(0, 200, 0, 276)
Frame.BorderMode = "Inset"

Title.Name = "Title"
Title.Parent = Frame
Title.AnchorPoint = Vector2.new(0.5, 0.5)
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.Position = UDim2.new(0.5, 0, 0.0700000003, 0)
Title.Size = UDim2.new(0, 180, 0, 50)
Title.Font = Enum.Font.SourceSans
Title.Text = "Remade by:TrAXzHJ"
Title.TextColor3 = FavoriteColor
Title.TextScaled = true
Title.TextSize = 30.000
Title.TextWrapped = true

Invisible.Name = "Invisible"
Invisible.Parent = Frame
Invisible.AnchorPoint = Vector2.new(0.5,0.5)
Invisible.BackgroundColor3 = Color3.fromRGB(0,0,0)
Invisible.BorderColor3 = FavoriteColor
Invisible.BorderSizePixel = 2
Invisible.Position = UDim2.new(1.2, 0, 0.40, 0)
Invisible.Size = UDim2.new(0,73,0,32)
Invisible.Font = Enum.Font.SourceSans
Invisible.Text = "Invis"
Invisible.TextColor3 = FavoriteColor
Invisible.TextSize = 25.000
Invisible.TextWrapped = true
Invisible.BorderMode = "Inset"

AimBot.Name = "AimBot"
AimBot.Parent = Frame
AimBot.AnchorPoint = Vector2.new(0.5,0.5)
AimBot.BackgroundColor3 = Color3.fromRGB(0,0,0)
AimBot.BorderColor3 = FavoriteColor
AimBot.BorderSizePixel = 2
AimBot.Position = UDim2.new(1.2, 0, 0.90, 0)
AimBot.Size = UDim2.new(0,73,0,32)
AimBot.Font = Enum.Font.SourceSans
AimBot.Text = "AimBot"
AimBot.TextColor3 = FavoriteColor
AimBot.TextSize = 25.000
AimBot.TextWrapped = true
AimBot.BorderMode = "Inset"

TriggerBot.Name = "TriggerBot"
TriggerBot.Parent = Frame
TriggerBot.AnchorPoint = Vector2.new(0.5,0.5)
TriggerBot.BackgroundColor3 = Color3.fromRGB(0,0,0)
TriggerBot.BorderColor3 = FavoriteColor
TriggerBot.BorderSizePixel = 2
TriggerBot.Position = UDim2.new(1.2,0,0.80,0)
TriggerBot.Size = UDim2.new(0,73,0,32)
TriggerBot.Font = Enum.Font.SourceSans
TriggerBot.Text = "TriggerBot"
TriggerBot.TextColor3 = FavoriteColor
TriggerBot.TextSize = 25.000
TriggerBot.TextWrapped = true
TriggerBot.BorderMode = "Inset"

SuperPunch.Name = "SuperPunch"
SuperPunch.Parent = Frame
SuperPunch.AnchorPoint = Vector2.new(0.5,0.5)
SuperPunch.BackgroundColor3 = Color3.fromRGB(0,0,0)
SuperPunch.BorderColor3 = FavoriteColor
SuperPunch.BorderSizePixel = 2
SuperPunch.Position = UDim2.new(-0.22,5,0.10,0)
SuperPunch.Size = UDim2.new(0,73,0,32)
SuperPunch.Font = Enum.Font.SourceSans
SuperPunch.Text = "SuperPunch"
SuperPunch.TextColor3 = FavoriteColor
SuperPunch.TextSize = 25.000
SuperPunch.TextWrapped = true
SuperPunch.BorderMode = "Inset"

TeamColorPicker.Name = "CTC"
TeamColorPicker.Parent = Frame
TeamColorPicker.AnchorPoint = Vector2.new(0.5,0.5)
TeamColorPicker.BackgroundColor3 = Color3.fromRGB(0,0,0)
TeamColorPicker.BorderColor3 = FavoriteColor
TeamColorPicker.BorderSizePixel = 2
TeamColorPicker.Position = UDim2.new(1.2,0,0.70,0)
TeamColorPicker.Size = UDim2.new(0,73,0,32)
TeamColorPicker.Font = Enum.Font.SourceSans
TeamColorPicker.Text = "TCC"
TeamColorPicker.TextColor3 = FavoriteColor
TeamColorPicker.TextSize = 25.000
TeamColorPicker.TextWrapped = true
TeamColorPicker.BorderMode = "Inset"

Hitmarker.Name = "HitMaker"
Hitmarker.Parent = Frame
Hitmarker.AnchorPoint = Vector2.new(0.5,0.5)
Hitmarker.BackgroundColor3 = Color3.fromRGB(0,0,0)
Hitmarker.BorderColor3 = FavoriteColor
Hitmarker.BorderSizePixel = 2
Hitmarker.Position = UDim2.new(1.2,0,0.50,0)
Hitmarker.Size = UDim2.new(0,73,0,32)
Hitmarker.Font = Enum.Font.SourceSans
Hitmarker.Text = "HitMaker"
Hitmarker.TextColor3 = FavoriteColor
Hitmarker.TextSize = 25.000
Hitmarker.TextWrapped = true
Hitmarker.BorderMode = "Inset"

Garage.Name = "Garage"
Garage.Parent = Frame
Garage.AnchorPoint = Vector2.new(0.5,0.5)
Garage.BackgroundColor3 = Color3.fromRGB(0,0,0)
Garage.BorderColor3 = FavoriteColor
Garage.BorderSizePixel = 2
Garage.Position = UDim2.new(1.2,0,0.60,0)
Garage.Size = UDim2.new(0,73,0,32)
Garage.Font = Enum.Font.SourceSans
Garage.Text = "Garage"
Garage.TextColor3 = FavoriteColor
Garage.TextSize = 25.000
Garage.TextWrapped = true
Garage.BorderMode = "Inset"

Armory.Name = "Armory"
Armory.Parent = Frame
Armory.AnchorPoint = Vector2.new(0.5,0.5)
Armory.BackgroundColor3 = Color3.fromRGB(0,0,0)
Armory.BorderColor3 = FavoriteColor
Armory.BorderSizePixel = 2
Armory.Position = UDim2.new(1.2, 0, 0.20, 0)
Armory.Size = UDim2.new(0,73,0,32)
Armory.Font = Enum.Font.SourceSans
Armory.Text = "Armory"
Armory.TextColor3 = FavoriteColor
Armory.TextSize = 25.000
Armory.TextWrapped = true
Armory.BorderMode = "Inset"

ObGuns.Name = "ObGuns"
ObGuns.Parent = Frame
ObGuns.AnchorPoint = Vector2.new(0.5, 0.5)
ObGuns.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ObGuns.BorderColor3 = FavoriteColor
ObGuns.BorderSizePixel = 2
ObGuns.Position = UDim2.new(0.275000006, 0, 0.200000003, 0)
ObGuns.Size = UDim2.new(0, 73, 0, 32)
ObGuns.Font = Enum.Font.SourceSans
ObGuns.Text = "Guns"
ObGuns.TextColor3 = FavoriteColor
ObGuns.TextSize = 25.000
ObGuns.TextWrapped = true
ObGuns.BorderMode = "Inset"

WallTP.Name = "WallTP"
WallTP.Parent = Frame
WallTP.AnchorPoint = Vector2.new(0.5,0.5)
WallTP.BackgroundColor3 = Color3.fromRGB(0,0,0)
WallTP.BorderColor3 = FavoriteColor
WallTP.BorderSizePixel = 2
WallTP.Position = UDim2.new(1.2, 0, 0.30, 0)
WallTP.Size = UDim2.new(0,73,0,32)
WallTP.Font = Enum.Font.SourceSans
WallTP.Text = "Wall"
WallTP.TextColor3 = FavoriteColor
WallTP.TextSize = 25.000
WallTP.TextWrapped = true
WallTP.BorderMode = "Inset"

NexusTP.Name = "NexusTP"
NexusTP.Parent = Frame
NexusTP.AnchorPoint = Vector2.new(0.5, 0.5)
NexusTP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NexusTP.BorderColor3 = FavoriteColor
NexusTP.BorderSizePixel = 2
NexusTP.Position = UDim2.new(0.275000006, 0, 0.340000004, 0)
NexusTP.Size = UDim2.new(0, 73, 0, 32)
NexusTP.Font = Enum.Font.SourceSans
NexusTP.Text = "Nexus"
NexusTP.TextColor3 = FavoriteColor
NexusTP.TextSize = 25.000
NexusTP.TextWrapped = true
NexusTP.BorderMode = "Inset"

BackTP.Name = "BackTP"
BackTP.Parent = Frame
BackTP.AnchorPoint = Vector2.new(0.5, 0.5)
BackTP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BackTP.BorderColor3 = FavoriteColor
BackTP.BorderSizePixel = 2
BackTP.Position = UDim2.new(0.275000006, 0, 0.479999989, 0)
BackTP.Size = UDim2.new(0, 73, 0, 32)
BackTP.Font = Enum.Font.SourceSans
BackTP.Text = "Back"
BackTP.TextColor3 = FavoriteColor
BackTP.TextSize = 25.000
BackTP.TextWrapped = true
BackTP.BorderMode = "Inset"

BeGuardF.Name = "BeGuardF"
BeGuardF.Parent = Frame
BeGuardF.AnchorPoint = Vector2.new(0.5, 0.5)
BeGuardF.BackgroundColor3 = Color3.fromRGB(9, 0, 77)
BeGuardF.BorderColor3 = FavoriteColor
BeGuardF.BorderSizePixel = 2
BeGuardF.Position = UDim2.new(0.680000007, 0, 0.224999994, 0)
BeGuardF.Size = UDim2.new(0, 20, 0, 17)
BeGuardF.SizeConstraint = Enum.SizeConstraint.RelativeXX
BeGuardF.ZIndex = 3
BeGuardF.Font = Enum.Font.SourceSans
BeGuardF.Text = ""
BeGuardF.TextColor3 = FavoriteColor
BeGuardF.TextSize = 25.000
BeGuardF.TextWrapped = true
BeGuardF.BorderMode = "Inset"

BeInmate.Name = "BeInmate"
BeInmate.Parent = Frame
BeInmate.AnchorPoint = Vector2.new(0.5, 0.5)
BeInmate.BackgroundColor3 = Color3.fromRGB(92, 40, 1)
BeInmate.BorderColor3 = FavoriteColor
BeInmate.BorderSizePixel = 2
BeInmate.Position = UDim2.new(0.589999974, 0, 0.200000003, 0)
BeInmate.Size = UDim2.new(0, 20, 0, 32)
BeInmate.ZIndex = 2
BeInmate.Font = Enum.Font.SourceSans
BeInmate.Text = ""
BeInmate.TextColor3 = FavoriteColor
BeInmate.TextSize = 25.000
BeInmate.TextWrapped = true
BeInmate.BorderMode = "Inset"

BeCriminal.Name = "BeCriminal"
BeCriminal.Parent = Frame
BeCriminal.AnchorPoint = Vector2.new(0.5, 0.5)
BeCriminal.BackgroundColor3 = Color3.fromRGB(96, 0, 1)
BeCriminal.BorderColor3 = FavoriteColor
BeCriminal.BorderSizePixel = 2
BeCriminal.Position = UDim2.new(0.769999981, 0, 0.200000003, 0)
BeCriminal.Size = UDim2.new(0, 20, 0, 32)
BeCriminal.ZIndex = 2
BeCriminal.Font = Enum.Font.SourceSans
BeCriminal.Text = ""
BeCriminal.TextColor3 = FavoriteColor
BeCriminal.TextSize = 25.000
BeCriminal.TextWrapped = true
BeCriminal.BorderMode = "Inset"

BeNeutral.Name = "BeNeutral"
BeNeutral.Parent = Frame
BeNeutral.AnchorPoint = Vector2.new(0.5, 0.5)
BeNeutral.BackgroundColor3 = Color3.fromRGB(140, 140, 140)
BeNeutral.BorderColor3 = FavoriteColor
BeNeutral.BorderSizePixel = 2
BeNeutral.Position = UDim2.new(0.860000014, 0, 0.200000003, 0)
BeNeutral.Size = UDim2.new(0, 20, 0, 32)
BeNeutral.ZIndex = 2
BeNeutral.Font = Enum.Font.SourceSans
BeNeutral.Text = ""
BeNeutral.TextColor3 = FavoriteColor
BeNeutral.TextSize = 25.000
BeNeutral.TextWrapped = true
BeNeutral.BorderMode = "Inset"

YardTP.Name = "YardTP"
YardTP.Parent = Frame
YardTP.AnchorPoint = Vector2.new(0.5, 0.5)
YardTP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
YardTP.BorderColor3 = FavoriteColor
YardTP.BorderSizePixel = 2
YardTP.Position = UDim2.new(0.725000024, 0, 0.340000004, 0)
YardTP.Size = UDim2.new(0, 73, 0, 32)
YardTP.Font = Enum.Font.SourceSans
YardTP.Text = "Yard"
YardTP.TextColor3 = FavoriteColor
YardTP.TextSize = 25.000
YardTP.TextWrapped = true
YardTP.BorderMode = "Inset"

CafeTP.Name = "CafeTP"
CafeTP.Parent = Frame
CafeTP.AnchorPoint = Vector2.new(0.5, 0.5)
CafeTP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CafeTP.BorderColor3 = FavoriteColor
CafeTP.BorderSizePixel = 2
CafeTP.Position = UDim2.new(0.725000024, 0, 0.479999989, 0)
CafeTP.Size = UDim2.new(0, 73, 0, 32)
CafeTP.Font = Enum.Font.SourceSans
CafeTP.Text = "Cafe"
CafeTP.TextColor3 = FavoriteColor
CafeTP.TextSize = 25.000
CafeTP.TextWrapped = true
CafeTP.BorderMode = "Inset"

Refresh.Name = "Refresh"
Refresh.Parent = Frame
Refresh.AnchorPoint = Vector2.new(0.5, 0.5)
Refresh.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Refresh.BorderColor3 = FavoriteColor
Refresh.BorderSizePixel = 2
Refresh.Position = UDim2.new(0.275000006, 0, 0.899999976, 0)
Refresh.Size = UDim2.new(0, 73, 0, 32)
Refresh.Font = Enum.Font.SourceSans
Refresh.Text = "Re"
Refresh.TextColor3 = FavoriteColor
Refresh.TextSize = 25.000
Refresh.TextWrapped = true
Refresh.BorderMode = "Inset"

Respawn.Name = "Respawn"
Respawn.Parent = Frame
Respawn.Active = false
Respawn.AnchorPoint = Vector2.new(0.5, 0.5)
Respawn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Respawn.BorderColor3 = FavoriteColor
Respawn.BorderSizePixel = 2
Respawn.Position = UDim2.new(0.725000024, 0, 0.899999976, 0)
Respawn.Size = UDim2.new(0, 73, 0, 32)
Respawn.Font = Enum.Font.SourceSans
Respawn.Text = "Spawn"
Respawn.TextColor3 = FavoriteColor
Respawn.TextSize = 25.000
Respawn.TextWrapped = true
Respawn.BorderMode = "Inset"

BeGuard.Name = "BeGuard"
BeGuard.Parent = Frame
BeGuard.AnchorPoint = Vector2.new(0.5, 0.5)
BeGuard.BackgroundColor3 = Color3.fromRGB(9, 0, 77)
BeGuard.BorderColor3 = FavoriteColor
BeGuard.BorderSizePixel = 2
BeGuard.Position = UDim2.new(0.680000007, 0, 0.174999997, 0)
BeGuard.Size = UDim2.new(0, 20, 0, 17)
BeGuard.SizeConstraint = Enum.SizeConstraint.RelativeXX
BeGuard.ZIndex = 3
BeGuard.Font = Enum.Font.SourceSans
BeGuard.Text = ""
BeGuard.TextColor3 = FavoriteColor
BeGuard.TextSize = 25.000
BeGuard.TextWrapped = true
BeGuard.BorderMode = "Inset"

CellsTP.Name = "CellsTP"
CellsTP.Parent = Frame
CellsTP.AnchorPoint = Vector2.new(0.5, 0.5)
CellsTP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CellsTP.BorderColor3 = FavoriteColor
CellsTP.BorderSizePixel = 2
CellsTP.Position = UDim2.new(0.725000024, 0, 0.620000005, 0)
CellsTP.Size = UDim2.new(0, 73, 0, 32)
CellsTP.Font = Enum.Font.SourceSans
CellsTP.Text = "Cells"
CellsTP.TextColor3 = FavoriteColor
CellsTP.TextSize = 25.000
CellsTP.TextWrapped = true
CellsTP.BorderMode = "Inset"

Lock.Name = "Lock"
Lock.Parent = Frame
Lock.AnchorPoint = Vector2.new(0.5, 0.5)
Lock.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Lock.BorderColor3 = FavoriteColor
Lock.BorderSizePixel = 2
Lock.Position = UDim2.new(0.5, 0, 0.75999999, 0)
Lock.Size = UDim2.new(0, 156, 0, 32)
Lock.Font = Enum.Font.SourceSans
Lock.Text = "Lock"
Lock.TextColor3 = FavoriteColor
Lock.TextSize = 25.000
Lock.TextWrapped = true
Lock.BorderMode = "Inset"

ArmoryTP.Name = "ArmoryTP"
ArmoryTP.Parent = Frame
ArmoryTP.AnchorPoint = Vector2.new(0.5, 0.5)
ArmoryTP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ArmoryTP.BorderColor3 = FavoriteColor
ArmoryTP.BorderSizePixel = 2
ArmoryTP.Position = UDim2.new(0.275000006, 0, 0.620000005, 0)
ArmoryTP.Size = UDim2.new(0, 73, 0, 32)
ArmoryTP.Font = Enum.Font.SourceSans
ArmoryTP.Text = "Armory"
ArmoryTP.TextColor3 = FavoriteColor
ArmoryTP.TextSize = 25.000
ArmoryTP.TextWrapped = true
ArmoryTP.BorderMode = "Inset"

NoShield.Name = "No Shield"
NoShield.Parent = Frame
NoShield.AnchorPoint = Vector2.new(0.5, 0.5)
NoShield.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NoShield.BorderColor3 = FavoriteColor
NoShield.BorderSizePixel = 2
NoShield.Position = UDim2.new(0.5, 0, 1.029, 0)
NoShield.Size = UDim2.new(0, 156, 0, 32)
NoShield.Font = Enum.Font.SourceSans
NoShield.Text = "NoShield"
NoShield.TextColor3 = FavoriteColor
NoShield.TextSize = 25.000
NoShield.TextWrapped = true
NoShield.BorderMode = "Inset"

Base.Name = "Base"
Base.Parent = Frame
Base.AnchorPoint = Vector2.new(0.5, 0.5)
Base.BackgroundColor3 = Color3.fromRGB(0,0,0)
Base.BorderColor3 = FavoriteColor
Base.BorderSizePixel = 2
Base.Position = UDim2.new(1.2, 0, 0.10, 0)
Base.Size = UDim2.new(0, 73, 0, 32)
Base.Font = Enum.Font.SourceSans
Base.Text = "Base"
Base.TextColor3 = FavoriteColor
Base.TextSize = 25.000
Base.TextWrapped = true
Base.BorderMode = "Inset"

Invisible.MouseButton1Down:Connect(function()
	local player = game.Players.LocalPlayer
position     = player.Character.HumanoidRootPart.Position
wait(0.1)
player.Character:MoveTo(position + Vector3.new(0, 1000000, 0))
wait(0.1)
humanoidrootpart = player.Character.HumanoidRootPart:clone()
wait(0.1)
player.Character.HumanoidRootPart:Destroy()
humanoidrootpart.Parent = player.Character
player.Character:MoveTo(position)
wait()
end)
Hitmarker.MouseButton1Down:Connect(function()
    local IAPortable = Instance.new("ScreenGui")
local Cursor = Instance.new("ImageLabel")
local Hitmarker = Instance.new("ImageLabel")

IAPortable.Name = "IA Portable"
IAPortable.Parent = game:GetService('CoreGui')
IAPortable.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Cursor.Name = "Cursor"
Cursor.Parent = IAPortable
Cursor.AnchorPoint = Vector2.new(0.5, 0.5)
Cursor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Cursor.BackgroundTransparency = 1.000
Cursor.Size = UDim2.new(0, 256, 0, 256)
Cursor.Image = "rbxassetid://3355815697"
Cursor.ScaleType = Enum.ScaleType.Fit

Hitmarker.Name = "Hitmarker"
Hitmarker.AnchorPoint = Vector2.new(0.5, 0.5)
Hitmarker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Hitmarker.BackgroundTransparency = 1.000
Hitmarker.BorderColor3 = Color3.fromRGB(27, 42, 53)
Hitmarker.Position = UDim2.new(0.5, 0, 0.5, 0)
Hitmarker.Size = UDim2.new(0, 45, 0, 45)
Hitmarker.Image = "rbxassetid://890801299"

local SoundService = game:GetService("SoundService")
local ReplicatedStorage = game:GetService('ReplicatedStorage')
local UserInputService = game:GetService('UserInputService')
local RunService = game:GetService('RunService')
local Players = game:GetService('Players')

local Remotes = ReplicatedStorage:FindFirstChild('Remotes') or ReplicatedStorage
local ShootEvent = Remotes.ShootEvent
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local function createSoundEffect(id, volume)
    coroutine.wrap(function()
        local sound = Instance.new("Sound")
        sound.SoundId = id
        sound.Volume = volume or 1
        SoundService:PlayLocalSound(sound)
        sound.Ended:Wait()
        sound:Destroy()
    end)()
end

local Bindable = Instance.new('BindableEvent')

Bindable.Event:Connect(function(bullets, gun)
    local ShotHit = false

    for _,bullet in pairs(bullets) do
        local Hit = bullet.Hit

        local Limb = Hit.Parent:FindFirstChildOfClass('Humanoid') ~= nil
        local Accessory = Hit.Parent.Parent:FindFirstChildOfClass('Humanoid') ~= nil

        if Limb then
            local Player = Players:GetPlayerFromCharacter(Hit.Parent)

            if Player.TeamColor ~= LocalPlayer.TeamColor then
                ShotHit = true
                break
            end
        elseif Accessory then
            local Player = Players:GetPlayerFromCharacter(Hit.Parent.Parent)
            
            if Player.TeamColor ~= LocalPlayer.TeamColor then
                ShotHit = true
                break
            end
        end
    end
    
    if ShotHit then
        createSoundEffect("rbxassetid://1347140027", 1)

        local Clone = Hitmarker:Clone()
        Clone.Position = UDim2.new(0,Mouse.X,0,Mouse.Y)
        Clone.Parent = IAPortable
        Clone.Rotation = math.random(0,90)

        game:GetService('Debris'):AddItem(Clone, 0.05)
    end
end)

local OldNameCall
OldNameCall = hookmetamethod(game, '__namecall', function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if method == 'FireServer' and self == ShootEvent then
        Bindable.Fire(Bindable, unpack(args))
    end

    return OldNameCall(self, ...)
end)

RunService.RenderStepped:Connect(function()
    UserInputService.MouseIconEnabled = false

    Cursor.Position = UDim2.new(0,Mouse.X,0,Mouse.Y)
    
    local Target = Mouse.Target
    local Limb = Target.Parent:FindFirstChildOfClass('Humanoid')
    local Accessory = Target.Parent.Parent:FindFirstChildOfClass('Humanoid')
    
    if Limb then
        local Player = Players:GetPlayerFromCharacter(Target.Parent)
        if Player.TeamColor == LocalPlayer.TeamColor then
            Cursor.ImageColor3 = Color3.fromRGB(0,255,0)
        else
            Cursor.ImageColor3 = Color3.fromRGB(255,0,0)
        end
    elseif Accessory then
        local Player = Players:GetPlayerFromCharacter(Target.Parent.Parent)
        if Player.TeamColor == LocalPlayer.TeamColor then
            Cursor.ImageColor3 = Color3.fromRGB(0,255,0)
        else
            Cursor.ImageColor3 = Color3.fromRGB(255,0,0)
        end
    else
        Cursor.ImageColor3 = Color3.fromRGB(255,255,255)
    end
end)
end)
Garage.MouseButton1Down:Connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(615.838745, 98.1999969, 2488.73853, 0.99999851, -6.76577239e-09, 0.0017231527, 6.9919146e-09, 1, -1.31231403e-07, -0.0017231527, 1.31243254e-07, 0.99999851)
end)
SuperPunch.MouseButton1Down:Connect(function()
	mainRemotes = game.ReplicatedStorage
meleeRemote = mainRemotes['meleeEvent']
mouse = game.Players.LocalPlayer:GetMouse()
punching = false
cooldown = false

function punch()
cooldown = true
local part = Instance.new("Part", game.Players.LocalPlayer.Character)
part.Transparency = 1
part.Size = Vector3.new(5, 2, 3)
part.CanCollide = false
local w1 = Instance.new("Weld", part)
w1.Part0 = game.Players.LocalPlayer.Character.Torso
w1.Part1 = part
w1.C1 = CFrame.new(0,0,2)
part.Touched:connect(function(hit)
if game.Players:FindFirstChild(hit.Parent.Name) then
local plr = game.Players:FindFirstChild(hit.Parent.Name) 
if plr.Name ~= game.Players.LocalPlayer.Name then
part:Destroy()

for i = 1,100 do
meleeRemote:FireServer(plr)
end
end
end
end)

wait(1)
cooldown = false
part:Destroy()
end


mouse.KeyDown:connect(function(key)
if cooldown == false then
if key:lower() == "f" then

punch()

end
end
end)
end)
TeamColorPicker.MouseButton1Down:Connect(function()
	local ColorPicker = Instance.new("ScreenGui")
local TopBar = Instance.new("Frame")
local ColorPicker_2 = Instance.new("Frame")
local UIPadding = Instance.new("UIPadding")
local Value = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Frame = Instance.new("Frame")
local Bottom = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local ColorPreview = Instance.new("Frame")
local OK = Instance.new("TextButton")
local HueSaturation = Instance.new("ImageLabel")
local Frame_2 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

ColorPicker.Name = "ColorPicker"
ColorPicker.Parent = game.CoreGui
ColorPicker.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TopBar.Name = "TopBar"
TopBar.Parent = ColorPicker
TopBar.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
TopBar.BorderSizePixel = 0
TopBar.Position = UDim2.new(0.369488537, 0, 0.458181828, 0)
TopBar.Size = UDim2.new(0, 288, 0, 21)

local UserInputService = game:GetService("UserInputService")

local gui = TopBar

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

ColorPicker_2.Name = "ColorPicker"
ColorPicker_2.Parent = TopBar
ColorPicker_2.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
ColorPicker_2.BorderSizePixel = 0
ColorPicker_2.Position = UDim2.new(0, 0, 1, 0)
ColorPicker_2.Size = UDim2.new(0, 288, 0, 273)

UIPadding.Parent = ColorPicker_2
UIPadding.PaddingBottom = UDim.new(0, 5)
UIPadding.PaddingLeft = UDim.new(0, 5)
UIPadding.PaddingRight = UDim.new(0, 5)
UIPadding.PaddingTop = UDim.new(0, 5)

Value.Name = "Value"
Value.Parent = ColorPicker_2
Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Value.BorderSizePixel = 0
Value.Position = UDim2.new(1, -20, 0, 0)
Value.Size = UDim2.new(0, 20, 1, -45)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient.Rotation = 90
UIGradient.Parent = Value

Frame.Parent = Value
Frame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, -2, 0, 0)
Frame.Size = UDim2.new(1, 4, 0, 5)

Bottom.Name = "Bottom"
Bottom.Parent = ColorPicker_2
Bottom.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bottom.BackgroundTransparency = 1.000
Bottom.Position = UDim2.new(0, 0, 1, -40)
Bottom.Size = UDim2.new(1, 0, 0, 40)

UIListLayout.Parent = Bottom
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

ColorPreview.Name = "ColorPreview"
ColorPreview.Parent = Bottom
ColorPreview.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ColorPreview.BorderSizePixel = 0
ColorPreview.Size = UDim2.new(0.5, -2, 1, 0)

OK.Name = "OK"
OK.Parent = Bottom
OK.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
OK.BorderSizePixel = 0
OK.Size = UDim2.new(0.5, -2, 1, 0)
OK.Font = Enum.Font.ArialBold
OK.Text = "OK"
OK.TextColor3 = Color3.fromRGB(255, 255, 255)
OK.TextSize = 16.000

HueSaturation.Name = "HueSaturation"
HueSaturation.Parent = ColorPicker_2
HueSaturation.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HueSaturation.BorderSizePixel = 0
HueSaturation.Size = UDim2.new(1, -25, 1, -45)
HueSaturation.Image = "http://www.roblox.com/asset/?id=328298876"

Frame_2.Parent = HueSaturation
Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Frame_2.BorderSizePixel = 0
Frame_2.Size = UDim2.new(0, 5, 0, 5)

TextLabel.Parent = TopBar
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.ArialBold
TextLabel.Text = "Team Color Picker"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 16.000

local Button1Down = false
local currentColor = {h=0,s=1,v=1}

function calculateLocalMousePosition(object)
	local positionX,positionY = object.AbsolutePosition.X,object.AbsolutePosition.Y
	local mouseX, mouseY = game.Players.LocalPlayer:GetMouse().X,game.Players.LocalPlayer:GetMouse().Y

	return Vector2.new(mouseX-positionX, mouseY-positionY)
end

function isHoveringOver(object)
	local position = object.AbsolutePosition
	local size = object.AbsoluteSize
	local mouse = game.Players.LocalPlayer:GetMouse()
	local localMouse = calculateLocalMousePosition(object)

	if (mouse.X >= position.X and mouse.Y >= position.Y) and (localMouse.X <= size.X and localMouse.Y <= size.Y) then
		return true
	else
		return false
	end
end

function updatePreview()
	ColorPreview.BackgroundColor3 = Color3.fromHSV(currentColor.h,currentColor.s,currentColor.v)
end

function hueSaturationCheck() -- script made by Vapin' Cat#5497
	if isHoveringOver(HueSaturation) then
		local LocalOffset = calculateLocalMousePosition(HueSaturation)
		local LocalScaleX, LocalScaleY = LocalOffset.X/HueSaturation.AbsoluteSize.X,LocalOffset.Y/HueSaturation.AbsoluteSize.Y

		HueSaturation.Frame.Position = UDim2.new(LocalScaleX, 0, LocalScaleY, 0)
		currentColor.h = 1-LocalScaleX
		currentColor.s = 1-LocalScaleY

		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromHSV(currentColor.h,currentColor.s,1)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}

		updatePreview()
	end
end

function valueCheck()
	if isHoveringOver(Value) then
		local LocalOffset = calculateLocalMousePosition(Value)
		local LocalScaleY = LocalOffset.Y/HueSaturation.AbsoluteSize.Y

		Value.Frame.Position = UDim2.new(0, 0, LocalScaleY, 0)
		currentColor.v = 1-LocalScaleY

		updatePreview()
	end
end

function refresh(color)
	local position = workspace:FindFirstChild(game.Players.LocalPlayer.Name).HumanoidRootPart.CFrame
	local _, RY, _ = position:ToOrientation()
	position = CFrame.new(position.p) * CFrame.fromOrientation(0, RY, 0)

	local camera = workspace.CurrentCamera.CFrame

	if tostring(game.Players.LocalPlayer.TeamColor) == 'Medium stone grey' and color == nil then
		workspace.Remote.TeamEvent:FireServer("Bright orange")

		wait()

		workspace.Remote.loadchar:InvokeServer()

		workspace.Remote.TeamEvent:FireServer("Medium stone grey")
	else
		workspace.Remote.loadchar:InvokeServer(nil,color)
	end

	local HumanoidRootPart = workspace:FindFirstChild(game.Players.LocalPlayer.Name):WaitForChild('HumanoidRootPart',0.3)

	HumanoidRootPart.CFrame = position

	workspace.CurrentCamera.CFrame = camera
	workspace.CurrentCamera.Changed:Wait()
	workspace.CurrentCamera.CFrame = camera

	game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
end

game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
	Button1Down = true
	hueSaturationCheck()
	valueCheck()
end)

game.Players.LocalPlayer:GetMouse().Button1Up:Connect(function()
	Button1Down = false
end)

game.Players.LocalPlayer:GetMouse().Move:Connect(function()
	if Button1Down then
		hueSaturationCheck()
		valueCheck()
	end
end)

OK.MouseButton1Down:Connect(function()
	refresh(Color3.fromHSV(currentColor.h,currentColor.s,currentColor.v))
end)
end)
NoShield.MouseButton1Down:Connect(function()
		 for _,player in pairs(game.Players:GetPlayers()) do
		  local minecraft = game.Workspace:FindFirstChild(player.Name).Torso:FindFirstChild("ShieldFolder")
		  if minecraft then
		   minecraft:Destroy()
		  end
		  local fortnite = game.Workspace:FindFirstChild(player.Name):FindFirstChild("Riot Shield")
		  if fortnite then
		   fortnite:Destroy()
		  end
		 end
		end)
Base.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-923.404968, 94.1287613, 2065.41016, 0.00361017347, 1.08493069e-07, 0.999993503, 4.90002066e-08, 1, -1.08670676e-07, -0.999993503, 4.93922094e-08, 0.00361017347)
end)
AimBot.MouseButton1Down:Connect(function()
	local Players = game.Players
local LocalPlayer = Players.LocalPlayer
local GetPlayers = Players.GetPlayers
local Camera = workspace.CurrentCamera
local WTSP = Camera.WorldToScreenPoint
local FindFirstChild = game.FindFirstChild
local Vector2_new = Vector2.new
local Mouse = LocalPlayer.GetMouse(LocalPlayer)
function ClosestChar()
    local Max, Close = math.huge
    for I,V in pairs(GetPlayers(Players)) do
        if V ~= LocalPlayer and V.Team ~= LocalPlayer.Team and V.Character then
            local Head = FindFirstChild(V.Character, "Head")
            if Head then
                local Pos, OnScreen = WTSP(Camera, Head.Position)
                if OnScreen then
                    local Dist = (Vector2_new(Pos.X, Pos.Y) - Vector2_new(Mouse.X, Mouse.Y)).Magnitude
                    if Dist < Max then
                        Max = Dist
                        Close = V.Character
                    end
                end
            end
        end
    end
    return Close
end

local MT = getrawmetatable(game)
local __namecall = MT.__namecall
setreadonly(MT, false)
MT.__namecall = newcclosure(function(self, ...)
    local Method = getnamecallmethod()
    if Method == "FindPartOnRay" and not checkcaller() and tostring(getfenv(0).script) == "GunInterface" then
        local Character = ClosestChar()
        if Character then
            return Character.Head, Character.Head.Position
        end
    end

    return __namecall(self, ...)
end)
setreadonly(MT, true)

end)
TriggerBot.MouseButton1Down:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/VapingCat/Open-Source-TriggerBot/main/script.lua'))()
end)
WallTP.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(802.642273, 396.239868, 2672.34326, 0.999657869, 5.79851687e-08, -0.0261568502, -5.6084744e-08, 1, 7.33886409e-08, 0.0261568502, -7.18965296e-08, 0.999657869)
end)
Armory.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(412.527008, 11.4253607, 1181.06897, 0.0518526845, -7.02366307e-08, 0.998654723, -8.03709383e-08, 1, 7.45043067e-08, -0.998654723, -8.41260643e-08, 0.0518526845)
end)
ArmoryTP.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(798,99,2260)
end)

BackTP.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(980, 101, 2327)
end)

BeCriminal.MouseButton1Down:connect(function()
	local lastPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
	LCS = game.Workspace["Criminals Spawn"].SpawnLocation
	LCS.CanCollide = false
	LCS.Size = Vector3.new(51.05, 24.12, 54.76)
	LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	LCS.Transparency = 1
	wait(0.5)
	LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
	LCS.Size = Vector3.new(6, 0.2, 6)
	LCS.Transparency = 0
	wait()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(lastPos)
end)

BeGuard.MouseButton1Down:connect(function()
	Workspace.Remote.TeamEvent:FireServer("Bright blue")
end)

BeGuardF.MouseButton1Down:connect(function()
	local lastPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
	workspace.Remote.loadchar:InvokeServer("", "Bright blue")
	wait()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(lastPos)
end)

BeInmate.MouseButton1Down:connect(function()
	Workspace.Remote.TeamEvent:FireServer("Bright orange")
end)

BeNeutral.MouseButton1Down:connect(function()
	Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
end)

CafeTP.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(879,99,2247)
end)

CellsTP.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(910,99,2477)
end)

Lock.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24
	game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
	game.Players.LocalPlayer.CharacterAdded:connect(function()
	game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
	game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
	end)
end)

NexusTP.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(879,99,2377)
end)

ObGuns.MouseButton1Down:connect(function()
	getGuns()
end)

Refresh.MouseButton1Down:connect(function()
	if (game.Players.LocalPlayer.Team.Name ~= "Criminals") then
		local lastPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
		local plr = game.Players.LocalPlayer.Name
		local gayevent = game:GetService("Workspace").Remote.loadchar
		gayevent:InvokeServer(plr)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(lastPos)
	else
		local lastPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
		Workspace.Remote.TeamEvent:FireServer("Bright orange")
		wait()
		local plr = game.Players.LocalPlayer.Name
		local gayevent = game:GetService("Workspace").Remote.loadchar
		gayevent:InvokeServer(plr)
		LCS = game.Workspace["Criminals Spawn"].SpawnLocation
		LCS.CanCollide = false
		LCS.Size = Vector3.new(51.05, 24.12, 54.76)
		LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		LCS.Transparency = 1
		wait(0.5)
		LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		LCS.Size = Vector3.new(6, 0.2, 6)
		LCS.Transparency = 0
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(lastPos)
	end
end)

Respawn.MouseButton1Down:connect(function()
	local lastPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
	local plr = game.Players.LocalPlayer.Name
	local gayevent = game:GetService("Workspace").Remote.loadchar
	gayevent:InvokeServer(plr)
end)

YardTP.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(779,99,2477)
end)

game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
	if gameProcessedEvent then return end
	local children = Frame:GetChildren()
    if inputObject.KeyCode == Enum.KeyCode.Q then
    	if Frame.Visible == true then
			Frame.Visible = false
		else
			Frame.Visible = true
		end
    end
    if inputObject.KeyCode == Enum.KeyCode.LeftAlt then
            local lastPos = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").position
            local plr = game.Players.LocalPlayer.Name
            local gayevent = game:GetService("Workspace").Remote.loadchar
            gayevent:InvokeServer(plr)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(lastPos)
    end
	if inputObject.KeyCode == Enum.KeyCode.RightAlt then
		local player = game.Players.LocalPlayer
		position     = player.Character.HumanoidRootPart.Position
		wait(0.1)
		player.Character:MoveTo(position + Vector3.new(0, 1000000, 0))
		wait(0.1)
		humanoidrootpart = player.Character.HumanoidRootPart:clone()
		wait(0.1)
		player.Character.HumanoidRootPart:Destroy()
		humanoidrootpart.Parent = player.Character
		player.Character:MoveTo(position)
		wait()
	end
	if inputObject.KeyCode == Enum.KeyCode.M then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24
		game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
		game.Players.LocalPlayer.CharacterAdded:connect(function()
		game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
		game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
	end)
	end
	if inputObject.KeyCode == Enum.KeyCode.F2 then
		Workspace.Remote.TeamEvent:FireServer("Bright blue")
	end
	if inputObject.KeyCode == Enum.KeyCode.F3 then
		workspace.Remote.TeamEvent:FireServer("Bright Orange")
	end
	if inputObject.KeyCode == Enum.KeyCode.G then
			if inputObject.KeyCode == Enum.KeyCode.G then
			 for _,player in pairs(game.Players:GetPlayers()) do
			  local minecraft = game.Workspace:FindFirstChild(player.Name).Torso:FindFirstChild("ShieldFolder")
			  if minecraft then
			   minecraft:Destroy()
			  end
			  local fortnite = game.Workspace:FindFirstChild(player.Name):FindFirstChild("Riot Shield")
			  if fortnite then
			   fortnite:Destroy()
			 end
			end
		   end
		end
	if inputObject.KeyCode == Enum.KeyCode.Z then
		if ChatEnabled then
			ChatEnabled = false
			game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
			for i, player in pairs(game.Players:GetPlayers()) do
				player:WaitForChild("PlayerScripts").BubbleChat.Disabled = true
				player:WaitForChild("PlayerGui").BubbleChat:Destroy()
			end
		else
			ChatEnabled = true
			game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
			for i, player in pairs(game.Players:GetPlayers()) do
				player:WaitForChild("PlayerScripts").BubbleChat.Disabled = false
			end
		end
	end
	if inputObject.KeyCode == Enum.KeyCode.Slash then
		ChatEnabled = true
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
	end
	if inputObject.KeyCode == Enum.KeyCode.X then
		if BubblesEnabled then
			BubblesEnabled = false
			for i, player in pairs(game.Players:GetPlayers()) do
				player:WaitForChild("PlayerScripts").BubbleChat.Disabled = true
				player:WaitForChild("PlayerGui").BubbleChat:Destroy()
			end
		else
			BubblesEnabled = true
			for i, player in pairs(game.Players:GetPlayers()) do
				player:WaitForChild("PlayerScripts").BubbleChat.Disabled = false
			end
		end
	end
	if inputObject.KeyCode == Enum.KeyCode.E then
		if (game.Players.LocalPlayer.Backpack:FindFirstChild("M9")) then
			game.Players.LocalPlayer.Backpack:FindFirstChild("M9").Parent = game.Players.LocalPlayer
		end
		if (game.Players.LocalPlayer.Backpack:FindFirstChild("Taser")) then
			game.Players.LocalPlayer.Backpack.Taser:Destroy()
		end
		if (game.Players.LocalPlayer.Backpack:FindFirstChild("Handcuffs")) then
			game.Players.LocalPlayer.Backpack.Handcuffs:Destroy()
		end
		getGuns()
	end
end)



function dragify(Frame)
dragToggle = nil
dragSpeed = 100000 -- You can edit this.
dragInput = nil
dragStart = nil
dragPos = nil

function updateInput(input)
Delta = input.Position - dragStart
Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
game:GetService("TweenService"):Create(Frame, TweenInfo.new(0), {Position = Position}):Play()
end

Frame.InputBegan:Connect(function(input)
if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
dragToggle = true
dragStart = input.Position
startPos = Frame.Position
input.Changed:Connect(function()
if (input.UserInputState == Enum.UserInputState.End) then
dragToggle = false
end
end)
end
end)

Frame.InputChanged:Connect(function(input)
if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
dragInput = input
end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
if (input == dragInput and dragToggle) then
updateInput(input)
end
end)
end

dragify(Frame)
hud = LocalPlayer.PlayerGui.Home.hud
GunFrame = hud.GunFrame
AddedGui = hud.AddedGui
mousehover = AddedGui.mousehover
tooltip = AddedGui.tooltip
GunFrame.Frame.TextLabel:Destroy()
GunFrame.Frame.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
GunFrame.Label.BackgroundColor3 = CoolColor
GunFrame.BackgroundColor3 = CoolColor
GunFrame.Frame.BackgroundColor3 = Color3.fromRGB(0,0,0)
tooltip.BackgroundColor3 = CoolColor
mousehover.BackgroundColor3 = CoolColor

hud.StaminaFrame.BackgroundColor3 = CoolColor
for i,v2 in next, {hud.Topbar.titleBar, hud.Topbar.Pulldownmenu, hud.Topbar.Pulldownmenu.tb, hud.ClockFrame,hud.MenuButton, hud.MenuButton.MenuFrame.respawn, hud.MenuButton.MenuFrame.votekick, hud.MenuButton.MenuFrame.gamepasses} do
	v2.BackgroundColor3 = CoolColor
	v2.BorderColor3 = CoolColor
end
MenuButton = hud.MenuButton
MenuFrame = MenuButton.MenuFrame
Respawn = MenuFrame.respawn
Respawn.TextColor3 = Color3.fromRGB(43, 255, 0)
