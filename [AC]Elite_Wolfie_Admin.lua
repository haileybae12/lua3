-- Made by Elite Wolfie#5889 (Discord ~ https://discord.gg/gYTfqyR) Admin Pannel v1.5
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local WheelRotating = Instance.new("ImageLabel")
local Versions = Instance.new("TextLabel")
local DownFrame1 = Instance.new("Frame")
local DownFram2 = Instance.new("Frame")
local UpFrame2 = Instance.new("Frame")
local UpFrame1 = Instance.new("Frame")
local Cube4F = Instance.new("Frame")
local Cube3F = Instance.new("Frame")
local Cube2 = Instance.new("Frame")
local Cube2F = Instance.new("Frame")
local Cube1F = Instance.new("Frame")
local Cube4 = Instance.new("Frame")
local Cube3 = Instance.new("Frame")
local Cube1 = Instance.new("Frame")
local Logs = Instance.new("TextLabel")
local UpdateLogs = Instance.new("ImageLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local AntiAfk = Instance.new("TextButton")
local Fly = Instance.new("TextButton")
local InfJump = Instance.new("TextButton")
local Jumppower = Instance.new("TextButton")
local Noclip = Instance.new("TextButton")
local Reviz = Instance.new("TextButton")
local RoseHub = Instance.new("TextButton")
local Walkspeed = Instance.new("TextButton")
local NameESP = Instance.new("TextButton")
local BodyESP = Instance.new("TextButton")
local EliteWolfie5889 = Instance.new("TextLabel")
local DownFrame1_2 = Instance.new("Frame")
local UpFrame2_2 = Instance.new("Frame")
local DownFram2_2 = Instance.new("Frame")
local UpFrame1_2 = Instance.new("Frame")
local Tweenified = Instance.new("TextButton")
local Cube4_2 = Instance.new("Frame")
local Cube2_2 = Instance.new("Frame")
local Cube1_2 = Instance.new("Frame")
local Cube2_3 = Instance.new("Frame")
local Line2 = Instance.new("Frame")
local Cube1_3 = Instance.new("Frame")
--Properties:
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
MainFrame.BackgroundTransparency = 0.050000000745058
MainFrame.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(1, 20, 0.158000007, 0)
MainFrame.Size = UDim2.new(0, 413, 0, 224)

WheelRotating.Name = "WheelRotating"
WheelRotating.Parent = MainFrame
WheelRotating.BackgroundColor3 = Color3.new(1, 1, 1)
WheelRotating.BackgroundTransparency = 1
WheelRotating.Position = UDim2.new(0.000207784586, 0, -0.00221347809, 0)
WheelRotating.Size = UDim2.new(0, 43, 0, 43)
WheelRotating.Image = "rbxassetid://2952939955"

Versions.Name = "Versions"
Versions.Parent = MainFrame
Versions.BackgroundColor3 = Color3.new(1, 1, 1)
Versions.BackgroundTransparency = 1
Versions.Position = UDim2.new(-5.15580177e-05, 0, 0.90573442, 0)
Versions.Size = UDim2.new(0, 26, 0, 21)
Versions.Font = Enum.Font.SourceSans
Versions.Text = "v1.5"
Versions.TextColor3 = Color3.new(0.470588, 0.470588, 0.470588)
Versions.TextSize = 14

DownFrame1.Name = "DownFrame1"
DownFrame1.Parent = MainFrame
DownFrame1.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
DownFrame1.BackgroundTransparency = 0.10000000149012
DownFrame1.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
DownFrame1.BorderSizePixel = 0
DownFrame1.Position = UDim2.new(0, 0, 1.04017854, 0)
DownFrame1.Size = UDim2.new(0, 202, 0, 9)

DownFram2.Name = "DownFram2"
DownFram2.Parent = MainFrame
DownFram2.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
DownFram2.BackgroundTransparency = 0.10000000149012
DownFram2.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
DownFram2.BorderSizePixel = 0
DownFram2.Position = UDim2.new(1.02179182, 0, 0.513392925, 0)
DownFram2.Size = UDim2.new(0, 9, 0, 108)

UpFrame2.Name = "UpFrame2"
UpFrame2.Parent = MainFrame
UpFrame2.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
UpFrame2.BackgroundTransparency = 0.10000000149012
UpFrame2.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
UpFrame2.BorderSizePixel = 0
UpFrame2.Position = UDim2.new(0.510895908, 0, -0.0803571418, 0)
UpFrame2.Size = UDim2.new(0, 202, 0, 9)

UpFrame1.Name = "UpFrame1"
UpFrame1.Parent = MainFrame
UpFrame1.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
UpFrame1.BackgroundTransparency = 0.10000000149012
UpFrame1.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
UpFrame1.BorderSizePixel = 0
UpFrame1.Position = UDim2.new(-0.0435835347, 0, -0.00446421746, 0)
UpFrame1.Size = UDim2.new(0, 9, 0, 107)

Cube4F.Name = "Cube4F"
Cube4F.Parent = MainFrame
Cube4F.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube4F.BackgroundTransparency = 0.10000000149012
Cube4F.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube4F.BorderSizePixel = 0
Cube4F.Position = UDim2.new(1, 0, 0.477678567, 0)
Cube4F.Size = UDim2.new(0, 9, 0, 9)

Cube3F.Name = "Cube3F"
Cube3F.Parent = MainFrame
Cube3F.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube3F.BackgroundTransparency = 0.10000000149012
Cube3F.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube3F.BorderSizePixel = 0
Cube3F.Position = UDim2.new(0.489104092, 0, 0.995535672, 0)
Cube3F.Size = UDim2.new(0, 9, 0, 9)

Cube2.Name = "Cube2"
Cube2.Parent = MainFrame
Cube2.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube2.BackgroundTransparency = 0.10000000149012
Cube2.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube2.BorderSizePixel = 0
Cube2.Position = UDim2.new(1, 0, -0.0446427874, 0)
Cube2.Size = UDim2.new(0, 9, 0, 9)

Cube2F.Name = "Cube2F"
Cube2F.Parent = MainFrame
Cube2F.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube2F.BackgroundTransparency = 0.10000000149012
Cube2F.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube2F.BorderSizePixel = 0
Cube2F.Position = UDim2.new(0.489104033, 0, -0.040178638, 0)
Cube2F.Size = UDim2.new(0, 9, 0, 9)

Cube1F.Name = "Cube1F"
Cube1F.Parent = MainFrame
Cube1F.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube1F.BackgroundTransparency = 0.10000000149012
Cube1F.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube1F.BorderSizePixel = 0
Cube1F.Position = UDim2.new(-0.0215839818, 0, 0.477678567, 0)
Cube1F.Size = UDim2.new(0, 9, 0, 9)

Cube4.Name = "Cube4"
Cube4.Parent = MainFrame
Cube4.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube4.BackgroundTransparency = 0.10000000149012
Cube4.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube4.BorderSizePixel = 0
Cube4.Position = UDim2.new(1, 0, 0.99999994, 0)
Cube4.Size = UDim2.new(0, 9, 0, 9)

Cube3.Name = "Cube3"
Cube3.Parent = MainFrame
Cube3.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube3.BackgroundTransparency = 0.10000000149012
Cube3.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube3.BorderSizePixel = 0
Cube3.Position = UDim2.new(-0.0215839818, 0, 0.995535731, 0)
Cube3.Size = UDim2.new(0, 9, 0, 9)

Cube1.Name = "Cube1"
Cube1.Parent = MainFrame
Cube1.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube1.BackgroundTransparency = 0.10000000149012
Cube1.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube1.BorderSizePixel = 0
Cube1.Position = UDim2.new(-0.0215839818, 0, -0.0446427874, 0)
Cube1.Size = UDim2.new(0, 9, 0, 9)

Logs.Name = "Logs"
Logs.Parent = MainFrame
Logs.BackgroundColor3 = Color3.new(1, 1, 1)
Logs.BackgroundTransparency = 1
Logs.Position = UDim2.new(0.221619993, 0, 0.626468539, 0)
Logs.Size = UDim2.new(0, 7, 0, 6)
Logs.Font = Enum.Font.SourceSans
Logs.Text = "New Update! Version 1.5\n\n- Full Featured UI\n- More Functions...\n- Loading/Tweening System\n\nMore Update's Coming Soon!"
Logs.TextColor3 = Color3.new(0.470588, 0.470588, 0.470588)
Logs.TextSize = 14

UpdateLogs.Name = "UpdateLogs"
UpdateLogs.Parent = MainFrame
UpdateLogs.BackgroundColor3 = Color3.new(1, 1, 1)
UpdateLogs.BackgroundTransparency = 1
UpdateLogs.Position = UDim2.new(-0.00267076329, 0, 0.119274646, 0)
UpdateLogs.Size = UDim2.new(0, 199, 0, 70)
UpdateLogs.Image = "rbxassetid://2953104883"

ScrollingFrame.Parent = MainFrame
ScrollingFrame.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
ScrollingFrame.BackgroundTransparency = 0.99000000953674
ScrollingFrame.Position = UDim2.new(0.506574631, 0, 0.0280202627, 0)
ScrollingFrame.Size = UDim2.new(0, 200, 0, 196)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1, 9)

AntiAfk.Name = "Anti Afk"
AntiAfk.Parent = ScrollingFrame
AntiAfk.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
AntiAfk.BorderColor3 = Color3.new(0.196078, 0.196078, 0.196078)
AntiAfk.Position = UDim2.new(0.50765425, 0, 0.415881544, 0)
AntiAfk.Size = UDim2.new(0, 79, 0, 36)
AntiAfk.Font = Enum.Font.SciFi
AntiAfk.Text = "Anti-Afk"
AntiAfk.TextColor3 = Color3.new(0.470588, 0.470588, 0.470588)
AntiAfk.TextSize = 14

Fly.Name = "Fly"
Fly.Parent = ScrollingFrame
Fly.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Fly.BorderColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Fly.Position = UDim2.new(0.507608771, 0, 0.226149157, 0)
Fly.Size = UDim2.new(0, 79, 0, 36)
Fly.Font = Enum.Font.SciFi
Fly.Text = "Fly \"t\""
Fly.TextColor3 = Color3.new(0.470588, 0.470588, 0.470588)
Fly.TextSize = 14

InfJump.Name = "Inf Jump"
InfJump.Parent = ScrollingFrame
InfJump.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
InfJump.BorderColor3 = Color3.new(0.196078, 0.196078, 0.196078)
InfJump.Position = UDim2.new(0.0477249324, 0, 0.415881574, 0)
InfJump.Size = UDim2.new(0, 79, 0, 36)
InfJump.Font = Enum.Font.SciFi
InfJump.Text = "Inf Jump \"f\""
InfJump.TextColor3 = Color3.new(0.470588, 0.470588, 0.470588)
InfJump.TextSize = 14

Jumppower.Name = "Jumppower"
Jumppower.Parent = ScrollingFrame
Jumppower.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Jumppower.BorderColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Jumppower.Position = UDim2.new(0.0513512976, 0, 0.0341849327, 0)
Jumppower.Size = UDim2.new(0, 79, 0, 36)
Jumppower.Font = Enum.Font.SciFi
Jumppower.Text = "Jump-Power 100"
Jumppower.TextColor3 = Color3.new(0.470588, 0.470588, 0.470588)
Jumppower.TextSize = 14
Jumppower.TextWrapped = true

Noclip.Name = "Noclip"
Noclip.Parent = ScrollingFrame
Noclip.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Noclip.BorderColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Noclip.Position = UDim2.new(0.0478073135, 0, 0.225140914, 0)
Noclip.Size = UDim2.new(0, 79, 0, 36)
Noclip.Font = Enum.Font.SciFi
Noclip.Text = "Noclip \"q\""
Noclip.TextColor3 = Color3.new(0.470588, 0.470588, 0.470588)
Noclip.TextSize = 14

Reviz.Name = "Reviz"
Reviz.Parent = ScrollingFrame
Reviz.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Reviz.BorderColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Reviz.Position = UDim2.new(0.0527249165, 0, 0.610615671, 0)
Reviz.Size = UDim2.new(0, 78, 0, 36)
Reviz.Font = Enum.Font.SciFi
Reviz.Text = "Reviz"
Reviz.TextColor3 = Color3.new(0.470588, 0.470588, 0.470588)
Reviz.TextSize = 14

RoseHub.Name = "RoseHub"
RoseHub.Parent = ScrollingFrame
RoseHub.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
RoseHub.BorderColor3 = Color3.new(0.196078, 0.196078, 0.196078)
RoseHub.Position = UDim2.new(0.507309437, 0, 0.607845902, 0)
RoseHub.Size = UDim2.new(0, 79, 0, 36)
RoseHub.Font = Enum.Font.SciFi
RoseHub.Text = "Rose Hub"
RoseHub.TextColor3 = Color3.new(0.470588, 0.470588, 0.470588)
RoseHub.TextSize = 14

Walkspeed.Name = "Walkspeed"
Walkspeed.Parent = ScrollingFrame
Walkspeed.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Walkspeed.BorderColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Walkspeed.Position = UDim2.new(0.50765425, 0, 0.0341850519, 0)
Walkspeed.Size = UDim2.new(0, 79, 0, 36)
Walkspeed.Font = Enum.Font.SciFi
Walkspeed.Text = "Walkspeed 50"
Walkspeed.TextColor3 = Color3.new(0.470588, 0.470588, 0.470588)
Walkspeed.TextSize = 14
Walkspeed.TextWrapped = true

NameESP.Name = "Name ESP"
NameESP.Parent = ScrollingFrame
NameESP.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
NameESP.BorderColor3 = Color3.new(0.196078, 0.196078, 0.196078)
NameESP.Position = UDim2.new(0.0486693606, 0, 0.797578037, 0)
NameESP.Size = UDim2.new(0, 79, 0, 36)
NameESP.Font = Enum.Font.SciFi
NameESP.Text = "Name ESP"
NameESP.TextColor3 = Color3.new(0.470588, 0.470588, 0.470588)
NameESP.TextSize = 14
NameESP.TextWrapped = true

BodyESP.Name = "Body ESP"
BodyESP.Parent = ScrollingFrame
BodyESP.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
BodyESP.BorderColor3 = Color3.new(0.196078, 0.196078, 0.196078)
BodyESP.Position = UDim2.new(0.507654428, 0, 0.797763348, 0)
BodyESP.Size = UDim2.new(0, 78, 0, 36)
BodyESP.Font = Enum.Font.SciFi
BodyESP.Text = "Body ESP"
BodyESP.TextColor3 = Color3.new(0.470588, 0.470588, 0.470588)
BodyESP.TextSize = 14
BodyESP.TextWrapped = true

EliteWolfie5889.Name = "EliteWolfie#5889"
EliteWolfie5889.Parent = MainFrame
EliteWolfie5889.BackgroundColor3 = Color3.new(1, 1, 1)
EliteWolfie5889.BackgroundTransparency = 1
EliteWolfie5889.Position = UDim2.new(0.531771064, 0, 0.879277825, 0)
EliteWolfie5889.Size = UDim2.new(0, 190, 0, 27)
EliteWolfie5889.Font = Enum.Font.SourceSans
EliteWolfie5889.Text = "Made by Elite Wolfie#5889"
EliteWolfie5889.TextColor3 = Color3.new(0.470588, 0.470588, 0.470588)
EliteWolfie5889.TextSize = 14

DownFrame1_2.Name = "DownFrame1"
DownFrame1_2.Parent = MainFrame
DownFrame1_2.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
DownFrame1_2.BackgroundTransparency = 0.10000000149012
DownFrame1_2.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
DownFrame1_2.BorderSizePixel = 0
DownFrame1_2.Position = UDim2.new(0.510895908, 0, 1.04017854, 0)
DownFrame1_2.Size = UDim2.new(0, 202, 0, 9)

UpFrame2_2.Name = "UpFrame2"
UpFrame2_2.Parent = MainFrame
UpFrame2_2.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
UpFrame2_2.BackgroundTransparency = 0.10000000149012
UpFrame2_2.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
UpFrame2_2.BorderSizePixel = 0
UpFrame2_2.Position = UDim2.new(0, 0, -0.0803571418, 0)
UpFrame2_2.Size = UDim2.new(0, 202, 0, 9)

DownFram2_2.Name = "DownFram2"
DownFram2_2.Parent = MainFrame
DownFram2_2.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
DownFram2_2.BackgroundTransparency = 0.10000000149012
DownFram2_2.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
DownFram2_2.BorderSizePixel = 0
DownFram2_2.Position = UDim2.new(1.02179182, 0, 0, 0)
DownFram2_2.Size = UDim2.new(0, 9, 0, 107)

UpFrame1_2.Name = "UpFrame1"
UpFrame1_2.Parent = MainFrame
UpFrame1_2.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
UpFrame1_2.BackgroundTransparency = 0.10000000149012
UpFrame1_2.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
UpFrame1_2.BorderSizePixel = 0
UpFrame1_2.Position = UDim2.new(-0.0435835347, 0, 0.522321522, 0)
UpFrame1_2.Size = UDim2.new(0, 9, 0, 107)

Tweenified.Name = "Tweenified"
Tweenified.Parent = ScreenGui
Tweenified.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Tweenified.BackgroundTransparency = 0.60000002384186
Tweenified.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Tweenified.BorderSizePixel = 0
Tweenified.Position = UDim2.new(0.569604754, 0, 0.0504095219, 0)
Tweenified.Size = UDim2.new(0, 43, 0, 26)
Tweenified.Font = Enum.Font.SourceSans
Tweenified.Text = "Open"
Tweenified.TextColor3 = Color3.new(1, 1, 1)
Tweenified.TextSize = 14

Cube4_2.Name = "Cube4"
Cube4_2.Parent = Tweenified
Cube4_2.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube4_2.BackgroundTransparency = 0.10000000149012
Cube4_2.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube4_2.BorderSizePixel = 0
Cube4_2.Position = UDim2.new(0.977767944, 0, 0.973214209, 0)
Cube4_2.Size = UDim2.new(0, 9, 0, 9)

Cube2_2.Name = "Cube2"
Cube2_2.Parent = Tweenified
Cube2_2.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube2_2.BackgroundTransparency = 0.10000000149012
Cube2_2.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube2_2.BorderSizePixel = 0
Cube2_2.Position = UDim2.new(0.977767944, 0, -0.348214269, 0)
Cube2_2.Size = UDim2.new(0, 9, 0, 9)

Cube1_2.Name = "Cube1"
Cube1_2.Parent = Tweenified
Cube1_2.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube1_2.BackgroundTransparency = 0.10000000149012
Cube1_2.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube1_2.BorderSizePixel = 0
Cube1_2.Position = UDim2.new(-0.204545453, 0, -0.348214298, 0)
Cube1_2.Size = UDim2.new(0, 9, 0, 9)

Cube2_3.Name = "Cube2"
Cube2_3.Parent = Tweenified
Cube2_3.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube2_3.BackgroundTransparency = 0.10000000149012
Cube2_3.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube2_3.BorderSizePixel = 0
Cube2_3.Position = UDim2.new(-0.204545453, 0, 0.973214269, 0)
Cube2_3.Size = UDim2.new(0, 9, 0, 9)

Line2.Name = "Line2"
Line2.Parent = Tweenified
Line2.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Line2.BackgroundTransparency = 0.10000000149012
Line2.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Line2.BorderSizePixel = 0
Line2.Position = UDim2.new(0, 0, 0.758928597, 0)
Line2.Size = UDim2.new(0, 43, 0, 6)

Cube1_3.Name = "Cube1"
Cube1_3.Parent = Tweenified
Cube1_3.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube1_3.BackgroundTransparency = 0.10000000149012
Cube1_3.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Cube1_3.BorderSizePixel = 0
Cube1_3.Position = UDim2.new(0, 0, -0.0267857146, 0)
Cube1_3.Size = UDim2.new(0, 43, 0, 6)
-- Scripts:
function SCRIPT_IPKS86_FAKESCRIPT() -- WheelRotating.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = WheelRotating
	while true do
	script.Parent.Rotation=script.Parent.Rotation+3;wait(0.01)end

end
coroutine.resume(coroutine.create(SCRIPT_IPKS86_FAKESCRIPT))
function SCRIPT_USWZ65_FAKESCRIPT() -- Cube2.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Cube2
	while true do
	script.Parent.Rotation=script.Parent.Rotation+3;wait(0.01)end

end
coroutine.resume(coroutine.create(SCRIPT_USWZ65_FAKESCRIPT))
function SCRIPT_KSND82_FAKESCRIPT() -- Cube4.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Cube4
	while true do
	script.Parent.Rotation=script.Parent.Rotation+3;wait(0.01)end

end
coroutine.resume(coroutine.create(SCRIPT_KSND82_FAKESCRIPT))
function SCRIPT_UUDR75_FAKESCRIPT() -- Cube3.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Cube3
	while true do
	script.Parent.Rotation=script.Parent.Rotation+3;wait(0.01)end

end
coroutine.resume(coroutine.create(SCRIPT_UUDR75_FAKESCRIPT))
function SCRIPT_OUCC89_FAKESCRIPT() -- Cube1.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Cube1
	while true do
	script.Parent.Rotation=script.Parent.Rotation+3;wait(0.01)end

end
coroutine.resume(coroutine.create(SCRIPT_OUCC89_FAKESCRIPT))
function SCRIPT_FHJZ72_FAKESCRIPT() -- AntiAfk.Script 
	local script = Instance.new('Script')
	script.Parent = AntiAfk
	
	script.Parent.MouseButton1Click:connect(function()
	local b=game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
	b:CaptureController()b:ClickButton2(Vector2.new())end)end)

end
coroutine.resume(coroutine.create(SCRIPT_FHJZ72_FAKESCRIPT))
function SCRIPT_WMGZ87_FAKESCRIPT() -- Fly.Script 
	local script = Instance.new('Script')
	script.Parent = Fly
	script.Parent.MouseButton1Click:connect(function()
		 repeat wait()
	   until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
	local mouse = game.Players.LocalPlayer:GetMouse()
	repeat wait() until mouse
	local plr = game.Players.LocalPlayer
	local torso = plr.Character.Torso
	local flying = true
	local deb = true
	local ctrl = {f = 0, b = 0, l = 0, r = 0}
	local lastctrl = {f = 0, b = 0, l = 0, r = 0}
	local maxspeed = 50
	local speed = 0
	
	function Fly()
	local bg = Instance.new("BodyGyro", torso)
	bg.P = 9e4
	bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
	bg.cframe = torso.CFrame
	local bv = Instance.new("BodyVelocity", torso)
	bv.velocity = Vector3.new(0,0.1,0)
	bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
	repeat wait()
	plr.Character.Humanoid.PlatformStand = true
	if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
	speed = speed+.5+(speed/maxspeed)
	if speed > maxspeed then
	speed = maxspeed
	end
	elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
	speed = speed-1
	if speed < 0 then
	speed = 0
	end
	end
	if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
	bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
	lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
	elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
	bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
	else
	bv.velocity = Vector3.new(0,0.1,0)
	end
	bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
	until not flying
	ctrl = {f = 0, b = 0, l = 0, r = 0}
	lastctrl = {f = 0, b = 0, l = 0, r = 0}
	speed = 0
	bg:Destroy()
	bv:Destroy()
	plr.Character.Humanoid.PlatformStand = false
	end
	mouse.KeyDown:connect(function(key)
	if key:lower() == "t" then
	if flying then flying = false
	else
	flying = true
	Fly()
	end
	elseif key:lower() == "w" then
	ctrl.f = 1
	elseif key:lower() == "s" then
	ctrl.b = -1
	elseif key:lower() == "a" then
	ctrl.l = -1
	elseif key:lower() == "d" then
	ctrl.r = 1
	end
	end)
	mouse.KeyUp:connect(function(key)
	if key:lower() == "w" then
	ctrl.f = 0
	elseif key:lower() == "s" then
	ctrl.b = 0
	elseif key:lower() == "a" then
	ctrl.l = 0
	elseif key:lower() == "d" then
	ctrl.r = 0
	end
	end)
	Fly()
	 
	end)

end
coroutine.resume(coroutine.create(SCRIPT_WMGZ87_FAKESCRIPT))
function SCRIPT_MXQZ84_FAKESCRIPT() -- InfJump.Script 
	local script = Instance.new('Script')
	script.Parent = InfJump
	script.Parent.MouseButton1Click:connect(function()_G.infinjump=true
	local _a=game:GetService("Players").LocalPlayer;local aa=_a:GetMouse()
	aa.KeyDown:connect(function(da)
	if _G.infinjump then
	if da:byte()==32 then
	Humanoid=game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")Humanoid:ChangeState("Jumping")wait(0.1)
	Humanoid:ChangeState("Seated")end end end)local ba=game:GetService("Players").LocalPlayer
	local ca=ba:GetMouse()
	ca.KeyDown:connect(function(da)da=da:lower()
	if da=="f"then if _G.infinjump==true then _G.infinjump=false else
	_G.infinjump=true end end end)end)

end
coroutine.resume(coroutine.create(SCRIPT_MXQZ84_FAKESCRIPT))
function SCRIPT_IJUO79_FAKESCRIPT() -- Jumppower.Script 
	local script = Instance.new('Script')
	script.Parent = Jumppower
	script.Parent.MouseButton1Click:connect(function()
		while wait(0.01) do
			game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass"Humanoid".JumpPower = 100
		end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_IJUO79_FAKESCRIPT))
function SCRIPT_YHMC88_FAKESCRIPT() -- Noclip.Script 
	local script = Instance.new('Script')
	script.Parent = Noclip
	
	script.Parent.MouseButton1Click:connect(function()noclip=false
	game:GetService('RunService').Stepped:connect(function()if
	noclip then
	game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)end end)plr=game.Players.LocalPlayer;mouse=plr:GetMouse()
	mouse.KeyDown:connect(function(b)if
	b=="q"then noclip=not noclip
	game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)end end)end)

end
coroutine.resume(coroutine.create(SCRIPT_YHMC88_FAKESCRIPT))
function SCRIPT_ZTLO89_FAKESCRIPT() -- Reviz.Script 
	local script = Instance.new('Script')
	script.Parent = Reviz
	
	script.Parent.MouseButton1Click:connect(function()prefix=";"wait(0.3)
	Commands={'[-] cmdbar is shown when ; is pressed.','[1] kill [plr] -- You need a tool! Will kill the player, use rkill to kill you and player','[2] bring [plr] -- You need a tool! Will bring player to you','[3] spin [plr] -- You need a tool! Makes you and the player spin crazy','[4] unspin -- Use after using spin cmd and dying, so you stop loop teleporting','[5] attach [plr] -- You need a tool! Attaches you to player','[6] unattach [plr] -- Attempts to unattach you from a player','[7] follow [plr] -- Makes you follow behind the player','[8] unfollow','[9] freefall [plr] -- You need a tool! Teleports you and the player up into the air','[10] trail [plr] -- The opposite of follow, you stay infront of player','[11] untrail','[12] orbit [plr] -- Makes you orbit the player','[13] unorbit','[14] fling [plr] -- Makes you fling the player','[15] unfling','[16] fecheck -- Checks if the game is FE or not','[17] void [plr] -- Teleports player to the void','[18] noclip -- Gives you noclip to walk through walls','[19] clip -- Removes noclip','[20] speed [num]/ws [num] -- Changes how fast you walk 16 is default','[21] jumppower [num]/jp [num] -- Changes how high you jump 50 is default','[22] hipheight [num]/hh [num] -- Changes how high you float 0 is default','[23] default -- Changes your speed, jumppower and hipheight to default values','[24] annoy [plr] -- Loop teleports you to the player','[25] unannoy','[26] headwalk [plr] -- Loop teleports you to the player head','[27] unheadwalk','[28] nolimbs -- Removes your arms and legs','[29] god -- Gives you FE Godmode','[30] drophats -- Drops your accessories','[31] droptool -- Drops any tool you have equipped','[32] loopdhats -- Loop drops your accessories','[33] unloopdhats','[34] loopdtool -- Loop drops any tools you have equipped','[35] unloopdtool','[36] invisible -- Gives you invisibility CREDIT TO TIMELESS','[37] view [plr] -- Changes your camera to the player character','[38] unview','[39] goto [plr] -- Teleports you to player','[40] fly -- Allows you to fly, credit to Infinite Yield','[41] unfly','[42] chat [msg] -- Makes you chat a message','[43] spam [msg] -- Spams a message','[44] unspam','[45] spamwait [num] -- Changes delay of chatting a message for the spam command in seconds default is 1 second','[46] pmspam [plr] -- Spams a player in private message','[47] unpmspam','[48] cfreeze [plr] -- Freezes a player on your client, they will only be frozen for you','[49] uncfreeze [plr]','[50] unlockws -- Unlocks the workspace','[51] lockws -- Locks the workspace','[52] btools -- Gives you btools that will only show to you useful for deleting certain blocks only for you','[53] pstand -- Enables platform stand','[54] unpstand -- Disables platform stand','[55] blockhead -- Removes your head mesh','[56] sit','[57] bringobj [obj] -- Only shows on client, brings an object/part to you constantly, can be used to bring healing parts, weapons, money etc, type in exact name','[58] wsvis [num] -- Changes visibility of workspace parts, num should be between 0 and 1, only shows client sided','[59] hypertotal -- Loads in my FE GUI Hypertotal','[60] cmds -- Prints all commands','[61] rmeshhats/blockhats -- Removes the meshes of all your accessories aka block hats','[62] rmeshtool/blocktool -- Removes the mesh of the tool you have equipped aka block tool','[63] spinner -- Makes you spin','[64] nospinner','[65] reach [num] -- Gives you reach, mostly used for swords, say ;reachd for default and enter number after for custom','[66] noreach -- Removes reach, must have tool equipped','[67] rkill [plr] -- Kills you and the player, use kill to just kill the player without dying','[68] tp me [plr] -- Alternative to goto','[69] cbring [plr] -- Brings player infront of you, shows only on client, allows you to do damage to player','[70] uncbring','[71] swap [plr] -- You need a tool! Swaps players position with yours and your position with players','[72] givetool [plr] -- Gives the tool you have equipped to the player','[73] glitch [plr] -- Glitches you and the player, looks very cool','[74] unglitch -- Unglitches you','[75] grespawn -- Alternative to normal respawn and usually works best for when you want to reset with FE Godmode','[76] explorer -- Loads up DEX','[77] reset -- Resets your character.','[78] anim [id] -- Applies an animation on you, must be created by ROBLOX','[79] animgui -- Loads up Energize animations GUI','[80] savepos -- Saves your current position','[81] loadpos -- Teleports you to your saved position','[82] bang [plr] -- 18+ will not work if you have FE Godmode on','[83] unbang','[84] delcmdbar -- Removes the command bar completely','[85] bringmod [obj] -- Brings all the parts in a model, client only, comes from ;bringobj enter exact name of model','[86] shutdown -- Uses harkinians script to shutdown server','[87] respawn -- If grespawn doesnt work you can use respawn','[88] delobj [obj] -- Deletes a certain brick in workspace, client sided','[89] getplrs -- Prints all players in game','[90] deldecal -- Deletes all decals client sided','[91] opfinality -- Loads in my FE GUI Opfinality','[92] remotes -- Prints all remotes in the game in the console when added','[93] noremotes -- Stops printing remotes','[94] tpdefault -- Stops all loop teleports to a player','[95] stopsit -- Will not allow you to sit','[96] gosit -- Allows you to sit','[97] clicktp -- Enables click tp','[98] noclicktp -- Disables click tp','[99] toolson -- If any tools are dropped in the workspace you will automatically get them','[100] toolsoff -- Stops ;toolson','[101] version -- Gets the admin version','[102] state [num] -- Changes your humanoid state, ;unstate to stop.','[103] gravity [num] -- Changes workspace gravity default is 196.2','[104] pgs -- Checks if the game has PGSPhysicsSolverEnabled enabled','[105] clickdel -- Delete any block you press q on, client sided','[106] noclickdel -- Stops clickdel','[107] looprhats -- Loop removes mesh of your hats/loop block hats','[108] unlooprhats -- Stops loop removing mesh','[109] looprtool -- Loop removes mesh of your tool/loop block tools','[110] unlooprtool -- Stops loop removing mesh','[111] givealltools [plr] -- Gives all the tools you have in your backpack to the player','[112] age [plr] -- Makes you chat the account age of the player','[113] id [plr] -- Makes you chat the account ID of the player','[114] .age [plr] -- Privately shows you the account age of the player','[115] .id [plr] -- Privately shows you the account ID of the player','[116] gameid -- Shows the game ID','[117] removeinvis -- Removes all invisible walls/parts, client sided','[118] removefog -- Removes fog, client sided','[119] disable -- Disables your character by removing humanoid','[120] enable -- Enables your character by adding humanoid','[121] prefix [key] -- Changes the prefix used, default is ;','[122] ;resetprefix -- Resets the prefix to ; incase you change it to an unusable prefix. Say exactly ";resetprefix" to do this command, no matter what your prefix is set to.','[123] flyspeed [num] -- Change your fly speed, default is 1','[124] carpet [plr] -- Makes you a carpet for a player, will not work if FE Godmode is on','[125] uncarpet -- Stops carpet player','[126] stare [plr] -- Turns your character to stare at another player','[127] unstare -- Stops stare player','[128] logchat -- Logs all chat (including /e and whispers) of all players','[129] unlogchat -- Disables logchat','[130] fixcam -- Fixes/resets your camera','[131] unstate -- Stops changing state'}speedget=1
	lplayer=game:GetService("Players").LocalPlayer
	lplayer.CharacterAdded:Connect(function(_aa)spin=false;flying=false;staring=false;banpl=false end)function change()prefix=prefix;speedfly=speedfly end
	function GetPlayer(_aa)local baa={}
	local _ba=_aa:lower()
	if _ba=="all"then
	for bba,cba in
	pairs(game:GetService("Players"):GetPlayers())do table.insert(baa,cba)end elseif _ba=="others"then for bba,cba in
	pairs(game:GetService("Players"):GetPlayers())do
	if cba.Name~=lplayer.Name then table.insert(baa,cba)end end elseif _ba=="me"then for bba,cba in
	pairs(game:GetService("Players"):GetPlayers())do
	if cba.Name==lplayer.Name then table.insert(baa,cba)end end else
	for bba,cba in
	pairs(game:GetService("Players"):GetPlayers())do if
	cba.Name:lower():sub(1,#_aa)==_aa:lower()then table.insert(baa,cba)end end end;return baa end;local ac=lplayer:GetMouse()spin=false;followed=false;traill=false
	noclip=false;annoying=false;hwalk=false;droppinghats=false;droppingtools=false;flying=false
	spamdelay=1;spamming=false;spammingpm=false;cbringing=false;remotes=true;added=true;binds=false
	stopsitting=false;clickgoto=false;gettingtools=false;removingmeshhats=false;removingmeshtool=false
	clickdel=false;staring=false;chatlogs=false;banpl=false;changingstate=false;statechosen=0
	adminversion="Reviz Admin by illremember, Version 2.0"flying=false;speedfly=1;function plrchat(_aa,aaa)
	print(_aa.Name..": "..tick().."\n"..aaa)end;for _aa,aaa in
	pairs(game:GetService("Players"):GetPlayers())do
	aaa.Chatted:connect(function(_ba)if chatlogs then plrchat(aaa,_ba)end end)end
	game:GetService("Players").PlayerAdded:connect(function(_aa)
	_aa.Chatted:connect(function(caa)if
	chatlogs then plrchat(_aa,caa)end end)end)local bc=Instance.new("ScreenGui")
	local cc=Instance.new("Frame")local dc=Instance.new("TextBox")
	bc.Parent=game:GetService("CoreGui")cc.Parent=bc;cc.BackgroundColor3=Color3.new(0.3,0.1,0.1)
	cc.BackgroundTransparency=0.3;cc.Position=UDim2.new(0.5,0,0,10)
	cc.Size=UDim2.new(0,200,0,40)cc.Active=true;cc.Draggable=true;dc.Name="CMDBAR"dc.Parent=cc
	dc.BackgroundColor3=Color3.new(0.105882,0.164706,0.207843)dc.BackgroundTransparency=0.20000000298023
	dc.Size=UDim2.new(0,180,0,20)dc.Position=UDim2.new(0.05,0,0.25,0)
	dc.Font=Enum.Font.SourceSansLight;dc.FontSize=Enum.FontSize.Size14
	dc.TextColor3=Color3.new(0.945098,0.945098,0.945098)dc.TextScaled=true;dc.TextSize=14;dc.TextWrapped=true
	dc.Text="Press ; to type, Enter to execute"local _d=Instance.new("ScreenGui")
	local ad=Instance.new("Frame")local bd=Instance.new("ScrollingFrame")
	local cd=Instance.new("TextLabel")local dd=Instance.new("TextButton")_d.Name="CMDS"
	_d.Parent=game:GetService("CoreGui")ad.Name="CMDSFRAME"ad.Parent=_d;ad.Active=true
	ad.BackgroundColor3=Color3.new(0.223529,0.231373,0.309804)ad.BorderSizePixel=0;ad.Draggable=true
	ad.Position=UDim2.new(0,315,0,100)ad.Size=UDim2.new(0,275,0,275)ad.Visible=false;bd.Parent=ad
	bd.BackgroundColor3=Color3.new(0.160784,0.160784,0.203922)bd.BorderSizePixel=0
	bd.Position=UDim2.new(0,0,0.0729999989,0)bd.Size=UDim2.new(1.04999995,0,0.92900002,0)
	bd.CanvasSize=UDim2.new(0,0,10,0)cd.Parent=bd;cd.BackgroundColor3=Color3.new(1,1,1)
	cd.BackgroundTransparency=1;cd.Size=UDim2.new(0.930000007,0,1,0)
	cd.Font=Enum.Font.SourceSans;cd.FontSize=Enum.FontSize.Size18
	cd.Text="[-] cmdbar is shown when ; is pressed.,\n[1] kill [plr] -- You need a tool! Will kill the player, use rkill to kill you and player,\n[2] bring [plr] -- You need a tool! Will bring player to you,\n[3] spin [plr] -- You need a tool! Makes you and the player spin crazy,\n[4] unspin -- Use after using spin cmd and dying, so you stop loop teleporting,\n[5] attach [plr] -- You need a tool! Attaches you to player,\n[6] unattach [plr] -- Attempts to unattach you from a player,\n[7] follow [plr] -- Makes you follow behind the player,\n[8] unfollow,\n[9] freefall [plr] -- You need a tool! Teleports you and the player up into the air,\n[10] trail [plr] -- The opposite of follow, you stay infront of player,\n[11] untrail,\n[12] orbit [plr] -- Makes you orbit the player,\n[13] unorbit,\n[14] fling [plr] -- Makes you fling the player,\n[15] unfling,\n[16] fecheck -- Checks if the game is FE or not,\n[17] void [plr] -- Teleports player to the void,\n[18] noclip -- Gives you noclip to walk through walls,\n[19] clip -- Removes noclip,\n[20] speed [num]/ws [num] -- Changes how fast you walk 16 is default,\n[21] jumppower [num]/jp [num] -- Changes how high you jump 50 is default,\n[22] hipheight [num]/hh [num] -- Changes how high you float 0 is default,\n[23] default -- Changes your speed, jumppower and hipheight to default values,\n[24] annoy [plr] -- Loop teleports you to the player,\n[25] unannoy,\n[26] headwalk [plr] -- Loop teleports you to the player head,\n[27] unheadwalk,\n[28] nolimbs -- Removes your arms and legs,\n[29] god -- Gives you FE Godmode,\n[30] drophats -- Drops your accessories,\n[31] droptool -- Drops any tool you have equipped,\n[32] loopdhats -- Loop drops your accessories,\n[33] unloopdhats,\n[34] loopdtool -- Loop drops any tools you have equipped,\n[35] unloopdtool,\n[36] invisible -- Gives you invisibility CREDIT TO TIMELESS,\n[37] view [plr] -- Changes your camera to the player character,\n[38] unview,\n[39] goto [plr] -- Teleports you to player,\n[40] fly -- Allows you to fly,\n[41] unfly,\n[42] chat [msg] -- Makes you chat a message,\n[43] spam [msg] -- Spams a message,\n[44] unspam,\n[45] spamwait [num] -- Changes delay of chatting a message for the spam command in seconds default is 1 second,\n[46] pmspam [plr] -- Spams a player in private message,\n[47] unpmspam,\n[48] cfreeze [plr] -- Freezes a player on your client, they will only be frozen for you,\n[49] uncfreeze [plr],\n[50] unlockws -- Unlocks the workspace,\n[51] lockws -- Locks the workspace,\n[52] btools -- Gives you btools that will only show to you useful for deleting certain blocks only for you,\n[53] pstand -- Enables platform stand,\n[54] unpstand -- Disables platform stand,\n[55] blockhead -- Removes your head mesh,\n[56] sit,\n[57] bringobj [obj] -- Only shows on client, brings an object/part to you constantly, can be used to bring healing parts, weapons, money etc, type in exact name,\n[58] wsvis [num] -- Changes visibility of workspace parts, num should be between 0 and 1, only shows client sided,\n[59] hypertotal -- Loads in my FE GUI Hypertotal,\n[60] cmds -- Prints all commands,\n[61] rmeshhats/blockhats -- Removes the meshes of all your accessories aka block hats,\n[62] rmeshtool/blocktool -- Removes the mesh of the tool you have equipped aka block tool,\n[63] spinner -- Makes you spin,\n[64] nospinner,\n[65] reach [num] -- Gives you reach, mostly used for swords, say ;reachd for default and enter number after for custom,\n[66] noreach -- Removes reach, must have tool equipped,\n[67] rkill [plr] -- Kills you and the player, use kill to just kill the player without dying,\n[68] tp me [plr] -- Alternative to goto,\n[69] cbring [plr] -- Brings player infront of you, shows only on client, allows you to do damage to player,\n[70] uncbring,\n[71] swap [plr] -- You need a tool! Swaps players position with yours and your position with players,\n[72] givetool [plr] -- Gives the tool you have equipped to the player,\n[73] glitch [plr] -- Glitches you and the player, looks very cool,\n[74] unglitch -- Unglitches you,\n[75] grespawn -- Alternative to normal respawn and usually works best for when you want to reset with FE Godmode,\n[76] explorer -- Loads up DEX,\n[77] reset -- Resets your character.,\n[78] anim [id] -- Applies an animation on you, must be created by ROBLOX,\n[79] animgui -- Loads up Energize animations GUI,\n[80] savepos -- Saves your current position,\n[81] loadpos -- Teleports you to your saved position,\n[82] bang [plr] -- 18+,\n[83] unbang,\n[84] delcmdbar -- Removes the command bar completely,\n[85] bringmod [obj] -- Brings all the parts in a model, client only, comes from ;bringobj enter exact name of model,\n[86] shutdown -- Uses harkinians script to shutdown server,\n[87] respawn -- If grespawn doesnt work you can use respawn,\n[88] delobj [obj] -- Deletes a certain brick in workspace, client sided,\n[89] getplrs -- Prints all players in game,\n[90] deldecal -- Deletes all decals client sided,\n[91] opfinality -- Loads in my FE GUI Opfinality,\n[92] remotes -- Prints all remotes in the game in the console when added,\n[93] noremotes -- Stops printing remotes,\n[94] tpdefault -- Stops all loop teleports to a player,\n[95] stopsit -- Will not allow you to sit,\n[96] gosit -- Allows you to sit,\n[97] clicktp -- Enables click tp,\n[98] noclicktp -- Disables click tp,\n[99] toolson -- If any tools are dropped in the workspace you will automatically get them,\n[100] toolsoff -- Stops ;toolson,\n[101] version -- Gets the admin version, \n This list of commands is NOT showing everything, go to my thread in the pastebin link to see ALL commands."cd.TextColor3=Color3.new(1,1,1)cd.TextSize=15;cd.TextWrapped=true
	cd.TextXAlignment=Enum.TextXAlignment.Left;cd.TextYAlignment=Enum.TextYAlignment.Top;dd.Name="closegui"
	dd.Parent=ad
	dd.BackgroundColor3=Color3.new(0.890196,0.223529,0.0588235)dd.BorderSizePixel=0;dd.Position=UDim2.new(0.995000005,0,0,0)
	dd.Size=UDim2.new(0.0545952693,0,0.0728644878,0)dd.Font=Enum.Font.SourceSansBold
	dd.FontSize=Enum.FontSize.Size24;dd.Text="X"dd.TextColor3=Color3.new(1,1,1)dd.TextSize=20
	dd.MouseButton1Click:connect(function()
	ad.Visible=false end)
	game:GetService('RunService').Stepped:connect(function()if spin then
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[spinplr.Name].Character.HumanoidRootPart.CFrame end
	if followed then
	lplayer.Character.HumanoidRootPart.CFrame=
	game:GetService("Players")[flwplr.Name].Character.HumanoidRootPart.CFrame+
	game:GetService("Players")[flwplr.Name].Character.HumanoidRootPart.CFrame.lookVector*-5 end
	if traill then
	lplayer.Character.HumanoidRootPart.CFrame=
	game:GetService("Players")[trlplr.Name].Character.HumanoidRootPart.CFrame+
	game:GetService("Players")[trlplr.Name].Character.HumanoidRootPart.CFrame.lookVector*5 end;if annoying then
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[annplr.Name].Character.HumanoidRootPart.CFrame end
	if hwalk then
	lplayer.Character.HumanoidRootPart.CFrame=
	game:GetService("Players")[hdwplr.Name].Character.HumanoidRootPart.CFrame+Vector3.new(0,4,0)end
	if staring then
	lplayer.Character.HumanoidRootPart.CFrame=CFrame.new(lplayer.Character.Torso.Position,game:GetService("Players")[stareplr.Name].Character.Torso.Position)end end)
	game:GetService('RunService').Stepped:connect(function()
	if noclip then
	if
	lplayer.Character.Humanoid.RigType==Enum.HumanoidRigType.R6 then
	lplayer.Character.Head.CanCollide=false;lplayer.Character.Torso.CanCollide=false
	lplayer.Character["Left Leg"].CanCollide=false
	lplayer.Character["Right Leg"].CanCollide=false else
	lplayer.Character.Humanoid:ChangeState(11)end end;if changingstate then
	lplayer.Character.Humanoid:ChangeState(statechosen)end end)
	game:GetService('RunService').Stepped:connect(function()
	if
	droppinghats then for _aa,aaa in pairs(lplayer.Character:GetChildren())do
	if
	(aaa:IsA("Accessory"))or(aaa:IsA("Hat"))then aaa.Parent=workspace end end end;if droppingtools then
	for _aa,aaa in pairs(lplayer.Character:GetChildren())do if
	(aaa:IsA("Tool"))then aaa.Parent=workspace end end end
	if
	removingmeshhats then
	for _aa,aaa in pairs(lplayer.Character:GetChildren())do if
	(aaa:IsA("Accessory"))or(aaa:IsA("Hat"))then
	aaa.Handle.Mesh:Destroy()end end end
	if removingmeshtool then for _aa,aaa in pairs(lplayer.Character:GetChildren())do
	if
	(aaa:IsA("Tool"))then aaa.Handle.Mesh:Destroy()end end end end)
	game:GetService('RunService').Stepped:connect(function()if banpl then
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[bplrr].Character.HumanoidRootPart.CFrame end end)
	game:GetService('RunService').Stepped:connect(function()
	if
	stopsitting then lplayer.Character.Humanoid.Sit=false end end)plr=lplayer;hum=plr.Character.HumanoidRootPart
	mouse=plr:GetMouse()
	mouse.KeyDown:connect(function(_aa)
	if _aa=="e"then if mouse.Target then
	if clickgoto then
	hum.CFrame=CFrame.new(mouse.Hit.x,
	mouse.Hit.y+5,mouse.Hit.z)elseif clickdel then mouse.Target:Destroy()end end end end)
	game:GetService("Workspace").ChildAdded:connect(function(_aa)
	if
	gettingtools then if _aa:IsA("Tool")then
	_aa.Handle.CFrame=lplayer.Character.HumanoidRootPart.CFrame end end end)
	lplayer.Chatted:Connect(function(_aa)
	if
	string.sub(_aa,1,6)== (prefix.."kill ")then
	if string.sub(_aa,7)=="me"then
	lplayer.Character.HumanoidRootPart.CFrame=CFrame.new(100000,0,100000)else
	for baa,_ba in pairs(GetPlayer(string.sub(_aa,7)))do
	local dba=lplayer.Character.HumanoidRootPart.CFrame;lplayer.Character.Humanoid.Name=1
	local _ca=lplayer.Character["1"]:Clone()_ca.Parent=lplayer.Character;_ca.Name="Humanoid"wait(0.1)
	lplayer.Character["1"]:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character;lplayer.Character.Animate.Disabled=true
	wait(0.1)lplayer.Character.Animate.Disabled=false
	lplayer.Character.Humanoid.DisplayDistanceType="None"for bca,cca in
	pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
	lplayer.Character.Humanoid:EquipTool(cca)end;local function aca(bca,cca)
	local dca,_da=bca.Character,cca.Character
	if dca and _da then dca:MoveTo(_da.Head.Position)end end
	wait(0.1)
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;wait(0.2)
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;wait(0.5)
	lplayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(
	-100000,10,-100000))wait(0.7)
	aca(lplayer,game:GetService("Players")[_ba.Name])wait(0.7)
	lplayer.Character.HumanoidRootPart.CFrame=dba
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools needed!",Text="You need a tool in your backpack for this command!"})end end end
	if string.sub(_aa,1,7)== (prefix.."bring ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,8)))do local aba=lplayer.Character.HumanoidRootPart.CFrame
	lplayer.Character.Humanoid.Name=1;local aca=lplayer.Character["1"]:Clone()
	aca.Parent=lplayer.Character;aca.Name="Humanoid"wait(0.1)
	lplayer.Character["1"]:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character;lplayer.Character.Animate.Disabled=true
	wait(0.1)lplayer.Character.Animate.Disabled=false
	lplayer.Character.Humanoid.DisplayDistanceType="None"for dca,_da in
	pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
	lplayer.Character.Humanoid:EquipTool(_da)end
	local function bca(dca,_da)
	local ada,bda=dca.Character,_da.Character;if ada and bda then
	ada.HumanoidRootPart.CFrame=bda.HumanoidRootPart.CFrame end end
	local function cca(dca,_da)local ada,bda=dca.Character,_da.Character;if ada and bda then
	ada:MoveTo(bda.Head.Position)end end
	bca(game:GetService("Players")[_ba.Name],lplayer)wait(0.2)
	bca(game:GetService("Players")[_ba.Name],lplayer)wait(0.5)
	lplayer.Character.HumanoidRootPart.CFrame=aba;wait(0.5)
	cca(lplayer,game:GetService("Players")[_ba.Name])wait(0.3)
	lplayer.Character.HumanoidRootPart.CFrame=aba
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools needed!",Text="You need a tool in your backpack for this command!"})end end
	if string.sub(_aa,1,6)== (prefix.."spin ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,7)))do lplayer.Character.Humanoid.Name=1
	local aba=lplayer.Character["1"]:Clone()aba.Parent=lplayer.Character;aba.Name="Humanoid"wait(0.1)
	lplayer.Character["1"]:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character;lplayer.Character.Animate.Disabled=true
	wait(0.1)lplayer.Character.Animate.Disabled=false
	lplayer.Character.Humanoid.DisplayDistanceType="None"lplayer.Character.Animate.Disabled=false;for cba,dba in
	pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
	lplayer.Character.Humanoid:EquipTool(dba)end
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character["Left Arm"].CFrame;spinplr=_ba;wait(0.5)spin=true
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools needed!",Text="You need a tool in your backpack for this command!"})end end
	if string.sub(_aa,1,7)== (prefix.."unspin")then spin=false end
	if string.sub(_aa,1,8)== (prefix.."attach ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,9)))do lplayer.Character.Humanoid.Name=1
	local aba=lplayer.Character["1"]:Clone()aba.Parent=lplayer.Character;aba.Name="Humanoid"wait(0.1)
	lplayer.Character["1"]:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character;lplayer.Character.Animate.Disabled=true
	wait(0.1)lplayer.Character.Animate.Disabled=false
	lplayer.Character.Humanoid.DisplayDistanceType="None"for cba,dba in
	pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
	lplayer.Character.Humanoid:EquipTool(dba)end
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character["Left Arm"].CFrame;wait(0.3)
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character["Left Arm"].CFrame;attplr=_ba
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools needed!",Text="You need a tool in your backpack for this command!"})end end
	if string.sub(_aa,1,10)== (prefix.."unattach ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,11)))do
	local function aba(cba,dba)local _ca,aca=cba.Character,dba.Character;if _ca and aca then
	_ca:MoveTo(aca.Head.Position)end end
	aba(lplayer,game:GetService("Players")[_ba.Name])end end
	if string.sub(_aa,1,8)== (prefix.."follow ")then for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,9)))do followed=true;flwplr=_ba end end
	if string.sub(_aa,1,9)== (prefix.."unfollow")then followed=false end
	if string.sub(_aa,1,10)== (prefix.."freefall ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,11)))do local bba=lplayer.Character.HumanoidRootPart.CFrame
	lplayer.Character.Humanoid.Name=1;local cba=lplayer.Character["1"]:Clone()
	cba.Parent=lplayer.Character;cba.Name="Humanoid"wait(0.1)
	lplayer.Character["1"]:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character;lplayer.Character.Animate.Disabled=true
	wait(0.1)lplayer.Character.Animate.Disabled=false
	lplayer.Character.Humanoid.DisplayDistanceType="None"for dba,_ca in
	pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
	lplayer.Character.Humanoid:EquipTool(_ca)end
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;wait(0.2)
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;wait(0.6)
	lplayer.Character.HumanoidRootPart.CFrame=bba;wait(0.6)
	lplayer.Character.HumanoidRootPart.CFrame=CFrame.new(0,50000,0)
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools needed!",Text="You need a tool in your backpack for this command!"})end end
	if string.sub(_aa,1,7)== (prefix.."trail ")then for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,8)))do traill=true;trlplr=_ba end end
	if string.sub(_aa,1,8)== (prefix.."untrail")then traill=false end
	if string.sub(_aa,1,7)== (prefix.."orbit ")then
	if
	string.sub(_aa,8)==
	"all"or string.sub(_aa,8)=="others"or string.sub(_aa,8)=="me"then
	lplayer.Character.HumanoidRootPart.CFrame=lplayer.Character.HumanoidRootPart.CFrame else
	for baa,_ba in pairs(GetPlayer(string.sub(_aa,8)))do
	local aba=Instance.new("RocketPropulsion")aba.Parent=lplayer.Character.HumanoidRootPart;aba.Name="Orbit"
	aba.Target=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart;aba:Fire()noclip=true end end end;if string.sub(_aa,1,8)== (prefix.."unorbit")then
	lplayer.Character.HumanoidRootPart.Orbit:Destroy()noclip=false end
	if
	string.sub(_aa,1,7)== (prefix.."fling ")then
	if string.sub(_aa,8)=="all"or
	string.sub(_aa,8)=="others"or
	string.sub(_aa,8)=="me"then
	lplayer.Character.HumanoidRootPart.CFrame=lplayer.Character.HumanoidRootPart.CFrame else
	for baa,_ba in pairs(GetPlayer(string.sub(_aa,8)))do
	local aba=Instance.new("RocketPropulsion")aba.Parent=lplayer.Character.HumanoidRootPart
	aba.CartoonFactor=1;aba.MaxThrust=800000;aba.MaxSpeed=1000;aba.ThrustP=200000;aba.Name="Fling"
	game:GetService("Workspace").CurrentCamera.CameraSubject=game:GetService("Players")[_ba.Name].Character.Head
	aba.Target=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart;aba:Fire()noclip=true end end end
	if string.sub(_aa,1,8)== (prefix.."unfling")then noclip=false
	lplayer.Character.HumanoidRootPart.Fling:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character.Head;wait(0.4)
	lplayer.Character.HumanoidRootPart.Fling:Destroy()end
	if string.sub(_aa,1,8)== (prefix.."fecheck")then
	if
	game:GetService("Workspace").FilteringEnabled==true then
	warn("FE is Enabled (Filtering Enabled)")
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="FE is Enabled",Text="Filtering Enabled. Enjoy using Reviz Admin!"})else
	warn("FE is Disabled (Filtering Disabled) Consider using a different admin script.")
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="FE is Disabled",Text="Filtering Disabled. Consider using a different admin script."})end end
	if string.sub(_aa,1,6)== (prefix.."void ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,7)))do lplayer.Character.Humanoid.Name=1
	local aba=lplayer.Character["1"]:Clone()aba.Parent=lplayer.Character;aba.Name="Humanoid"wait(0.1)
	lplayer.Character["1"]:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character;lplayer.Character.Animate.Disabled=true
	wait(0.1)lplayer.Character.Animate.Disabled=false
	lplayer.Character.Humanoid.DisplayDistanceType="None"for cba,dba in
	pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
	lplayer.Character.Humanoid:EquipTool(dba)end
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;wait(0.2)
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;wait(0.6)
	lplayer.Character.HumanoidRootPart.CFrame=CFrame.new(999999999999999,0,999999999999999)
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools needed!",Text="You need a tool in your backpack for this command!"})end end
	if string.sub(_aa,1,7)== (prefix.."noclip")then noclip=true
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Noclip enabled",Text="Type ;clip to disable"})end
	if string.sub(_aa,1,5)== (prefix.."clip")then noclip=false
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Noclip disabled",Text="Type ;noclip to enable"})end;if string.sub(_aa,1,7)== (prefix.."speed ")then
	lplayer.Character.Humanoid.WalkSpeed=(string.sub(_aa,8))end;if string.sub(_aa,1,4)== (
	prefix.."ws ")then
	lplayer.Character.Humanoid.WalkSpeed=(string.sub(_aa,5))end;if string.sub(_aa,1,11)== (
	prefix.."hipheight ")then
	lplayer.Character.Humanoid.HipHeight=(string.sub(_aa,12))end;if
	string.sub(_aa,1,4)== (prefix.."hh ")then
	lplayer.Character.Humanoid.HipHeight=(string.sub(_aa,5))end;if string.sub(_aa,1,11)== (
	prefix.."jumppower ")then
	lplayer.Character.Humanoid.JumpPower=(string.sub(_aa,12))end;if
	string.sub(_aa,1,4)== (prefix.."jp ")then
	lplayer.Character.Humanoid.JumpPower=(string.sub(_aa,5))end
	if string.sub(_aa,1,8)== (prefix..
	"default")then
	lplayer.Character.Humanoid.JumpPower=50;lplayer.Character.Humanoid.WalkSpeed=16
	lplayer.Character.Humanoid.HipHeight=0 end
	if string.sub(_aa,1,7)== (prefix.."annoy ")then for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,8)))do annoying=true;annplr=_ba end end
	if string.sub(_aa,1,8)== (prefix.."unannoy")then annoying=false end
	if string.sub(_aa,1,10)== (prefix.."headwalk ")then for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,11)))do hwalk=true;hdwplr=_ba end end
	if string.sub(_aa,1,11)== (prefix.."unheadwalk")then hwalk=false end
	if string.sub(_aa,1,8)== (prefix.."nolimbs")then
	lplayer.Character["Left Leg"]:Destroy()
	lplayer.Character["Left Arm"]:Destroy()
	lplayer.Character["Right Leg"]:Destroy()
	lplayer.Character["Right Arm"]:Destroy()end
	if string.sub(_aa,1,4)== (prefix.."god")then
	lplayer.Character.Humanoid.Name=1;local caa=lplayer.Character["1"]:Clone()
	caa.Parent=lplayer.Character;caa.Name="Humanoid"wait(0.1)
	lplayer.Character["1"]:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character;lplayer.Character.Animate.Disabled=true
	wait(0.1)lplayer.Character.Animate.Disabled=false
	lplayer.Character.Humanoid.DisplayDistanceType="None"
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="FE Godmode enabled",Text="Use ;grespawn or ;respawn to remove"})end
	if string.sub(_aa,1,9)== (prefix.."drophats")then
	for baa,_ba in
	pairs(lplayer.Character:GetChildren())do if(_ba:IsA("Accessory"))or(_ba:IsA("Hat"))then
	_ba.Parent=workspace end end end
	if string.sub(_aa,1,9)== (prefix.."droptool")then
	for baa,_ba in
	pairs(lplayer.Character:GetChildren())do if(_ba:IsA("Tool"))then _ba.Parent=workspace end end end
	if string.sub(_aa,1,10)== (prefix.."loopdhats")then
	droppinghats=true
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Loop Drop Enabled",Text="Type ;unloopdhats to disable"})end
	if string.sub(_aa,1,12)== (prefix.."unloopdhats")then
	droppinghats=false
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Loop Drop Disabled",Text="Type ;loopdhats to enable."})end
	if string.sub(_aa,1,10)== (prefix.."loopdtool")then
	droppingtools=true
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Loop Drop Enabled",Text="Type ;unloopdtool to disable"})end
	if string.sub(_aa,1,12)== (prefix.."unloopdtool")then
	droppingtools=false
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Loop Drop Disabled",Text="Type ;loopdtool to enable."})end
	if string.sub(_aa,1,10)== (prefix.."invisible")then
	Local=game:GetService('Players').LocalPlayer;Char=Local.Character;touched,tpdback=false,false
	box=Instance.new('Part',workspace)box.Anchored=true;box.CanCollide=true
	box.Size=Vector3.new(10,1,10)box.Position=Vector3.new(0,10000,0)
	box.Touched:connect(function(caa)
	if(
	caa.Parent.Name==Local.Name)then
	if touched==false then touched=true
	function apply()
	if script.Disabled~=true then
	no=Char.HumanoidRootPart:Clone()wait(.25)Char.HumanoidRootPart:Destroy()
	no.Parent=Char;Char:MoveTo(loc)touched=false end end;if Char then apply()end end end end)repeat wait()until Char;loc=Char.HumanoidRootPart.Position
	Char:MoveTo(
	box.Position+Vector3.new(0,.5,0))
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Invisibility enabled!",Text="Reset or use ;respawn to remove."})end
	if string.sub(_aa,1,6)== (prefix.."view ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,7)))do
	if
	game:GetService("Players")[_ba.Name].Character.Humanoid then
	game:GetService("Workspace").CurrentCamera.CameraSubject=game:GetService("Players")[_ba.Name].Character.Humanoid else
	game:GetService("Workspace").CurrentCamera.CameraSubject=game:GetService("Players")[_ba.Name].Character.Head end end end
	if string.sub(_aa,1,7)== (prefix.."unview")then
	if
	lplayer.Character.Humanoid then
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character.Humanoid else
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character.Head end end
	if string.sub(_aa,1,6)== (prefix.."goto ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,7)))do
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame end end
	if string.sub(_aa,1,4)== (prefix.."fly")then
	repeat wait()until
	
	
	lplayer and lplayer.Character and lplayer.Character:FindFirstChild('HumanoidRootPart')and lplayer.Character:FindFirstChild('Humanoid')repeat wait()until ac;local baa=lplayer.Character.HumanoidRootPart
	local caa={F=0,B=0,L=0,R=0}local daa={F=0,B=0,L=0,R=0}local _ba=speedget
	local function aca()flying=true
	local cca=Instance.new('BodyGyro',baa)local dca=Instance.new('BodyVelocity',baa)cca.P=9e4
	cca.maxTorque=Vector3.new(9e9,9e9,9e9)cca.cframe=baa.CFrame;dca.velocity=Vector3.new(0,0.1,0)
	dca.maxForce=Vector3.new(9e9,9e9,9e9)
	spawn(function()
	repeat wait()
	lplayer.Character.Humanoid.PlatformStand=true;if caa.L+caa.R~=0 or caa.F+caa.B~=0 then _ba=50 elseif
	not(
	caa.L+caa.R~=0 or caa.F+caa.B~=0)and _ba~=0 then _ba=0 end
	if
	(caa.L+caa.R)~=0 or(caa.F+caa.B)~=0 then
	dca.velocity=
	( (
	workspace.CurrentCamera.CoordinateFrame.lookVector* (caa.F+caa.B))+ ( (
	workspace.CurrentCamera.CoordinateFrame*
	CFrame.new(caa.L+caa.R,(caa.F+caa.B)*0.2,0).p)-
	workspace.CurrentCamera.CoordinateFrame.p))*_ba;daa={F=caa.F,B=caa.B,L=caa.L,R=caa.R}elseif
	(caa.L+caa.R)==0 and(caa.F+caa.B)==0 and _ba~=0 then
	dca.velocity=
	( (
	workspace.CurrentCamera.CoordinateFrame.lookVector* (daa.F+daa.B))+ ( (
	workspace.CurrentCamera.CoordinateFrame*
	CFrame.new(daa.L+daa.R,(daa.F+daa.B)*0.2,0).p)-
	workspace.CurrentCamera.CoordinateFrame.p))*_ba else dca.velocity=Vector3.new(0,0.1,0)end;cca.cframe=workspace.CurrentCamera.CoordinateFrame until not flying;caa={F=0,B=0,L=0,R=0}daa={F=0,B=0,L=0,R=0}_ba=0;cca:destroy()
	dca:destroy()lplayer.Character.Humanoid.PlatformStand=false end)end
	ac.KeyDown:connect(function(bca)
	if bca:lower()=='w'then caa.F=speedfly elseif bca:lower()=='s'then caa.B=
	-speedfly elseif bca:lower()=='a'then caa.L=-speedfly elseif
	bca:lower()=='d'then caa.R=speedfly end end)
	ac.KeyUp:connect(function(bca)
	if bca:lower()=='w'then caa.F=0 elseif bca:lower()=='s'then caa.B=0 elseif
	bca:lower()=='a'then caa.L=0 elseif bca:lower()=='d'then caa.R=0 end end)aca()end;if string.sub(_aa,1,6)== (prefix.."unfly")then flying=false
	lplayer.Character.Humanoid.PlatformStand=false end
	if string.sub(_aa,1,6)== (
	prefix.."chat ")then
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer((string.sub(_aa,7)),"All")end;if string.sub(_aa,1,6)== (prefix.."spam ")then
	spamtext=(string.sub(_aa,7))spamming=true end
	if
	string.sub(_aa,1,7)== (prefix.."unspam")then spamming=false end;if string.sub(_aa,1,10)== (prefix.."spamwait ")then
	spamdelay=(string.sub(_aa,11))end;if string.sub(_aa,1,8)==
	(prefix.."pmspam ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,9)))do pmspammed=_ba.Name;spammingpm=true end end
	if
	string.sub(_aa,1,9)== (prefix.."unpmspam")then spammingpm=false end
	if string.sub(_aa,1,9)== (prefix.."cfreeze ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,10)))do _ba.Character["Left Leg"].Anchored=true
	_ba.Character["Left Arm"].Anchored=true;_ba.Character["Right Leg"].Anchored=true
	_ba.Character["Right Arm"].Anchored=true;_ba.Character.Torso.Anchored=true
	_ba.Character.Head.Anchored=true end end
	if string.sub(_aa,1,11)== (prefix.."uncfreeze ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,12)))do _ba.Character["Left Leg"].Anchored=false
	_ba.Character["Left Arm"].Anchored=false;_ba.Character["Right Leg"].Anchored=false
	_ba.Character["Right Arm"].Anchored=false;_ba.Character.Torso.Anchored=false
	_ba.Character.Head.Anchored=false end end
	if string.sub(_aa,1,9)== (prefix.."unlockws")then
	local caa=game:GetService("Workspace"):getChildren()
	for i=1,#caa do
	if caa[i].className=="Part"then caa[i].Locked=false elseif
	caa[i].className=="Model"then local daa=caa[i]:getChildren()for i=1,#daa do if daa[i].className=="Part"then
	daa[i].Locked=false end end end end
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Success!",Text="Workspace unlocked. Use ;lockws to lock."})end
	if string.sub(_aa,1,7)== (prefix.."lockws")then
	local caa=game:GetService("Workspace"):getChildren()
	for i=1,#caa do
	if caa[i].className=="Part"then caa[i].Locked=true elseif
	caa[i].className=="Model"then local daa=caa[i]:getChildren()for i=1,#daa do if daa[i].className=="Part"then
	daa[i].Locked=true end end end end end
	if string.sub(_aa,1,7)== (prefix.."btools")then
	local baa=Instance.new("HopperBin",lplayer.Backpack)baa.BinType="Clone"
	local caa=Instance.new("HopperBin",lplayer.Backpack)caa.BinType="Hammer"
	local bba=Instance.new("HopperBin",lplayer.Backpack)bba.BinType="Grab"end;if string.sub(_aa,1,7)== (prefix.."pstand")then
	lplayer.Character.Humanoid.PlatformStand=true end;if string.sub(_aa,1,9)== (prefix..
	"unpstand")then
	lplayer.Character.Humanoid.PlatformStand=false end;if string.sub(_aa,1,10)== (prefix..
	"blockhead")then
	lplayer.Character.Head.Mesh:Destroy()end;if string.sub(_aa,1,4)==
	(prefix.."sit")then
	lplayer.Character.Humanoid.Sit=true end
	if string.sub(_aa,1,10)==
	(prefix.."bringobj ")then
	local function caa()
	for aba,bba in
	ipairs(game:GetService("Workspace"):GetDescendants())do
	if bba.Name== (string.sub(_aa,11))then
	bba.CFrame=lplayer.Character.HumanoidRootPart.CFrame;bba.CanCollide=false;bba.Transparency=0.7;wait()
	bba.CFrame=lplayer.Character["Left Leg"].CFrame;wait()
	bba.CFrame=lplayer.Character["Right Leg"].CFrame;wait()
	bba.CFrame=lplayer.Character["Head"].CFrame end end end;while wait()do caa()end
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="BringObj",Text="BringObj enabled."})end
	if string.sub(_aa,1,7)== (prefix.."wsvis ")then
	vis=(string.sub(_aa,8))
	local caa=game:GetService("Workspace"):GetDescendants()
	for i=1,#caa do
	if caa[i].className=="Part"then caa[i].Transparency=vis elseif caa[i].className==
	"Model"then local daa=caa[i]:getChildren()
	for i=1,#daa do if
	daa[i].className=="Part"then daa[i].Transparency=vis end end end end end
	if string.sub(_aa,1,11)== (prefix.."hypertotal")then
	loadstring(game:GetObjects("rbxassetid://1255063809")[1].Source)()
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Success!",Text="HyperTotal GUI Loaded!"})end
	if string.sub(_aa,1,5)== (prefix.."cmds")then ad.Visible=true end
	if string.sub(_aa,1,10)== (prefix.."rmeshhats")then
	for baa,_ba in
	pairs(lplayer.Character:GetChildren())do if(_ba:IsA("Accessory"))or(_ba:IsA("Hat"))then
	_ba.Handle.Mesh:Destroy()end end end
	if string.sub(_aa,1,10)== (prefix.."blockhats")then
	for baa,_ba in
	pairs(lplayer.Character:GetChildren())do if(_ba:IsA("Accessory"))or(_ba:IsA("Hat"))then
	_ba.Handle.Mesh:Destroy()end end end
	if string.sub(_aa,1,10)== (prefix.."rmeshtool")then for baa,_ba in
	pairs(lplayer.Character:GetChildren())do
	if(_ba:IsA("Tool"))then _ba.Handle.Mesh:Destroy()end end end
	if string.sub(_aa,1,10)== (prefix.."blocktool")then for baa,_ba in
	pairs(lplayer.Character:GetChildren())do
	if(_ba:IsA("Tool"))then _ba.Handle.Mesh:Destroy()end end end
	if string.sub(_aa,1,8)== (prefix.."spinner")then
	local caa=Instance.new("RocketPropulsion")caa.Parent=lplayer.Character.HumanoidRootPart
	caa.Name="Spinner"caa.Target=lplayer.Character["Left Arm"]caa:Fire()
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Spinner enabled",Text="Type ;nospinner to disable."})end;if string.sub(_aa,1,10)== (prefix.."nospinner")then
	lplayer.Character.HumanoidRootPart.Spinner:Destroy()end
	if string.sub(_aa,1,7)== (
	prefix.."reachd")then
	for baa,_ba in
	pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
	if _ba:isA("Tool")then
	local aba=Instance.new("SelectionBox",_ba.Handle)aba.Adornee=_ba.Handle
	_ba.Handle.Size=Vector3.new(0.5,0.5,60)_ba.GripPos=Vector3.new(0,0,0)
	lplayer.Character.Humanoid:UnequipTools()end end
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Reach applied!",Text="Applied to equipped sword. Use ;noreach to disable."})end
	if string.sub(_aa,1,7)== (prefix.."reach ")then
	for baa,_ba in
	pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
	if _ba:isA("Tool")then handleSize=_ba.Handle.Size;wait()
	local aba=Instance.new("SelectionBox",_ba.Handle)aba.Name="a"aba.Adornee=_ba.Handle
	_ba.Handle.Size=Vector3.new(0.5,0.5,(string.sub(_aa,8)))_ba.GripPos=Vector3.new(0,0,0)
	lplayer.Character.Humanoid:UnequipTools()end end
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Reach applied!",Text="Applied to equipped sword. Use ;noreach to disable."})end
	if string.sub(_aa,1,8)== (prefix.."noreach")then
	for baa,_ba in
	pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do if _ba:isA("Tool")then _ba.Handle.a:Destroy()
	_ba.Handle.Size=handleSize end end
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Reach removed!",Text="Removed reach from equipped sword."})end
	if string.sub(_aa,1,7)== (prefix.."rkill ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,8)))do lplayer.Character.Humanoid.Name=1
	local aba=lplayer.Character["1"]:Clone()aba.Parent=lplayer.Character;aba.Name="Humanoid"wait(0.1)
	lplayer.Character["1"]:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character;lplayer.Character.Animate.Disabled=true
	wait(0.1)lplayer.Character.Animate.Disabled=false
	lplayer.Character.Humanoid.DisplayDistanceType="None"for cba,dba in
	pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
	lplayer.Character.Humanoid:EquipTool(dba)end
	wait(0.1)
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;wait(0.2)
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;wait(0.5)
	lplayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(
	-100000,10,-100000))
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools needed!",Text="You need a tool in your backpack for this command!"})end end
	if string.sub(_aa,1,7)== (prefix.."tp me ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,8)))do
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame end end
	if string.sub(_aa,1,8)== (prefix.."cbring ")then
	if
	
	
	(string.sub(_aa,9))=="all"or(string.sub(_aa,9))=="All"or(string.sub(_aa,9))=="ALL"then cbringall=true else for baa,_ba in pairs(GetPlayer(string.sub(_aa,9)))do
	brplr=_ba.Name end end;cbring=true end;if string.sub(_aa,1,9)== (prefix.."uncbring")then cbring=false
	cbringall=false end
	if string.sub(_aa,1,6)==
	(prefix.."swap ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,7)))do
	local aba=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;local aca=lplayer.Character.HumanoidRootPart.CFrame
	lplayer.Character.Humanoid.Name=1;local bca=lplayer.Character["1"]:Clone()
	bca.Parent=lplayer.Character;bca.Name="Humanoid"wait(0.1)
	lplayer.Character["1"]:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character;lplayer.Character.Animate.Disabled=true
	wait(0.1)lplayer.Character.Animate.Disabled=false
	lplayer.Character.Humanoid.DisplayDistanceType="None"for dca,_da in
	pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
	lplayer.Character.Humanoid:EquipTool(_da)end;local function cca(dca,_da)
	local ada,bda=dca.Character,_da.Character
	if ada and bda then ada:MoveTo(bda.Head.Position)end end
	wait(0.1)
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;wait(0.2)
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;wait(0.5)
	lplayer.Character.HumanoidRootPart.CFrame=aca;wait(0.6)
	cca(lplayer,game:GetService("Players")[_ba.Name])wait(0.4)
	lplayer.Character.HumanoidRootPart.CFrame=aba
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools needed!",Text="You need a tool in your backpack for this command!"})end end
	if string.sub(_aa,1,8)== (prefix.."glitch ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,9)))do lplayer.Character.Humanoid.Name=1
	local aba=lplayer.Character["1"]:Clone()aba.Parent=lplayer.Character;aba.Name="Humanoid"wait(0.1)
	lplayer.Character["1"]:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character;lplayer.Character.Animate.Disabled=true
	wait(0.1)lplayer.Character.Animate.Disabled=false
	lplayer.Character.Humanoid.DisplayDistanceType="None"for cba,dba in
	pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
	lplayer.Character.Humanoid:EquipTool(dba)end
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character["Left Arm"].CFrame;wait(0.3)
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character["Left Arm"].CFrame;wait(0.4)b=Instance.new("BodyForce")
	b.Parent=lplayer.Character.HumanoidRootPart;b.Name="Glitch"b.Force=Vector3.new(100000000,5000,0)
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools needed!",Text="You need a tool in your backpack for this command!"})end end
	if string.sub(_aa,1,9)== (prefix.."unglitch")then
	lplayer.Character.HumanoidRootPart.Glitch:Destroy()
	lplayer.Character.HumanoidRootPart.CFrame=CFrame.new(10000,0,10000)b=Instance.new("BodyForce")
	b.Parent=lplayer.Character.HumanoidRootPart;b.Name="unGlitch"b.Force=Vector3.new(0,-5000000,0)
	wait(2)
	lplayer.Character.HumanoidRootPart.unGlitch:Destroy()end
	if string.sub(_aa,1,9)== (prefix.."grespawn")then
	lplayer.Character.Humanoid.Health=0;wait(1)
	lplayer.Character.Head.CFrame=CFrame.new(1000000,0,1000000)
	lplayer.Character.Torso.CFrame=CFrame.new(1000000,0,1000000)end
	if string.sub(_aa,1,9)== (prefix.."explorer")then
	loadstring(game:GetObjects("rbxassetid://492005721")[1].Source)()
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Success!",Text="DEX Explorer has loaded."})end
	if string.sub(_aa,1,6)== (prefix.."anim ")then
	local baa=Instance.new("Animation")
	baa.AnimationId="rbxassetid://".. (string.sub(_aa,7))
	local _ba=lplayer.Character.Humanoid:LoadAnimation(baa)_ba:Play(.1,1,1)end
	if string.sub(_aa,1,8)== (prefix.."animgui")then
	loadstring(game:GetObjects("rbxassetid://1202558084")[1].Source)()
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Success!",Text="Energize Animations GUI has loaded."})end
	if string.sub(_aa,1,8)== (prefix.."savepos")then
	saved=lplayer.Character.HumanoidRootPart.CFrame
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Position Saved",Text="Use ;loadpos to return to saved position."})end;if string.sub(_aa,1,8)== (prefix.."loadpos")then
	lplayer.Character.HumanoidRootPart.CFrame=saved end
	if string.sub(_aa,1,6)== (prefix..
	"bang ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,7)))do local bba=Instance.new("Animation")
	bba.AnimationId="rbxassetid://148840371"
	local cba=lplayer.Character.Humanoid:LoadAnimation(bba)cba:Play(.1,1,1)bplrr=_ba.Name;banpl=true end end
	if string.sub(_aa,1,7)== (prefix.."unbang")then banpl=false end
	if string.sub(_aa,1,10)== (prefix.."bringmod ")then
	local function caa()
	for aba,bba in
	ipairs(game:GetService("Workspace"):GetDescendants())do
	if bba.Name== (string.sub(_aa,11))then
	for cba,dba in
	pairs(bba:GetDescendants())do
	if(dba:IsA("BasePart"))then
	dba.CFrame=lplayer.Character.HumanoidRootPart.CFrame;dba.CanCollide=false;dba.Transparency=0.7;wait()
	dba.CFrame=lplayer.Character["Left Leg"].CFrame;wait()
	dba.CFrame=lplayer.Character["Right Leg"].CFrame;wait()
	dba.CFrame=lplayer.Character["Head"].CFrame end end end end end;while wait()do caa()end
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="BringMod",Text="BringMod enabled."})end
	if string.sub(_aa,1,8)== (prefix.."respawn")then
	local baa=Instance.new('Model',workspace)baa.Name='re '..lplayer.Name
	local caa=Instance.new('Humanoid',baa)local bba=Instance.new('Part',baa)bba.Name='Torso'
	bba.CanCollide=false;bba.Transparency=1;lplayer.Character=baa end
	if string.sub(_aa,1,9)== (prefix.."shutdown")then
	game:GetService'RunService'.Stepped:Connect(function()
	pcall(function()
	for baa,_ba in
	pairs(game:GetService'Players':GetPlayers())do
	if
	_ba.Character~=nil and _ba.Character:FindFirstChild'Head'then
	for bba,cba in pairs(_ba.Character.Head:GetChildren())do if
	cba:IsA'Sound'then cba.Playing=true
	cba.CharacterSoundEvent:FireServer(true,true)end end end end end)end)
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Attempting Shutdown",Text="Shutdown Attempt has begun."})end
	if string.sub(_aa,1,8)== (prefix.."delobj ")then
	objtodel=(string.sub(_aa,9))
	for baa,_ba in
	pairs(game:GetService("Workspace"):GetDescendants())do if _ba.Name==objtodel then _ba:Destroy()end end end
	if string.sub(_aa,1,8)== (prefix.."getplrs")then for baa,_ba in
	pairs(game:GetService("Players"):GetPlayers())do print(_ba)end
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Printed",Text="Players have been printed to console. (F9)"})end
	if string.sub(_aa,1,9)== (prefix.."deldecal")then
	for baa,_ba in
	pairs(game:GetService("Workspace"):GetDescendants())do if(_ba:IsA("Decal"))then _ba:Destroy()end end end
	if string.sub(_aa,1,11)== (prefix.."opfinality")then
	loadstring(game:GetObjects("rbxassetid://1294358929")[1].Source)()
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Success!",Text="OpFinality GUI has loaded."})end
	if string.sub(_aa,1,8)== (prefix.."remotes")then remotes=true
	added=true
	game.DescendantAdded:connect(function(caa)
	if added==true then
	if remotes==true then
	if caa:IsA("RemoteEvent")then
	print("A RemoteEvent was added!")
	print(" game."..caa:GetFullName().." | RemoteEvent")
	print(" game."..caa:GetFullName().." | RemoteEvent",247,0,0,true)end end end end)
	game.DescendantAdded:connect(function(caa)
	if added==true then
	if remotes==true then
	if caa:IsA("RemoteFunction")then
	warn("A RemoteFunction was added!")
	warn(" game."..caa:GetFullName().." | RemoteFunction")
	print(" game."..caa:GetFullName().." | RemoteFunction",5,102,198,true)end end end end)
	game.DescendantAdded:connect(function(caa)
	if added==true then
	if binds==true then
	if caa:IsA("BindableFunction")then
	print("A BindableFunction was added!")
	print(" game."..caa:GetFullName().." | BindableFunction")
	print(" game."..caa:GetFullName().." | BindableFunction",239,247,4,true)end end end end)
	game.DescendantAdded:connect(function(caa)
	if added==true then
	if binds==true then
	if caa:IsA("BindableEvent")then
	warn("A BindableEvent was added!")
	warn(" game."..caa:GetFullName().." | BindableEvent")
	print(" game."..caa:GetFullName().." | BindableEvent",13,193,22,true)end end end end)
	if binds==true then
	for baa,_ba in pairs(game:GetDescendants())do
	if
	_ba:IsA("BindableFunction")then
	print(" game.".._ba:GetFullName().." | BindableFunction")
	print(" game.".._ba:GetFullName().." | BindableFunction",239,247,4,true)end end
	for baa,_ba in pairs(game:GetDescendants())do
	if _ba:IsA("BindableEvent")then
	warn(" game."..
	_ba:GetFullName().." | BindableEvent")
	print(" game.".._ba:GetFullName().." | BindableEvent",13,193,22,true)end end else print("Off")end
	if remotes==true then
	for baa,_ba in pairs(game:GetDescendants())do
	if
	_ba:IsA("RemoteFunction")then
	warn(" game.".._ba:GetFullName().." | RemoteFunction")
	print(" game.".._ba:GetFullName().." | RemoteFunction",5,102,198,true)end end;wait()
	for baa,_ba in pairs(game:GetDescendants())do
	if _ba:IsA("RemoteEvent")then
	print(
	" game.".._ba:GetFullName().." | RemoteEvent")
	print(" game.".._ba:GetFullName().." | RemoteEvent",247,0,0,true)end end else print("Off")end
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Printing Remotes",Text="Type ;noremotes to disable."})end
	if string.sub(_aa,1,10)== (prefix.."noremotes")then remotes=false
	added=false
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Printing Remotes Disabled",Text="Type ;remotes to enable."})end
	if string.sub(_aa,1,10)== (prefix.."tpdefault")then spin=false
	followed=false;traill=false;noclip=false;annoying=false;hwalk=false;cbringing=false end
	if string.sub(_aa,1,8)== (prefix.."stopsit")then stopsitting=true end
	if string.sub(_aa,1,6)== (prefix.."gosit")then stopsitting=false end
	if string.sub(_aa,1,8)== (prefix.."version")then
	print(adminversion)
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Version",Text=adminversion})end
	if string.sub(_aa,1,8)== (prefix.."clicktp")then clickgoto=true
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Click TP",Text="Press E to teleport to mouse position, ;noclicktp to stop"})end
	if string.sub(_aa,1,9)== (prefix.."clickdel")then clickdel=true
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Click Delete",Text="Press E to delete part at mouse, ;noclickdel to stop"})end
	if string.sub(_aa,1,11)== (prefix.."noclickdel")then
	clickdel=false
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Click Delete",Text="Click delete has been disabled."})end
	if string.sub(_aa,1,10)== (prefix.."noclicktp")then
	clickgoto=false
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Click TP",Text="Click TP has been disabled."})end
	if string.sub(_aa,1,8)== (prefix.."toolson")then gettingtools=true
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools Enabled",Text="Automatically colleting tools dropped."})end
	if string.sub(_aa,1,9)== (prefix.."toolsoff")then
	gettingtools=false
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools Disabled",Text="Click TP has been disabled."})end;if string.sub(_aa,1,10)== (prefix.."delcmdbar")then
	bc:Destroy()end
	if
	string.sub(_aa,1,6)== (prefix.."reset")then lplayer.Character.Head:Destroy()end;if string.sub(_aa,1,7)== (prefix.."state ")then
	statechosen=string.sub(_aa,8)changingstate=true end;if
	string.sub(_aa,1,9)== (prefix.."gravity ")then
	game:GetService("Workspace").Gravity=string.sub(_aa,10)end
	if string.sub(_aa,1,10)== (
	prefix.."looprhats")then removingmeshhats=true end;if string.sub(_aa,1,12)== (prefix.."unlooprhats")then
	removingmeshhats=false end
	if string.sub(_aa,1,10)==
	(prefix.."looprtool")then removingmeshtool=true end;if string.sub(_aa,1,12)== (prefix.."unlooprtool")then
	removingmeshtool=false end
	if string.sub(_aa,1,10)==
	(prefix.."givetool ")then
	for baa,_ba in
	pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants())do
	if _ba:IsA("Tool")then for bba,cba in pairs(GetPlayer(string.sub(_aa,11)))do
	_ba.Parent=cba.Character end end end end
	if string.sub(_aa,1,14)== (prefix.."givealltools ")then
	for baa,_ba in
	pairs(game:GetService("Players").LocalPlayer.Backpack:GetDescendants())do
	if _ba:IsA("Tool")then _ba.Parent=lplayer.Character;wait()for bba,cba in
	pairs(GetPlayer(string.sub(_aa,15)))do _ba.Parent=cba.Character end end end end
	if string.sub(_aa,1,5)== (prefix.."age ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,6)))do
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
	_ba.Name.." Account Age: ".._ba.AccountAge.." days!","All")end end
	if string.sub(_aa,1,4)== (prefix.."id ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,5)))do
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
	_ba.Name.." Account ID: ".._ba.UserId,"All")end end
	if string.sub(_aa,1,6)== (prefix..".age ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,7)))do
	game:GetService("StarterGui"):SetCore("SendNotification",{Title=_ba.AccountAge.." Days",Text=
	"Account age of ".._ba.Name})end end
	if string.sub(_aa,1,5)== (prefix..".id ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,6)))do
	game:GetService("StarterGui"):SetCore("SendNotification",{Title=_ba.UserId.." ID",Text=
	"Account ID of ".._ba.Name})end end
	if string.sub(_aa,1,7)== (prefix.."gameid")then
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Game ID",Text=
	"Game ID: "..game.GameId})end
	if string.sub(_aa,1,4)== (prefix.."pgs")then
	local caa=game:GetService("Workspace"):PGSIsEnabled()
	if caa==true then
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="PGSPhysicsSolverEnabled",Text="PGS is Enabled!"})else
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="PGSPhysicsSolverEnabled",Text="PGS is Disabled!"})end end
	if string.sub(_aa,1,12)== (prefix.."removeinvis")then
	for baa,_ba in
	pairs(game:GetService("Workspace"):GetDescendants())do
	if _ba:IsA("Part")then if _ba.Transparency==1 then if _ba.Name~="HumanoidRootPart"then
	_ba:Destroy()end end end end end;if string.sub(_aa,1,10)== (prefix.."removefog")then
	game:GetService("Lighting").FogStart=0
	game:GetService("Lighting").FogEnd=9999999999999 end;if
	string.sub(_aa,1,8)== (prefix.."disable")then
	lplayer.Character.Humanoid.Parent=lplayer end;if string.sub(_aa,1,7)==
	(prefix.."enable")then
	lplayer.Humanoid.Parent=lplayer.Character end
	if string.sub(_aa,1,8)==
	(prefix.."prefix ")then prefix=(string.sub(_aa,9,9))wait(0.1)
	change()wait(0.1)
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Prefix changed!",Text=
	"Prefix is now "..prefix..". Use ;resetprefix to reset to ;"})end
	if string.sub(_aa,1,12)== (";resetprefix")then prefix=";"wait(0.1)
	change()wait(0.1)
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Prefix changed!",Text=
	"Prefix is now "..prefix..". Make sure it's one key!"})end;if string.sub(_aa,1,10)== (prefix.."flyspeed ")then
	speedfly=string.sub(_aa,11)wait()change()end
	if
	string.sub(_aa,1,8)== (prefix.."carpet ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,9)))do local bba=Instance.new("Animation")
	bba.AnimationId="rbxassetid://282574440"
	local cba=lplayer.Character.Humanoid:LoadAnimation(bba)cba:Play(.1,1,1)bplrr=_ba.Name;banpl=true end end
	if string.sub(_aa,1,9)== (prefix.."uncarpet")then banpl=false end
	if string.sub(_aa,1,7)== (prefix.."stare ")then for baa,_ba in
	pairs(GetPlayer(string.sub(_aa,8)))do staring=true;stareplr=_ba end end
	if string.sub(_aa,1,8)== (prefix.."unstare")then staring=false end
	if string.sub(_aa,1,8)== (prefix.."logchat")then chatlogs=true
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="LogChat enabled",Text="Now logging all player chat."})end
	if string.sub(_aa,1,10)== (prefix.."unlogchat")then
	chatlogs=false
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="LogChat disabled",Text="Stopped logging all player chat."})end
	if string.sub(_aa,1,7)== (prefix.."fixcam")then
	game:GetService("Workspace").CurrentCamera:Destroy()wait(0.1)
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character.Humanoid
	game:GetService("Workspace").CurrentCamera.CameraType="Custom"lplayer.CameraMinZoomDistance=0.5;lplayer.CameraMaxZoomDistance=400
	lplayer.CameraMode="Classic"end;if string.sub(_aa,1,8)== (prefix.."unstate")then
	changingstate=false end end)
	local function __a()
	for _aa,aaa in
	ipairs(game:GetService("Players"):GetPlayers())do
	if
	aaa.Character and aaa.Character:FindFirstChild("HumanoidRootPart")then
	if aaa.Name==brplr then
	aaa.Character.HumanoidRootPart.CFrame=
	lplayer.Character.HumanoidRootPart.CFrame+
	lplayer.Character.HumanoidRootPart.CFrame.lookVector*2 end end end end
	local function a_a()
	for _aa,aaa in
	ipairs(game:GetService("Players"):GetPlayers())do
	if
	aaa.Character and aaa.Character:FindFirstChild("HumanoidRootPart")then
	aaa.Character.HumanoidRootPart.CFrame=
	lplayer.Character.HumanoidRootPart.CFrame+
	lplayer.Character.HumanoidRootPart.CFrame.lookVector*3 end end end
	spawn(function()
	while wait(spamdelay)do if spamming==true then
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(spamtext,"All")end end end)
	spawn(function()
	while wait(spamdelay)do
	if spammingpm==true then
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
	"/w "..
	pmspammed.." @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@","All")end end end)
	spawn(function()while wait()do if cbring==true then __a()end end end)
	spawn(function()while wait()do if cbringall==true then a_a()end end end)
	ac.KeyDown:connect(function(_aa)if _aa==prefix then dc:CaptureFocus()end end)
	dc.FocusLost:connect(function(_aa)
	if _aa then
	if string.sub(dc.Text,1,5)== ("kill ")then
	if
	string.sub(dc.Text,6)=="me"then
	lplayer.Character.HumanoidRootPart.CFrame=CFrame.new(100000,0,100000)else
	for baa,_ba in pairs(GetPlayer(string.sub(dc.Text,6)))do
	local dba=lplayer.Character.HumanoidRootPart.CFrame;lplayer.Character.Humanoid.Name=1
	local _ca=lplayer.Character["1"]:Clone()_ca.Parent=lplayer.Character;_ca.Name="Humanoid"wait(0.1)
	lplayer.Character["1"]:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character;lplayer.Character.Animate.Disabled=true
	wait(0.1)lplayer.Character.Animate.Disabled=false
	lplayer.Character.Humanoid.DisplayDistanceType="None"for bca,cca in
	pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
	lplayer.Character.Humanoid:EquipTool(cca)end;local function aca(bca,cca)
	local dca,_da=bca.Character,cca.Character
	if dca and _da then dca:MoveTo(_da.Head.Position)end end
	wait(0.1)
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;wait(0.2)
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;wait(0.5)
	lplayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(
	-100000,10,-100000))wait(0.7)
	aca(lplayer,game:GetService("Players")[_ba.Name])wait(0.7)
	lplayer.Character.HumanoidRootPart.CFrame=dba
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools needed!",Text="You need a tool in your backpack for this command!"})end end end
	if string.sub(dc.Text,1,6)== ("bring ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,7)))do local aba=lplayer.Character.HumanoidRootPart.CFrame
	lplayer.Character.Humanoid.Name=1;local aca=lplayer.Character["1"]:Clone()
	aca.Parent=lplayer.Character;aca.Name="Humanoid"wait(0.1)
	lplayer.Character["1"]:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character;lplayer.Character.Animate.Disabled=true
	wait(0.1)lplayer.Character.Animate.Disabled=false
	lplayer.Character.Humanoid.DisplayDistanceType="None"for dca,_da in
	pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
	lplayer.Character.Humanoid:EquipTool(_da)end
	local function bca(dca,_da)
	local ada,bda=dca.Character,_da.Character;if ada and bda then
	ada.HumanoidRootPart.CFrame=bda.HumanoidRootPart.CFrame end end
	local function cca(dca,_da)local ada,bda=dca.Character,_da.Character;if ada and bda then
	ada:MoveTo(bda.Head.Position)end end
	bca(game:GetService("Players")[_ba.Name],lplayer)wait(0.2)
	bca(game:GetService("Players")[_ba.Name],lplayer)wait(0.5)
	lplayer.Character.HumanoidRootPart.CFrame=aba;wait(0.5)
	cca(lplayer,game:GetService("Players")[_ba.Name])wait(0.3)
	lplayer.Character.HumanoidRootPart.CFrame=aba
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools needed!",Text="You need a tool in your backpack for this command!"})end end
	if string.sub(dc.Text,1,5)== ("spin ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,6)))do lplayer.Character.Humanoid.Name=1
	local aba=lplayer.Character["1"]:Clone()aba.Parent=lplayer.Character;aba.Name="Humanoid"wait(0.1)
	lplayer.Character["1"]:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character;lplayer.Character.Animate.Disabled=true
	wait(0.1)lplayer.Character.Animate.Disabled=false
	lplayer.Character.Humanoid.DisplayDistanceType="None"for cba,dba in
	pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
	lplayer.Character.Humanoid:EquipTool(dba)end
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character["Left Arm"].CFrame;spinplr=_ba;wait(0.5)spin=true
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools needed!",Text="You need a tool in your backpack for this command!"})end end
	if string.sub(dc.Text,1,6)== ("unspin")then spin=false end
	if string.sub(dc.Text,1,7)== ("attach ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,8)))do lplayer.Character.Humanoid.Name=1
	local aba=lplayer.Character["1"]:Clone()aba.Parent=lplayer.Character;aba.Name="Humanoid"wait(0.1)
	lplayer.Character["1"]:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character;lplayer.Character.Animate.Disabled=true
	wait(0.1)lplayer.Character.Animate.Disabled=false
	lplayer.Character.Humanoid.DisplayDistanceType="None"for cba,dba in
	pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
	lplayer.Character.Humanoid:EquipTool(dba)end
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character["Left Arm"].CFrame;wait(0.3)
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character["Left Arm"].CFrame;attplr=_ba
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools needed!",Text="You need a tool in your backpack for this command!"})end end
	if string.sub(dc.Text,1,9)== ("unattach ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,10)))do
	local function aba(cba,dba)local _ca,aca=cba.Character,dba.Character;if _ca and aca then
	_ca:MoveTo(aca.Head.Position)end end
	aba(lplayer,game:GetService("Players")[_ba.Name])end end
	if string.sub(dc.Text,1,7)== ("follow ")then for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,8)))do followed=true;flwplr=_ba end end
	if string.sub(dc.Text,1,8)== ("unfollow")then followed=false end
	if string.sub(dc.Text,1,9)== ("freefall ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,10)))do local bba=lplayer.Character.HumanoidRootPart.CFrame
	lplayer.Character.Humanoid.Name=1;local cba=lplayer.Character["1"]:Clone()
	cba.Parent=lplayer.Character;cba.Name="Humanoid"wait(0.1)
	lplayer.Character["1"]:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character;lplayer.Character.Animate.Disabled=true
	wait(0.1)lplayer.Character.Animate.Disabled=false
	lplayer.Character.Humanoid.DisplayDistanceType="None"for dba,_ca in
	pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
	lplayer.Character.Humanoid:EquipTool(_ca)end
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;wait(0.2)
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;wait(0.6)
	lplayer.Character.HumanoidRootPart.CFrame=bba;wait(0.6)
	lplayer.Character.HumanoidRootPart.CFrame=CFrame.new(0,50000,0)
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools needed!",Text="You need a tool in your backpack for this command!"})end end
	if string.sub(dc.Text,1,6)== ("trail ")then for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,7)))do traill=true;trlplr=_ba end end
	if string.sub(dc.Text,1,7)== ("untrail")then traill=false end
	if string.sub(dc.Text,1,6)== ("orbit ")then
	if
	string.sub(dc.Text,7)=="all"or string.sub(dc.Text,7)=="others"or
	string.sub(dc.Text,7)=="me"then
	lplayer.Character.HumanoidRootPart.CFrame=lplayer.Character.HumanoidRootPart.CFrame else
	for baa,_ba in pairs(GetPlayer(string.sub(dc.Text,7)))do
	local aba=Instance.new("RocketPropulsion")aba.Parent=lplayer.Character.HumanoidRootPart;aba.Name="Orbit"
	aba.Target=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart;aba:Fire()noclip=true end end end;if string.sub(dc.Text,1,7)== ("unorbit")then
	lplayer.Character.HumanoidRootPart.Orbit:Destroy()noclip=false end
	if
	string.sub(dc.Text,1,6)== ("fling ")then
	if string.sub(dc.Text,7)=="all"or
	string.sub(dc.Text,7)=="others"or string.sub(dc.Text,7)==
	"me"then
	lplayer.Character.HumanoidRootPart.CFrame=lplayer.Character.HumanoidRootPart.CFrame else
	for baa,_ba in pairs(GetPlayer(string.sub(dc.Text,7)))do
	local aba=Instance.new("RocketPropulsion")aba.Parent=lplayer.Character.HumanoidRootPart
	aba.CartoonFactor=1;aba.MaxThrust=800000;aba.MaxSpeed=1000;aba.ThrustP=200000;aba.Name="Fling"
	game:GetService("Workspace").CurrentCamera.CameraSubject=game:GetService("Players")[_ba.Name].Character.Head
	aba.Target=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart;aba:Fire()noclip=true end end end
	if string.sub(dc.Text,1,7)== ("unfling")then noclip=false
	lplayer.Character.HumanoidRootPart.Fling:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character.Head;wait(0.4)
	lplayer.Character.HumanoidRootPart.Fling:Destroy()end
	if string.sub(dc.Text,1,7)== ("fecheck")then
	if
	game:GetService("Workspace").FilteringEnabled==true then
	warn("FE is Enabled (Filtering Enabled)")
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="FE is Enabled",Text="Filtering Enabled. Enjoy using Reviz Admin!"})else
	warn("FE is Disabled (Filtering Disabled) Consider using a different admin script.")
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="FE is Disabled",Text="Filtering Disabled. Consider using a different admin script."})end end
	if string.sub(dc.Text,1,5)== ("void ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,6)))do lplayer.Character.Humanoid.Name=1
	local aba=lplayer.Character["1"]:Clone()aba.Parent=lplayer.Character;aba.Name="Humanoid"wait(0.1)
	lplayer.Character["1"]:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character;lplayer.Character.Animate.Disabled=true
	wait(0.1)lplayer.Character.Animate.Disabled=false
	lplayer.Character.Humanoid.DisplayDistanceType="None"for cba,dba in
	pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
	lplayer.Character.Humanoid:EquipTool(dba)end
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;wait(0.2)
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;wait(0.6)
	lplayer.Character.HumanoidRootPart.CFrame=CFrame.new(999999999999999,0,999999999999999)
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools needed!",Text="You need a tool in your backpack for this command!"})end end
	if string.sub(dc.Text,1,6)== ("noclip")then noclip=true
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Noclip enabled",Text="Type ;clip to disable"})end
	if string.sub(dc.Text,1,4)== ("clip")then noclip=false
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Noclip disabled",Text="Type ;noclip to enable"})end;if string.sub(dc.Text,1,6)== ("speed ")then
	lplayer.Character.Humanoid.WalkSpeed=(string.sub(dc.Text,7))end;if
	string.sub(dc.Text,1,3)== ("ws ")then
	lplayer.Character.Humanoid.WalkSpeed=(string.sub(dc.Text,4))end;if
	string.sub(dc.Text,1,10)== ("hipheight ")then
	lplayer.Character.Humanoid.HipHeight=(string.sub(dc.Text,11))end;if
	string.sub(dc.Text,1,3)== ("hh ")then
	lplayer.Character.Humanoid.HipHeight=(string.sub(dc.Text,4))end;if
	string.sub(dc.Text,1,10)== ("jumppower ")then
	lplayer.Character.Humanoid.JumpPower=(string.sub(dc.Text,11))end;if
	string.sub(dc.Text,1,3)== ("jp ")then
	lplayer.Character.Humanoid.JumpPower=(string.sub(dc.Text,4))end
	if
	string.sub(dc.Text,1,7)== ("default")then
	lplayer.Character.Humanoid.JumpPower=50;lplayer.Character.Humanoid.WalkSpeed=16
	lplayer.Character.Humanoid.HipHeight=0 end
	if string.sub(dc.Text,1,6)== ("annoy ")then for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,7)))do annoying=true;annplr=_ba end end
	if string.sub(dc.Text,1,7)== ("unannoy")then annoying=false end
	if string.sub(dc.Text,1,9)== ("headwalk ")then for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,10)))do hwalk=true;hdwplr=_ba end end
	if string.sub(dc.Text,1,10)== ("unheadwalk")then hwalk=false end
	if string.sub(dc.Text,1,7)== ("nolimbs")then
	lplayer.Character["Left Leg"]:Destroy()
	lplayer.Character["Left Arm"]:Destroy()
	lplayer.Character["Right Leg"]:Destroy()
	lplayer.Character["Right Arm"]:Destroy()end
	if string.sub(dc.Text,1,3)== ("god")then
	lplayer.Character.Humanoid.Name=1;local caa=lplayer.Character["1"]:Clone()
	caa.Parent=lplayer.Character;caa.Name="Humanoid"wait(0.1)
	lplayer.Character["1"]:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character;lplayer.Character.Animate.Disabled=true
	wait(0.1)lplayer.Character.Animate.Disabled=false
	lplayer.Character.Humanoid.DisplayDistanceType="None"
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="FE Godmode enabled",Text="Use ;grespawn or ;respawn to remove."})end
	if string.sub(dc.Text,1,8)== ("drophats")then
	for baa,_ba in
	pairs(lplayer.Character:GetChildren())do if(_ba:IsA("Accessory"))or(_ba:IsA("Hat"))then
	_ba.Parent=workspace end end end
	if string.sub(dc.Text,1,8)== ("droptool")then
	for baa,_ba in
	pairs(lplayer.Character:GetChildren())do if(_ba:IsA("Tool"))then _ba.Parent=workspace end end end
	if string.sub(dc.Text,1,9)== ("loopdhats")then droppinghats=true
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Loop Drop Enabled",Text="Type ;unloopdhats to disable"})end
	if string.sub(dc.Text,1,11)== ("unloopdhats")then droppinghats=false
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Loop Drop Disabled",Text="Type ;loopdhats to enable."})end
	if string.sub(dc.Text,1,9)== ("loopdtool")then droppingtools=true
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Loop Drop Enabled",Text="Type ;unloopdtool to disable"})end
	if string.sub(dc.Text,1,11)== ("unloopdtool")then droppingtools=false
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Loop Drop Disabled",Text="Type ;loopdtool to enable."})end
	if string.sub(dc.Text,1,9)== ("invisible")then
	Local=game:GetService('Players').LocalPlayer;Char=Local.Character;touched,tpdback=false,false
	box=Instance.new('Part',workspace)box.Anchored=true;box.CanCollide=true
	box.Size=Vector3.new(10,1,10)box.Position=Vector3.new(0,10000,0)
	box.Touched:connect(function(caa)
	if(
	caa.Parent.Name==Local.Name)then
	if touched==false then touched=true
	function apply()
	if script.Disabled~=true then
	no=Char.HumanoidRootPart:Clone()wait(.25)Char.HumanoidRootPart:Destroy()
	no.Parent=Char;Char:MoveTo(loc)touched=false end end;if Char then apply()end end end end)repeat wait()until Char;loc=Char.HumanoidRootPart.Position
	Char:MoveTo(
	box.Position+Vector3.new(0,.5,0))
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Invisibility enabled!",Text="Reset or use ;respawn to remove."})end
	if string.sub(dc.Text,1,5)== ("view ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,6)))do
	if
	game:GetService("Players")[_ba.Name].Character.Humanoid then
	game:GetService("Workspace").CurrentCamera.CameraSubject=game:GetService("Players")[_ba.Name].Character.Humanoid else
	game:GetService("Workspace").CurrentCamera.CameraSubject=game:GetService("Players")[_ba.Name].Character.Head end end end
	if string.sub(dc.Text,1,6)== ("unview")then
	if lplayer.Character.Humanoid then
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character.Humanoid else
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character.Head end end
	if string.sub(dc.Text,1,5)== ("goto ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,6)))do
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame end end
	if string.sub(dc.Text,1,3)== ("fly")then
	repeat wait()until
	
	
	lplayer and lplayer.Character and lplayer.Character:FindFirstChild('HumanoidRootPart')and lplayer.Character:FindFirstChild('Humanoid')repeat wait()until ac;local baa=lplayer.Character.HumanoidRootPart
	local caa={F=0,B=0,L=0,R=0}local daa={F=0,B=0,L=0,R=0}local _ba=speedget
	local function aca()flying=true
	local cca=Instance.new('BodyGyro',baa)local dca=Instance.new('BodyVelocity',baa)cca.P=9e4
	cca.maxTorque=Vector3.new(9e9,9e9,9e9)cca.cframe=baa.CFrame;dca.velocity=Vector3.new(0,0.1,0)
	dca.maxForce=Vector3.new(9e9,9e9,9e9)
	spawn(function()
	repeat wait()
	lplayer.Character.Humanoid.PlatformStand=true;if caa.L+caa.R~=0 or caa.F+caa.B~=0 then _ba=50 elseif
	not(
	caa.L+caa.R~=0 or caa.F+caa.B~=0)and _ba~=0 then _ba=0 end
	if
	(caa.L+caa.R)~=0 or(caa.F+caa.B)~=0 then
	dca.velocity=
	( (
	workspace.CurrentCamera.CoordinateFrame.lookVector* (caa.F+caa.B))+ ( (
	workspace.CurrentCamera.CoordinateFrame*
	CFrame.new(caa.L+caa.R,(caa.F+caa.B)*0.2,0).p)-
	workspace.CurrentCamera.CoordinateFrame.p))*_ba;daa={F=caa.F,B=caa.B,L=caa.L,R=caa.R}elseif
	(caa.L+caa.R)==0 and(caa.F+caa.B)==0 and _ba~=0 then
	dca.velocity=
	( (
	workspace.CurrentCamera.CoordinateFrame.lookVector* (daa.F+daa.B))+ ( (
	workspace.CurrentCamera.CoordinateFrame*
	CFrame.new(daa.L+daa.R,(daa.F+daa.B)*0.2,0).p)-
	workspace.CurrentCamera.CoordinateFrame.p))*_ba else dca.velocity=Vector3.new(0,0.1,0)end;cca.cframe=workspace.CurrentCamera.CoordinateFrame until not flying;caa={F=0,B=0,L=0,R=0}daa={F=0,B=0,L=0,R=0}_ba=0;cca:destroy()
	dca:destroy()lplayer.Character.Humanoid.PlatformStand=false end)end
	ac.KeyDown:connect(function(bca)
	if bca:lower()=='w'then caa.F=speedfly elseif bca:lower()=='s'then caa.B=
	-speedfly elseif bca:lower()=='a'then caa.L=-speedfly elseif
	bca:lower()=='d'then caa.R=speedfly end end)
	ac.KeyUp:connect(function(bca)
	if bca:lower()=='w'then caa.F=0 elseif bca:lower()=='s'then caa.B=0 elseif
	bca:lower()=='a'then caa.L=0 elseif bca:lower()=='d'then caa.R=0 end end)aca()end;if string.sub(dc.Text,1,5)== ("unfly")then flying=false
	lplayer.Character.Humanoid.PlatformStand=false end
	if
	string.sub(dc.Text,1,5)== ("chat ")then
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer((string.sub(dc.Text,6)),"All")end;if string.sub(dc.Text,1,5)== ("spam ")then
	spamtext=(string.sub(dc.Text,6))spamming=true end;if
	string.sub(dc.Text,1,6)== ("unspam")then spamming=false end
	if
	string.sub(dc.Text,1,9)== ("spamwait ")then spamdelay=(string.sub(dc.Text,10))end;if string.sub(dc.Text,1,7)== ("pmspam ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,8)))do pmspammed=_ba.Name;spammingpm=true end end;if
	string.sub(dc.Text,1,8)== ("unpmspam")then spammingpm=false end
	if
	string.sub(dc.Text,1,8)== ("cfreeze ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,9)))do _ba.Character["Left Leg"].Anchored=true
	_ba.Character["Left Arm"].Anchored=true;_ba.Character["Right Leg"].Anchored=true
	_ba.Character["Right Arm"].Anchored=true;_ba.Character.Torso.Anchored=true
	_ba.Character.Head.Anchored=true end end
	if string.sub(dc.Text,1,10)== ("uncfreeze ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,11)))do _ba.Character["Left Leg"].Anchored=false
	_ba.Character["Left Arm"].Anchored=false;_ba.Character["Right Leg"].Anchored=false
	_ba.Character["Right Arm"].Anchored=false;_ba.Character.Torso.Anchored=false
	_ba.Character.Head.Anchored=false end end
	if string.sub(dc.Text,1,8)== ("unlockws")then
	local caa=game:GetService("Workspace"):getChildren()
	for i=1,#caa do
	if caa[i].className=="Part"then caa[i].Locked=false elseif
	caa[i].className=="Model"then local daa=caa[i]:getChildren()for i=1,#daa do if daa[i].className=="Part"then
	daa[i].Locked=false end end end end
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Success!",Text="Workspace unlocked. Use ;lockws to lock."})end
	if string.sub(dc.Text,1,6)== ("lockws")then
	local caa=game:GetService("Workspace"):getChildren()
	for i=1,#caa do
	if caa[i].className=="Part"then caa[i].Locked=true elseif
	caa[i].className=="Model"then local daa=caa[i]:getChildren()for i=1,#daa do if daa[i].className=="Part"then
	daa[i].Locked=true end end end end end
	if string.sub(dc.Text,1,6)== ("btools")then
	local baa=Instance.new("HopperBin",lplayer.Backpack)baa.BinType="Clone"
	local caa=Instance.new("HopperBin",lplayer.Backpack)caa.BinType="Hammer"
	local bba=Instance.new("HopperBin",lplayer.Backpack)bba.BinType="Grab"end;if string.sub(dc.Text,1,6)== ("pstand")then
	lplayer.Character.Humanoid.PlatformStand=true end;if string.sub(dc.Text,1,8)==
	("unpstand")then
	lplayer.Character.Humanoid.PlatformStand=false end;if string.sub(dc.Text,1,9)==
	("blockhead")then
	lplayer.Character.Head.Mesh:Destroy()end
	if
	string.sub(dc.Text,1,3)== ("sit")then lplayer.Character.Humanoid.Sit=true end
	if string.sub(dc.Text,1,9)== ("bringobj ")then
	local function caa()
	for aba,bba in
	ipairs(game:GetService("Workspace"):GetDescendants())do
	if bba.Name== (string.sub(dc.Text,10))then
	bba.CFrame=lplayer.Character.HumanoidRootPart.CFrame;bba.CanCollide=false;bba.Transparency=0.7;wait()
	bba.CFrame=lplayer.Character["Left Leg"].CFrame;wait()
	bba.CFrame=lplayer.Character["Right Leg"].CFrame;wait()
	bba.CFrame=lplayer.Character["Head"].CFrame end end end;while wait()do caa()end
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="BringObj",Text="BringObj enabled."})end
	if string.sub(dc.Text,1,6)== ("wsvis ")then
	vis=(string.sub(dc.Text,7))
	local caa=game:GetService("Workspace"):GetDescendants()
	for i=1,#caa do
	if caa[i].className=="Part"then caa[i].Transparency=vis elseif caa[i].className==
	"Model"then local daa=caa[i]:getChildren()
	for i=1,#daa do if
	daa[i].className=="Part"then daa[i].Transparency=vis end end end end end
	if string.sub(dc.Text,1,10)== ("hypertotal")then
	loadstring(game:GetObjects("rbxassetid://1255063809")[1].Source)()
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Success!",Text="HyperTotal GUI Loaded!"})end
	if string.sub(dc.Text,1,4)== ("cmds")then ad.Visible=true end
	if string.sub(dc.Text,1,9)== ("rmeshhats")then
	for baa,_ba in
	pairs(lplayer.Character:GetChildren())do if(_ba:IsA("Accessory"))or(_ba:IsA("Hat"))then
	_ba.Handle.Mesh:Destroy()end end end
	if string.sub(dc.Text,1,9)== ("blockhats")then
	for baa,_ba in
	pairs(lplayer.Character:GetChildren())do if(_ba:IsA("Accessory"))or(_ba:IsA("Hat"))then
	_ba.Handle.Mesh:Destroy()end end end
	if string.sub(dc.Text,1,9)== ("rmeshtool")then for baa,_ba in
	pairs(lplayer.Character:GetChildren())do
	if(_ba:IsA("Tool"))then _ba.Handle.Mesh:Destroy()end end end
	if string.sub(dc.Text,1,9)== ("blocktool")then for baa,_ba in
	pairs(lplayer.Character:GetChildren())do
	if(_ba:IsA("Tool"))then _ba.Handle.Mesh:Destroy()end end end
	if string.sub(dc.Text,1,7)== ("spinner")then
	local caa=Instance.new("RocketPropulsion")caa.Parent=lplayer.Character.HumanoidRootPart
	caa.Name="Spinner"caa.Target=lplayer.Character["Left Arm"]caa:Fire()
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Spinner enabled",Text="Type ;nospinner to disable."})end;if string.sub(dc.Text,1,9)== ("nospinner")then
	lplayer.Character.HumanoidRootPart.Spinner:Destroy()end
	if
	string.sub(dc.Text,1,6)== ("reachd")then
	for baa,_ba in
	pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
	if _ba:isA("Tool")then
	local aba=Instance.new("SelectionBox",_ba.Handle)aba.Adornee=_ba.Handle
	_ba.Handle.Size=Vector3.new(0.5,0.5,60)_ba.GripPos=Vector3.new(0,0,0)
	lplayer.Character.Humanoid:UnequipTools()end end
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Reach applied!",Text="Applied to equipped sword. Use ;noreach to disable."})end
	if string.sub(dc.Text,1,6)== ("reach ")then
	for baa,_ba in
	pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
	if _ba:isA("Tool")then
	local aba=Instance.new("SelectionBox",_ba.Handle)aba.Name="Reach"aba.Adornee=_ba.Handle
	_ba.Handle.Size=Vector3.new(0.5,0.5,(string.sub(dc.Text,7)))_ba.GripPos=Vector3.new(0,0,0)
	lplayer.Character.Humanoid:UnequipTools()end end
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Reach applied!",Text="Applied to equipped sword. Use ;noreach to disable."})end
	if string.sub(dc.Text,1,7)== ("noreach")then for baa,_ba in
	pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do
	if _ba:isA("Tool")then _ba.Handle.Reach:Destroy()end end
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Reach removed!",Text="Removed reach from equipped sword."})end
	if string.sub(dc.Text,1,6)== ("rkill ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,7)))do lplayer.Character.Humanoid.Name=1
	local aba=lplayer.Character["1"]:Clone()aba.Parent=lplayer.Character;aba.Name="Humanoid"wait(0.1)
	lplayer.Character["1"]:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character;lplayer.Character.Animate.Disabled=true
	wait(0.1)lplayer.Character.Animate.Disabled=false
	lplayer.Character.Humanoid.DisplayDistanceType="None"for cba,dba in
	pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
	lplayer.Character.Humanoid:EquipTool(dba)end
	wait(0.1)
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;wait(0.2)
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;wait(0.5)
	lplayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(
	-100000,10,-100000))
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools needed!",Text="You need a tool in your backpack for this command!"})end end
	if string.sub(dc.Text,1,6)== ("tp me ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,7)))do
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame end end
	if string.sub(dc.Text,1,7)== ("cbring ")then
	if
	
	(string.sub(dc.Text,8))==
	"all"or(string.sub(dc.Text,8))=="All"or(string.sub(dc.Text,8))=="ALL"then cbringall=true else for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,8)))do brplr=_ba.Name end end;cbring=true end;if string.sub(dc.Text,1,8)== ("uncbring")then cbring=false
	cbringall=false end
	if
	string.sub(dc.Text,1,5)== ("swap ")then
	for baa,_ba in pairs(GetPlayer(string.sub(dc.Text,6)))do
	local aba=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;local aca=lplayer.Character.HumanoidRootPart.CFrame
	lplayer.Character.Humanoid.Name=1;local bca=lplayer.Character["1"]:Clone()
	bca.Parent=lplayer.Character;bca.Name="Humanoid"wait(0.1)
	lplayer.Character["1"]:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character;lplayer.Character.Animate.Disabled=true
	wait(0.1)lplayer.Character.Animate.Disabled=false
	lplayer.Character.Humanoid.DisplayDistanceType="None"for dca,_da in
	pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
	lplayer.Character.Humanoid:EquipTool(_da)end;local function cca(dca,_da)
	local ada,bda=dca.Character,_da.Character
	if ada and bda then ada:MoveTo(bda.Head.Position)end end
	wait(0.1)
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;wait(0.2)
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character.HumanoidRootPart.CFrame;wait(0.5)
	lplayer.Character.HumanoidRootPart.CFrame=aca;wait(0.6)
	cca(lplayer,game:GetService("Players")[_ba.Name])wait(0.4)
	lplayer.Character.HumanoidRootPart.CFrame=aba
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools needed!",Text="You need a tool in your backpack for this command!"})end end
	if string.sub(dc.Text,1,7)== ("glitch ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,8)))do lplayer.Character.Humanoid.Name=1
	local aba=lplayer.Character["1"]:Clone()aba.Parent=lplayer.Character;aba.Name="Humanoid"wait(0.1)
	lplayer.Character["1"]:Destroy()
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character;lplayer.Character.Animate.Disabled=true
	wait(0.1)lplayer.Character.Animate.Disabled=false
	lplayer.Character.Humanoid.DisplayDistanceType="None"for cba,dba in
	pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
	lplayer.Character.Humanoid:EquipTool(dba)end
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character["Left Arm"].CFrame;wait(0.3)
	lplayer.Character.HumanoidRootPart.CFrame=game:GetService("Players")[_ba.Name].Character["Left Arm"].CFrame;wait(0.4)b=Instance.new("BodyForce")
	b.Parent=lplayer.Character.HumanoidRootPart;b.Name="Glitch"b.Force=Vector3.new(100000000,5000,0)
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools needed!",Text="You need a tool in your backpack for this command!"})end end
	if string.sub(dc.Text,1,8)== ("unglitch")then
	lplayer.Character.HumanoidRootPart.Glitch:Destroy()
	lplayer.Character.HumanoidRootPart.CFrame=CFrame.new(10000,0,10000)b=Instance.new("BodyForce")
	b.Parent=lplayer.Character.HumanoidRootPart;b.Name="unGlitch"b.Force=Vector3.new(0,-5000000,0)
	wait(2)
	lplayer.Character.HumanoidRootPart.unGlitch:Destroy()end
	if string.sub(dc.Text,1,8)== ("grespawn")then
	lplayer.Character.Humanoid.Health=0;wait(1)
	lplayer.Character.Head.CFrame=CFrame.new(1000000,0,1000000)
	lplayer.Character.Torso.CFrame=CFrame.new(1000000,0,1000000)end
	if string.sub(dc.Text,1,8)== ("explorer")then
	loadstring(game:GetObjects("rbxassetid://492005721")[1].Source)()
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Success!",Text="DEX Explorer has loaded."})end
	if string.sub(dc.Text,1,5)== ("anim ")then
	local baa=Instance.new("Animation")
	baa.AnimationId="rbxassetid://".. (string.sub(dc.Text,6))
	local _ba=lplayer.Character.Humanoid:LoadAnimation(baa)_ba:Play(.1,1,1)end
	if string.sub(dc.Text,1,7)== ("animgui")then
	loadstring(game:GetObjects("rbxassetid://1202558084")[1].Source)()
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Success!",Text="Energize Animations GUI has loaded."})end
	if string.sub(dc.Text,1,7)== ("savepos")then
	saved=lplayer.Character.HumanoidRootPart.CFrame
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Position Saved",Text="Use ;loadpos to return to saved position."})end;if string.sub(dc.Text,1,7)== ("loadpos")then
	lplayer.Character.HumanoidRootPart.CFrame=saved end
	if string.sub(dc.Text,1,5)==
	("bang ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,6)))do local bba=Instance.new("Animation")
	bba.AnimationId="rbxassetid://148840371"
	local cba=lplayer.Character.Humanoid:LoadAnimation(bba)cba:Play(.1,1,1)bplrr=_ba.Name;banpl=true end end
	if string.sub(dc.Text,1,6)== ("unbang")then banpl=false end
	if string.sub(dc.Text,1,9)== ("bringmod ")then
	local function caa()
	for aba,bba in
	ipairs(game:GetService("Workspace"):GetDescendants())do
	if bba.Name== (string.sub(dc.Text,10))then
	for cba,dba in
	pairs(bba:GetDescendants())do
	if(dba:IsA("BasePart"))then
	dba.CFrame=lplayer.Character.HumanoidRootPart.CFrame;dba.CanCollide=false;dba.Transparency=0.7;wait()
	dba.CFrame=lplayer.Character["Left Leg"].CFrame;wait()
	dba.CFrame=lplayer.Character["Right Leg"].CFrame;wait()
	dba.CFrame=lplayer.Character["Head"].CFrame end end end end end;while wait()do caa()end
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="BringMod",Text="BringMod enabled."})end
	if string.sub(dc.Text,1,7)== ("respawn")then
	local baa=Instance.new('Model',workspace)baa.Name='re '..lplayer.Name
	local caa=Instance.new('Humanoid',baa)local bba=Instance.new('Part',baa)bba.Name='Torso'
	bba.CanCollide=false;bba.Transparency=1;lplayer.Character=baa end
	if string.sub(dc.Text,1,8)== ("shutdown")then
	game:GetService'RunService'.Stepped:Connect(function()
	pcall(function()
	for baa,_ba in
	pairs(game:GetService'Players':GetPlayers())do
	if
	_ba.Character~=nil and _ba.Character:FindFirstChild'Head'then
	for bba,cba in pairs(_ba.Character.Head:GetChildren())do if
	cba:IsA'Sound'then cba.Playing=true
	cba.CharacterSoundEvent:FireServer(true,true)end end end end end)end)
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Attempting Shutdown",Text="Shutdown Attempt has begun."})end
	if string.sub(dc.Text,1,7)== ("delobj ")then
	objtodel=(string.sub(dc.Text,8))
	for baa,_ba in
	pairs(game:GetService("Workspace"):GetDescendants())do if _ba.Name==objtodel then _ba:Destroy()end end end
	if string.sub(dc.Text,1,7)== ("getplrs")then for baa,_ba in
	pairs(game:GetService("Players"):GetPlayers())do print(_ba)end
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Printed",Text="Players have been printed to console. (F9)"})end
	if string.sub(dc.Text,1,8)== ("deldecal")then
	for baa,_ba in
	pairs(game:GetService("Workspace"):GetDescendants())do if(_ba:IsA("Decal"))then _ba:Destroy()end end end
	if string.sub(dc.Text,1,10)== ("opfinality")then
	loadstring(game:GetObjects("rbxassetid://1294358929")[1].Source)()
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Success!",Text="OpFinality GUI has loaded."})end
	if string.sub(dc.Text,1,7)== ("remotes")then remotes=true;added=true
	game.DescendantAdded:connect(function(caa)
	if
	added==true then
	if remotes==true then
	if caa:IsA("RemoteEvent")then
	print("A RemoteEvent was added!")
	print(" game."..caa:GetFullName().." | RemoteEvent")
	print(" game."..caa:GetFullName().." | RemoteEvent",247,0,0,true)end end end end)
	game.DescendantAdded:connect(function(caa)
	if added==true then
	if remotes==true then
	if caa:IsA("RemoteFunction")then
	warn("A RemoteFunction was added!")
	warn(" game."..caa:GetFullName().." | RemoteFunction")
	print(" game."..caa:GetFullName().." | RemoteFunction",5,102,198,true)end end end end)
	game.DescendantAdded:connect(function(caa)
	if added==true then
	if binds==true then
	if caa:IsA("BindableFunction")then
	print("A BindableFunction was added!")
	print(" game."..caa:GetFullName().." | BindableFunction")
	print(" game."..caa:GetFullName().." | BindableFunction",239,247,4,true)end end end end)
	game.DescendantAdded:connect(function(caa)
	if added==true then
	if binds==true then
	if caa:IsA("BindableEvent")then
	warn("A BindableEvent was added!")
	warn(" game."..caa:GetFullName().." | BindableEvent")
	print(" game."..caa:GetFullName().." | BindableEvent",13,193,22,true)end end end end)
	if binds==true then
	for baa,_ba in pairs(game:GetDescendants())do
	if
	_ba:IsA("BindableFunction")then
	print(" game.".._ba:GetFullName().." | BindableFunction")
	print(" game.".._ba:GetFullName().." | BindableFunction",239,247,4,true)end end
	for baa,_ba in pairs(game:GetDescendants())do
	if _ba:IsA("BindableEvent")then
	warn(" game."..
	_ba:GetFullName().." | BindableEvent")
	print(" game.".._ba:GetFullName().." | BindableEvent",13,193,22,true)end end else print("Off")end
	if remotes==true then
	for baa,_ba in pairs(game:GetDescendants())do
	if
	_ba:IsA("RemoteFunction")then
	warn(" game.".._ba:GetFullName().." | RemoteFunction")
	print(" game.".._ba:GetFullName().." | RemoteFunction",5,102,198,true)end end;wait()
	for baa,_ba in pairs(game:GetDescendants())do
	if _ba:IsA("RemoteEvent")then
	print(
	" game.".._ba:GetFullName().." | RemoteEvent")
	print(" game.".._ba:GetFullName().." | RemoteEvent",247,0,0,true)end end else print("Off")end
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Printing Remotes",Text="Type ;noremotes to disable."})end
	if string.sub(dc.Text,1,9)== ("noremotes")then remotes=false;added=false
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Printing Remotes Disabled",Text="Type ;remotes to enable."})end
	if string.sub(dc.Text,1,9)== ("tpdefault")then spin=false;followed=false
	traill=false;noclip=false;annoying=false;hwalk=false;cbringing=false end
	if string.sub(dc.Text,1,7)== ("stopsit")then stopsitting=true end
	if string.sub(dc.Text,1,5)== ("gosit")then stopsitting=false end
	if string.sub(dc.Text,1,7)== ("version")then
	print(adminversion)
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Version",Text=adminversion})end
	if string.sub(dc.Text,1,7)== ("clicktp")then clickgoto=true
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Click TP",Text="Press E to teleport to mouse position"})end
	if string.sub(dc.Text,1,9)== ("noclicktp")then clickgoto=false
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Click TP",Text="Click TP has been disabled."})end
	if string.sub(dc.Text,1,7)== ("toolson")then gettingtools=true
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools Enabled",Text="Automatically colleting tools dropped."})end
	if string.sub(dc.Text,1,8)== ("toolsoff")then gettingtools=false
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Tools Disabled",Text="Click TP has been disabled."})end
	if string.sub(dc.Text,1,9)== ("delcmdbar")then bc:Destroy()end;if string.sub(dc.Text,1,5)== ("reset")then
	lplayer.Character.Head:Destroy()end
	if
	string.sub(dc.Text,1,6)== ("state ")then statechosen=string.sub(dc.Text,7)changingstate=true end;if string.sub(dc.Text,1,8)== ("gravity ")then
	game:GetService("Workspace").Gravity=string.sub(dc.Text,9)end
	if
	string.sub(dc.Text,1,9)== ("looprhats")then removingmeshhats=true end;if string.sub(dc.Text,1,11)== ("unlooprhats")then
	removingmeshhats=false end;if
	string.sub(dc.Text,1,9)== ("looprtool")then removingmeshtool=true end
	if
	string.sub(dc.Text,1,11)== ("unlooprtool")then removingmeshtool=false end
	if string.sub(dc.Text,1,9)== ("givetool ")then
	for baa,_ba in
	pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants())do
	if _ba:IsA("Tool")then for bba,cba in
	pairs(GetPlayer(string.sub(dc.Text,10)))do _ba.Parent=cba.Character end end end end
	if string.sub(dc.Text,1,4)== ("age ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,5)))do
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
	_ba.Name.." Account Age: ".._ba.AccountAge.." days!","All")end end
	if string.sub(dc.Text,1,3)== ("id ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,4)))do
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
	_ba.Name.." Account ID: ".._ba.UserId,"All")end end
	if string.sub(dc.Text,1,5)== (".age ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,6)))do
	game:GetService("StarterGui"):SetCore("SendNotification",{Title=_ba.AccountAge.." Days",Text=
	"Account age of ".._ba.Name})end end
	if string.sub(dc.Text,1,4)== (".id ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,5)))do
	game:GetService("StarterGui"):SetCore("SendNotification",{Title=_ba.UserId.." ID",Text=
	"Account ID of ".._ba.Name})end end
	if string.sub(dc.Text,1,6)== ("gameid")then
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Game ID",Text=
	"Game ID: "..game.GameId})end
	if string.sub(dc.Text,1,3)== ("pgs")then
	local caa=game:GetService("Workspace"):PGSIsEnabled()
	if caa==true then
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="PGSPhysicsSolverEnabled",Text="PGS is Enabled!"})else
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="PGSPhysicsSolverEnabled",Text="PGS is Disabled!"})end end
	if string.sub(dc.Text,1,11)== ("removeinvis")then
	for baa,_ba in
	pairs(game:GetService("Workspace"):GetDescendants())do
	if _ba:IsA("Part")then if _ba.Transparency==1 then if _ba.Name~="HumanoidRootPart"then
	_ba:Destroy()end end end end end;if string.sub(dc.Text,1,9)== ("removefog")then
	game:GetService("Lighting").FogStart=0
	game:GetService("Lighting").FogEnd=9999999999999 end;if
	string.sub(dc.Text,1,7)== ("disable")then
	lplayer.Character.Humanoid.Parent=lplayer end
	if
	string.sub(dc.Text,1,6)== ("enable")then lplayer.Humanoid.Parent=lplayer.Character end
	if string.sub(dc.Text,1,13)== ("givealltools ")then
	for baa,_ba in
	pairs(game:GetService("Players").LocalPlayer.Backpack:GetDescendants())do
	if _ba:IsA("Tool")then _ba.Parent=lplayer.Character;wait()for bba,cba in
	pairs(GetPlayer(string.sub(dc.Text,14)))do _ba.Parent=cba.Character end end end end;if string.sub(dc.Text,1,9)== ("flyspeed ")then
	speedfly=string.sub(dc.Text,10)wait()change()end
	if
	string.sub(dc.Text,1,7)== ("carpet ")then
	for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,8)))do local bba=Instance.new("Animation")
	bba.AnimationId="rbxassetid://282574440"
	local cba=lplayer.Character.Humanoid:LoadAnimation(bba)cba:Play(.1,1,1)bplrr=_ba.Name;banpl=true end end
	if string.sub(dc.Text,1,8)== ("uncarpet")then banpl=false end
	if string.sub(dc.Text,1,6)== ("stare ")then for baa,_ba in
	pairs(GetPlayer(string.sub(dc.Text,7)))do staring=true;stareplr=_ba end end
	if string.sub(dc.Text,1,7)== ("unstare")then staring=false end
	if string.sub(dc.Text,1,7)== ("logchat")then chatlogs=true
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="LogChat enabled",Text="Now logging all player chat."})end
	if string.sub(dc.Text,1,9)== ("unlogchat")then chatlogs=false
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="LogChat disabled",Text="Stopped logging all player chat."})end
	if string.sub(dc.Text,1,6)== ("fixcam")then
	game:GetService("Workspace").CurrentCamera:Destroy()wait(0.1)
	game:GetService("Workspace").CurrentCamera.CameraSubject=lplayer.Character.Humanoid
	game:GetService("Workspace").CurrentCamera.CameraType="Custom"lplayer.CameraMinZoomDistance=0.5;lplayer.CameraMaxZoomDistance=400
	lplayer.CameraMode="Classic"end
	if string.sub(dc.Text,1,7)== ("unstate")then changingstate=false end;dc.Text=""end end)wait(0.3)
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="Loaded successfully!",Text="Reviz Admin V2 by illremember"})wait(0.1)print("Reviz Admin V2 loaded!")
	if
	game:GetService("Workspace").FilteringEnabled==true then
	warn("FE is Enabled (Filtering Enabled)")
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="FE is Enabled",Text="Filtering Enabled. Enjoy using Reviz Admin!"})else
	warn("FE is Disabled (Filtering Disabled) Consider using a different admin script.")
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="FE is Disabled",Text="Filtering Disabled. Consider using a different admin script."})end;local b_a=Instance.new("ScreenGui")
	local c_a=Instance.new("Frame")local d_a=Instance.new("ImageLabel")
	b_a.Parent=game:GetService("CoreGui")c_a.Parent=b_a;c_a.BackgroundColor3=Color3.new(1,1,1)
	c_a.BackgroundTransparency=1;c_a.Size=UDim2.new(1,0,0,300)
	c_a.Position=UDim2.new(0,0,-0.4,0)d_a.Parent=c_a;d_a.BackgroundColor3=Color3.new(1,1,1)
	d_a.BackgroundTransparency=1;d_a.Position=UDim2.new(0,0,0,0)
	d_a.Size=UDim2.new(1,0,1,0)d_a.Image="http://www.roblox.com/asset/?id=1542162618"
	c_a:TweenPosition(UDim2.new(0,0,0.2,0),"Out","Elastic",3)wait(3.01)
	c_a:TweenPosition(UDim2.new(0,0,1.5,0),"Out","Elastic",5)wait(5.01)b_a:Destroy()end)

end
coroutine.resume(coroutine.create(SCRIPT_ZTLO89_FAKESCRIPT))
function SCRIPT_OHOD88_FAKESCRIPT() -- RoseHub.Script 
	local script = Instance.new('Script')
	script.Parent = RoseHub
	
	script.Parent.MouseButton1Click:connect(function()local a='2.1.7'local b='Soon...'
	local c=game:GetService("CoreGui")local d=false;local _a=5;local aa=""local ba=""local ca=""local da=""
	local _b={{"Infinite Yield","MjBzRjmT",1},{"Knife V3","W833RBFr",1},{"Bird Wings","RQ9b8UTv",1},{"M4A1","eP1zq8tb",1},{"Dungun","90M7Mi8e",1},{"Bomb Vest","tG1PPuMd",1},{"Music Bars","SvYebC2r",1},{"Omni God","87NeeChc",1},{"Pain Titan","Hg5L8EtM",1},{"Reaper Titan","B0q3QBg6",1},{"Alter Chat","ZSB4pN9R",1},{"Hoverbike",01268225564,2},{"Rail Gun Titan","0wFiFdwM",1},{"True Hero","P8AQ2ebJ",1},{"Celestial Wheel","bymTcgzf",1},{"Knive V4","j0Ns1w1S",1},{"Ravenger Claws","D7GxxvWL",1},{"John Doe","m5wHsLhr",1},{"Messor Titan","4bSrkLtA",1},{"Clown Titan","L0WLDZvc",1},{"Chara","HrWjgXtb",1},{"Shedlesky Rage","2SPz35LS",1},{"LunchaThug","x6GWFC5K",1},{"Nazi Flag","ZCZNxFBD",1},{"Psychopath","DGqk3bqY",1},{"Fireworks Wand","GB29NAPv",1},{"Psycho Clown","UgxKqKwE",1},{"Inferno","qhMGk36S",1},{"Police Titan","UCmufLU8",1},{"Galaxy Titan","nKNdCrKj",1},{"Holy Wrench","cKSh0a8C",1},{"Krystal Dance","j7EqLfbP",1},{"Pee","3CYmA0Pz",1},{"Jihad","vSujnuaF",1},{"Hermit Purple","R3C3ajQV",1},{"Golden Gun","2574Sd9E",1},{"Goku","yAXZZF9r",1},{"Emoji","vKPcMKnm",1},{"Damn Son","AMLHT8aJ",1},{"Devuzi","q0mt2peM",1},{"Flash","gGSVVq1H",1},{"Teal Scythe","0TUBSaxt",1},{"Demon Demise","ghMDMW63",1},{"Red Sayan","uC5DBvf9",1},{"Ban Hammer","1ynQ4Mu0",1},{"Dick Gun","UR9FBjcj",1},{"Dat Boi","Sz7KJHay",1},{"Watermelon Trap","pypsM3hj",1},{"Whip","XDsek3Rf",1},{"School Shooter","EmmwRFDA",1},{"9/11","3UmV26hG",1},{"Bong","8Kb08E9s",1},{"Horse","MVph7nmq",1},{"Scythe","fEEVkJba",1},{"Disco Fog","xg8d4PS0",1},{"Disco Mesh","GvtPCRVR",1},{"Russian Dance","RADQ2vH8",1},{"Sun God","0uJhLJ5m",1},{"Rolling Light Ball","S4Hj3MPd",1},{"Red Death Scythe","KJ5nqeVF",1},{"Crystal Pistols","GDLZ4VAq",1},{"Epic Sword","DZVV9AGG",1},{"Circle Visualizer","diJiteen",1},{"Hex Blade","fA0bBELV",1},{"Bulldog","nPPLxSA3",1},{"FS-627-SENDER","R3m4gfuP",1},{"Voodoo Child","w5TEtd0Q",1},{"Bye Bye","XBysEMgg",1},{"Galil V2","cnFz3h8D",1},{"Mario","pKmtnc9u",1},{"Lighting Blade","rMEe8R4N",1},{"Flamingo Skybox","8rWM880e",1},{"Sin Unleashed","ZQh5B023",1},{"Ravager","VQEz6a6i",1},{"Brock","Fe5YrxcY",1},{"M249","J4ijx897",1},{"MG36","zLZ4Auqn",1},{"Omega Scythe","Ag8dKZYB",1},{"Omega Sword","7JjxwhPn",1},{"Draw","1322re6a",1},{"Gaydar","s1P9sJub",1},{"Crimson Hell","na3pQXNV",1},{"Psycho","WNvhEZJw",1},{"R6","yX1DMcvM",1},{"Elemental God","mLz55spD",1},{"Cross Power","mLz55spD",1},{"Blood Harvester","qz0ufnwd",1},{"Mustard Gas","sg2wg4y8",1},{"Gas Can","xknu2gna",1},{"Frieza","tpkyda6c",1},{"Sadistic Genocider V2","nch0tn9u",1},{"Demon Nelf","VcBmmGuz",1},{"Demonic Sword","W2Hc3Tkd",1},{"Noob Power","9YMc9FRj",1},{"Creep","z7S1ugBF",1},{"Crazy Nuke","6kbRdDk6",1},{"Sticky Bombs","2A4U8xdA",1}}
	local ab={{"Fe God","KduGECH6",1},{"Fe Fly",1281055032,2},{"Spam","74GjB7tB",1}}
	local bb={{"PF Virgo 2.0","7TeJszah",1},{"City Life Bomb Vest","sLHGSBn1",1},{"City Life Suicide","YdKKQ7yT",1},{"City Life Explosion","vy78mqrG",1},{"CB:RO Aimbot","t3yHg06t",1},{"Prison Life 2 GUI","d6X2R39V",1}}
	local cb={{"c00lgui","Rz2EFsLU",1},{"Topkek 4.0","d0CJRrcg",1},{"Topkek 3.0","SikGfE9u",1},{"Ro-Xploit 4.0",175137115,2},{"Ro-Xploit 5.0",288646117,2},{"Ro-Xploit 6.0",364364477,2},{"Dex 2.0",492005721,2},{"Dex 3.0",418957341,2},{"Clown Van","a5UZuuiT",1},{"Hell Elevator GUI","8NYWpf2T",1},{"Chams / Aimlock","Yi7fzELj",1},{"YourMom GUI","289110135",2},{"Pepe GUI","277881926",2},{"Brack Hub","PT9Gf7d5",1},{"Vesprin FE GUI","1231351616",2},{"Music GUI","U352cdsv",1}}
	local db={{"Clockwork Arena","EvnXCXhP",1},{"Town Map",1345094164,2},{"Cave Island","t29C42rm",1},{"Nature Map","gmF4Kq5B",1},{"Nazi Map","az8sLCLT",1},{"Ritual Room","hYCTFiAC",1},{"Stripper","jztW5Vuy",1},{"Witch Map","R9epW292",1},{"Rainbow Tunnel","8bznLitn",1},{"Scary Map","fNw46f74",1},{"Nazi Camp","KJNk4STm",1},{"Night Club",1281063730,2}}
	local _c={{_b,"Scripts"},{ab,"FE Scripts"},{bb,"Game Scripts"},{cb,"GUIs"},{db,"Maps"}}
	local function ac(caa,daa,_ba,aba,bba,cba,dba,_ca,aca,bca)local cca=Instance.new("Frame")cca.Active=caa
	cca.BackgroundColor3=daa;cca.BorderSizePixel=_ba;cca.Name=aba;cca.Parent=bba;cca.Position=cba
	cca.Size=dba;cca.ClipsDescendants=_ca;cca.Draggable=aca;cca.BackgroundTransparency=bca end
	local function bc(caa,daa,_ba,aba,bba,cba,dba,_ca,aca)local bca=Instance.new("ScrollingFrame")
	bca.BackgroundColor3=caa;bca.BorderSizePixel=daa;bca.Name=_ba;bca.Parent=aba;bca.Position=bba
	bca.Size=cba;bca.CanvasSize=dba;bca.BackgroundTransparency=_ca
	bca.ScrollBarThickness=aca end
	local function cc(caa,daa,_ba,aba,bba,cba,dba,_ca,aca,bca,cca,dca)local _da=Instance.new("TextLabel")_da.BackgroundColor3=caa
	_da.BackgroundTransparency=daa;_da.Name=_ba;_da.Parent=aba;_da.Position=bba;_da.Size=cba;_da.Font=dba
	_da.Text=_ca;_da.TextColor3=aca;_da.TextSize=bca;_da.BorderSizePixel=cca
	_da.TextWrapped=dca end
	local function dc(caa,daa,_ba,aba,bba,cba,dba,_ca,aca,bca,cca,dca,_da,ada,bda,cda)local dda=Instance.new("TextBox")dda.BackgroundColor3=caa
	dda.BackgroundTransparency=daa;dda.MultiLine=_ba;dda.Name=aba;dda.Parent=bba;dda.Position=cba
	dda.Size=dba;dda.Font=_ca;dda.Text=aca;dda.TextColor3=bca;dda.TextSize=cca
	dda.TextWrapped=dca;dda.TextYAlignment=_da;dda.BorderSizePixel=ada;dda.PlaceholderText=bda
	dda.TextXAlignment=cda end
	local function _d(caa,daa,_ba,aba,bba,cba,dba,_ca,aca,bca,cca,dca)local _da=Instance.new("TextButton")_da.BackgroundColor3=caa
	_da.BorderSizePixel=daa;_da.Name=_ba;_da.Parent=aba;_da.Position=bba;_da.Size=cba;_da.Font=dba
	_da.Text=_ca;_da.TextColor3=aca;_da.TextSize=bca;_da.BackgroundTransparency=cca
	_da.MouseButton1Down:connect(dca)end
	local function ad(caa,daa,_ba,aba,bba,cba,dba,_ca,aca,bca)local cca=Instance.new("ImageLabel")cca.BackgroundColor3=caa
	cca.BackgroundTransparency=daa;cca.BorderSizePixel=_ba;cca.Name=aba;cca.Parent=bba;cca.Selectable=cba
	cca.Size=dba;cca.Image=_ca;cca.Position=aca;cca.Rotation=bca end
	local bd={"Home","Scripts","FE Scripts","Game Scripts","GUIs","Maps","Executor","Credits"}local cd=bd[1]
	local function dd(caa)
	if d==false and caa~=cd then d=true
	if cd=="Credits"then
	for daa,_ba in
	pairs(screenGui.MainFrame.MainStuff.Credits:GetDescendants())do
	if _ba.ClassName=="ImageLabel"then
	local aba=game:GetService("TweenService")local bba=_ba;local cba={}cba.ImageTransparency=1;local dba=TweenInfo.new(0.5)
	local _ca=aba:Create(bba,dba,cba)_ca:Play()end end;wait(0.5)end
	screenGui.MainFrame.MainStuff[cd]:TweenPosition(UDim2.new(
	-1,0,0,0),"Out","Quad",0.5)
	screenGui.MainFrame.MainStuff[caa]:TweenPosition(UDim2.new(0,0,0,0),"Out","Quad",0.5)
	screenGui.MainFrame.SelectedTab.SelectedTab:TweenPosition(UDim2.new(0,0,
	-1,0),"Out","Quad",0.25)wait(0.25)
	screenGui.MainFrame.SelectedTab.SelectedTab.Text=caa;wait()
	screenGui.MainFrame.SelectedTab.SelectedTab:TweenPosition(UDim2.new(0,0,0,0),"Out","Quad",0.25)wait(0.25)
	screenGui.MainFrame.MainStuff[cd].Position=UDim2.new(1,0,0,0)
	if caa=="Credits"then
	for daa,_ba in
	pairs(screenGui.MainFrame.MainStuff.Credits:GetDescendants())do
	if _ba.ClassName=="ImageLabel"then
	local aba=game:GetService("TweenService")local bba=_ba;local cba={}cba.ImageTransparency=0;local dba=TweenInfo.new(0.5)
	local _ca=aba:Create(bba,dba,cba)_ca:Play()end end;wait(0.5)end;cd=caa;d=false end end
	local function __a(caa)
	if d==false then d=true
	if caa=="Open"then
	screenGui.open:TweenPosition(UDim2.new(-1,0,0.531,0),"Out","Quad",0.6)
	screenGui.MainFrame:TweenSize(UDim2.new(0,350,0,40),"Out","Quad",0.6)wait(0.6)
	screenGui.MainFrame:TweenSize(UDim2.new(0,350,0,340),"Out","Quad",0.6)
	if cd=="Credits"then wait(0.6)
	for daa,_ba in
	pairs(screenGui.MainFrame.MainStuff.Credits:GetDescendants())do
	if _ba.ClassName=="ImageLabel"then
	local aba=game:GetService("TweenService")local bba=_ba;local cba={}cba.ImageTransparency=0;local dba=TweenInfo.new(0.5)
	local _ca=aba:Create(bba,dba,cba)_ca:Play()end end;wait(0.5)end elseif caa=="Close"then
	if cd=="Credits"then
	for daa,_ba in
	pairs(screenGui.MainFrame.MainStuff.Credits:GetDescendants())do
	if _ba.ClassName=="ImageLabel"then
	local aba=game:GetService("TweenService")local bba=_ba;local cba={}cba.ImageTransparency=1;local dba=TweenInfo.new(0.5)
	local _ca=aba:Create(bba,dba,cba)_ca:Play()end end;wait(0.5)end
	screenGui.MainFrame:TweenSize(UDim2.new(0,350,0,40),"Out","Quad",0.6)wait(0.6)
	screenGui.MainFrame:TweenSize(UDim2.new(0,0,0,40),"Out","Quad",0.6)
	screenGui.open:TweenPosition(UDim2.new(0,0,0.531,0),"Out","Quad",0.6)end;if cd~="Credits"then wait(0.6)end;d=false end end;screenGui=Instance.new("ScreenGui")screenGui.Parent=c
	screenGui.Name="RoseHubV2"
	ac(true,Color3.fromRGB(255,35,110),0,"MainFrame",screenGui,UDim2.new(0.5,-175,0.5,-170),UDim2.new(0,350,0,340),true,true,0)
	bc(Color3.fromRGB(255,0,100),0,"TabButtons",screenGui.MainFrame,UDim2.new(0,0,0,40),UDim2.new(0,125,1,
	-40),UDim2.new(0,0,0,0),0,12)
	ac(false,Color3.fromRGB(225,0,100),0,"TitleFrame",screenGui.MainFrame,UDim2.new(0,0,0,0),UDim2.new(1,0,0,40),true,false,0)
	cc(Color3.fromRGB(255,255,255),1,"Title",screenGui.MainFrame.TitleFrame,UDim2.new(0,45,0,0),UDim2.new(0,265,1,0),Enum.Font.Fantasy,
	"Rose Hub "..a.."",Color3.fromRGB(255,255,255),30,1,false)
	ad(Color3.fromRGB(255,85,127),1,0,"RoseIcon",screenGui.MainFrame.TitleFrame,false,UDim2.new(0,45,0,41),"rbxassetid://1342740333",UDim2.new(0,0,0,0),0)
	_d(Color3.fromRGB(255,255,255),1,"Close",screenGui.MainFrame.TitleFrame,UDim2.new(0,310,0,0),UDim2.new(0,40,0,40),Enum.Font.ArialBold,"X",Color3.fromRGB(255,255,255),30,1,function()
	__a("Close")end)
	cc(Color3.fromRGB(255,255,255),1,"MOTD",screenGui.MainFrame,UDim2.new(0,125,0,315),UDim2.new(0,225,0,25),Enum.Font.Fantasy,
	"MOTD: "..b.."",Color3.fromRGB(255,255,255),16,0,true)
	ac(false,Color3.fromRGB(255,100,150),0,"MainStuff",screenGui.MainFrame,UDim2.new(0,130,0,70),UDim2.new(0,215,0,245),true,false,0.5)
	ac(false,Color3.fromRGB(0,0,0),0,"SelectedTab",screenGui.MainFrame,UDim2.new(0,125,0,40),UDim2.new(0,225,0,30),true,false,1)
	cc(Color3.fromRGB(255,255,255),1,"SelectedTab",screenGui.MainFrame.SelectedTab,UDim2.new(0,0,0,0),UDim2.new(0,225,0,30),Enum.Font.Fantasy,"Home",Color3.fromRGB(255,255,255),25,0,false)
	ac(true,Color3.fromRGB(255,84,126),0,"open",screenGui,UDim2.new(-0.5,0,0.5,0),UDim2.new(0,150,0,50),true,false,1)
	_d(Color3.fromRGB(255,50,127),1,"openbutton",screenGui.open,UDim2.new(0,0,0,0),UDim2.new(1,0,1,0),Enum.Font.Fantasy,"OPEN",Color3.fromRGB(255,255,255),32,false,function()
	__a("Open")end)
	for caa,daa in pairs(bd)do
	_d(Color3.fromRGB(255,50,127),0,daa.."Button",screenGui.MainFrame.TabButtons,UDim2.new(0,5,0,_a),UDim2.new(0,115,0,30),Enum.Font.Fantasy,daa,Color3.fromRGB(255,255,255),20,0,function()
	dd(bd[caa])end)local _ba=0;if daa==cd then _ba=0 else _ba=1 end
	bc(Color3.fromRGB(0,0,0),1,daa,screenGui.MainFrame.MainStuff,UDim2.new(_ba,0,0,0),UDim2.new(1,0,1,0),UDim2.new(1,0,0,0),1)_a=_a+35 end
	for caa,daa in pairs(_c)do local _ba={}local aba={}local bba=28;for aca,bca in pairs(daa[1])do
	table.insert(_ba,bca[1])end;table.sort(_ba)for aca,bca in pairs(_ba)do
	for cca,dca in
	pairs(daa[1])do if bca==dca[1]then
	table.insert(aba,{dca[1],dca[2],dca[3]})end end end
	local function cba(aca)bba=28
	for bca,cca in
	pairs(aba)do
	if
	aca==""or
	string.sub(string.lower(cca[1]),1,string.len(aca))==string.lower(aca)then
	_d(Color3.fromRGB(255,50,127),0,cca[1],screenGui.MainFrame.MainStuff[daa[2]],UDim2.new(0,5,0,bba),UDim2.new(1,
	-10,0,20),Enum.Font.Fantasy,cca[1],Color3.fromRGB(255,255,255),14,0,function()
	if cca[3]==1 then
	loadstring(game:HttpGet(
	"https://pastebin.com/raw/"..cca[2],true))()elseif cca[3]==2 then
	loadstring(game:GetObjects("rbxassetid://"..cca[2])[1].Source)()end end)bba=bba+23 end end end
	local function dba()
	for aca,bca in
	pairs(screenGui.MainFrame.MainStuff[daa[2]]:GetChildren())do if bca.ClassName=="TextButton"then bca:Destroy()end end end
	dc(Color3.fromRGB(255,50,127),0,false,"Search",screenGui.MainFrame.MainStuff[daa[2]],UDim2.new(0,5,0,5),UDim2.new(1,
	-10,0,20),Enum.Font.Fantasy,"",Color3.fromRGB(255,255,255),14,false,"Center",0,"Search "..
	daa[2],"Center")
	local function _ca(aca)
	local bca=screenGui.MainFrame.MainStuff[aca].Search;local cca=""
	bca.Changed:connect(function(dca)
	if dca=="Text"then
	if bca.Text~=""and bca.Text~=cca then
	cca=bca.Text;dba()cba(bca.Text)elseif bca.Text==""and cca.Text~=""then
	cca=bca.Text;dba()cba("")end end end)end;_ca(daa[2])cba("")screenGui.MainFrame.MainStuff[daa[2]].CanvasSize=UDim2.new(1,0,0,
	bba+2)
	screenGui.MainFrame.MainStuff[daa[2]].ScrollBarThickness=0 end
	cc(Color3.fromRGB(255,255,255),1,"WelcomeMSG",screenGui.MainFrame.MainStuff.Home,UDim2.new(0.102,0,0.045,0),UDim2.new(0,170,0,29),Enum.Font.Fantasy,"Welcome to Rose Hub!",Color3.fromRGB(255,255,255),20,1,false)
	cc(Color3.fromRGB(255,255,255),1,"FEStatus",screenGui.MainFrame.MainStuff.Home,UDim2.new(0.2,0,0.155,0),UDim2.new(0,128,0,22),Enum.Font.Fantasy,"FE: Unknown",Color3.fromRGB(255,255,255),16,1,false)
	if game:GetService("Workspace").FilteringEnabled then
	screenGui.MainFrame.MainStuff.Home.FEStatus.Text="FE: Enabled!"else
	screenGui.MainFrame.MainStuff.Home.FEStatus.Text="FE: Disabled!"end
	ac(false,Color3.fromRGB(255,0,127),0,"SegLine",screenGui.MainFrame.MainStuff.Home,UDim2.new(0,0,0.245,0),UDim2.new(0,215,0,2),false,false,0.5)
	cc(Color3.fromRGB(255,255,255),1,"Explanation",screenGui.MainFrame.MainStuff.Home,UDim2.new(0,0,0.253,0),UDim2.new(0,215,0,183),Enum.Font.SourceSans,'To get started click the tabs to find what scripts your looking for.\nThe scrolling bar is invisible so to scroll use your scroll wheel.\n\nWant scripts or features added?\n\nJoin our Discord for Support donations and more!',Color3.fromRGB(255,255,255),14,1,true)
	screenGui.MainFrame.MainStuff.Home.Explanation.TextYAlignment="Top"
	_d(Color3.fromRGB(255,50,127),0,"DiscordInvite",screenGui.MainFrame.MainStuff.Home,UDim2.new(0.179,0,0.816,0),UDim2.new(0,138,0,32),Enum.Font.Fantasy,"Discord",Color3.fromRGB(255,255,255),14,0,function()
	local caa=true;if
	pcall(function()Synapse:Copy("http://discord.me/rosehub")end)then else local daa=setclipboard or Clipboard.set
	daa("http://discord.me/rosehub")end
	screenGui.MainFrame.MainStuff.Home.DiscordInvite.text="Copied!"wait(1)
	screenGui.MainFrame.MainStuff.Home.DiscordInvite.text="Discord"end)
	_d(Color3.fromRGB(255,0,127),0,"Clear",screenGui.MainFrame.MainStuff.Executor,UDim2.new(0,5,1,
	-25),UDim2.new(0,100,0,20),Enum.Font.SourceSansBold,"Clear",Color3.fromRGB(255,255,255),14,0,function()
	screenGui.MainFrame.MainStuff.Executor.InputHolder.Input.Text=""end)
	bc(Color3.fromRGB(255,255,255),0,"InputHolder",screenGui.MainFrame.MainStuff.Executor,UDim2.new(0,5,0,5),UDim2.new(0,205,0,205),UDim2.new(0,0,0,0),1,0)
	dc(Color3.fromRGB(255,0,128),1,true,"Input",screenGui.MainFrame.MainStuff.Executor.InputHolder,UDim2.new(0,0,0,0),UDim2.new(1,0,1,0),Enum.Font.Fantasy,"",Color3.fromRGB(255,255,255),14,true,Enum.TextYAlignment.Top,0,"Paste/Type Scripts Here",Enum.TextXAlignment.Left)
	local a_a=screenGui.MainFrame.MainStuff.Executor.InputHolder;local b_a=a_a.Input;local c_a=false;b_a.ClearTextOnFocus=false
	b_a.Changed:connect(function(caa)
	if
	caa=="Text"then
	a_a.CanvasSize=UDim2.new(1,-10,0,b_a.TextBounds.Y+b_a.TextSize)
	if
	b_a.TextBounds.Y-a_a.CanvasPosition.Y==205 then
	a_a.CanvasPosition=Vector2.new(0,b_a.TextBounds.Y+205)c_a=false elseif c_a==false and b_a.TextBounds.Y==196 and
	a_a.CanvasPosition.Y==0 then a_a.CanvasPosition=Vector2.new(0,
	b_a.TextBounds.Y+205)c_a=true elseif c_a==true and
	b_a.TextBounds.Y<196 then c_a=false end end end)
	_d(Color3.fromRGB(255,0,127),0,"Execute",screenGui.MainFrame.MainStuff.Executor,UDim2.new(0.5,2,1,
	-25),UDim2.new(0,100,0,20),Enum.Font.SourceSansBold,"Execute",Color3.fromRGB(255,255,255),14,0,function()
	loadstring(screenGui.MainFrame.MainStuff.Executor.InputHolder.Input.Text)()end)
	cc(Color3.fromRGB(255,255,255),1,"RoseCredit",screenGui.MainFrame.MainStuff.Credits,UDim2.new(0.202,0,0.053,0),UDim2.new(0,128,0,32),Enum.Font.Fantasy,"0xRose\nHumanoid#1337",Color3.fromRGB(255,255,255),20,0,false)
	ad(Color3.fromRGB(255,255,255),1,1,"RoseDrops",screenGui.MainFrame.MainStuff.Credits.RoseCredit,false,UDim2.new(0,66,0,65),"rbxassetid://1342740333",UDim2.new(
	-0.25,0,-0.844,0),80)
	ad(Color3.fromRGB(255,255,255),1,1,"RoseDrops2",screenGui.MainFrame.MainStuff.Credits.RoseCredit,false,UDim2.new(0,66,0,65),"rbxassetid://1342740333",UDim2.new(0.891,0,4.438,0),
	-40)
	cc(Color3.fromRGB(255,255,255),1,"ZwolfCredit",screenGui.MainFrame.MainStuff.Credits,UDim2.new(0.221,0,0.253,0),UDim2.new(0,120,0,30),Enum.Font.Fantasy,"Usingthisisfun\nZwolf#3762",Color3.fromRGB(255,255,255),20,1,false)
	ad(Color3.fromRGB(255,255,255),1,1,"RoseDrops3",screenGui.MainFrame.MainStuff.Credits.ZwolfCredit,false,UDim2.new(0,62,0,59),"rbxassetid://1342740333",UDim2.new(0.875,0,0,0),
	-10)
	ad(Color3.fromRGB(255,255,255),1,1,"ImageLabel",screenGui.MainFrame.MainStuff.Credits.ZwolfCredit,false,UDim2.new(0,70,0,60),"rbxassetid://1342740333",UDim2.new(
	-0.483,0,0.433,0),59)
	cc(Color3.fromRGB(255,255,255),1,"AlexCredit",screenGui.MainFrame.MainStuff.Credits,UDim2.new(0.191,0,0.469,0),UDim2.new(0,139,0,29),Enum.Font.Fantasy,"Alexflamer2\nAlex the Great#9740",Color3.fromRGB(255,255,255),20,1,false)
	cc(Color3.fromRGB(255,255,255),1,"DeanCredit",screenGui.MainFrame.MainStuff.Credits,UDim2.new(0.153,0,0.755,0),UDim2.new(0,139,0,40),Enum.Font.Fantasy,"Miya - Intro\nKiwi#4879",Color3.fromRGB(255,255,255),20,1,false)for caa,daa in
	pairs(screenGui.MainFrame.MainStuff.Credits:GetDescendants())do
	if daa.ClassName=="ImageLabel"then daa.ImageTransparency=1 end end
	screenGui.MainFrame.Size=UDim2.new(0,0,0,40)
	local function d_a()create={}
	local function caa(daa)if type(daa)~='string'then return end
	return
	function(_ba)_ba=_ba or{}
	local aba=Instance.new(daa)local bba=nil
	for cba,dba in pairs(_ba)do
	if type(cba)=='string'then aba[cba]=dba elseif type(cba)=='number'then if
	type(dba)~='userdata'then break end;dba.Parent=aba elseif type(cba)=='table'and
	cba.__eventname then if type(dba)~='function'then break end
	aba[cba.__eventname]:connect(dba)elseif cba==Create then if type(dba)~='function'then break elseif bba then break end
	bba=dba else break end end;if bba then bba(aba)end;return aba end end
	Create=setmetatable({},{__call=function(daa,...)return caa(...)end})
	Create.Event=function(daa)return{__eventname=daa}end end
	local function _aa()
	Create'BlurEffect'{Parent=workspace.CurrentCamera,Size=0,[Create]=function(caa)blur=caa end}
	Create'ScreenGui'{Parent=game.CoreGui,Create'Frame'{Position=UDim2.new(0.5,-50,0.5,-50),Size=UDim2.new(0,100,0,100),BackgroundTransparency=1,Create'Sound'{SoundId='rbxassetid://752527668',Volume=1,[Create]=function(caa)
	sound01=caa end},Create'Sound'{SoundId='rbxassetid://541909867',Volume=1,[Create]=function(caa)
	sound02=caa end},Create'Sound'{SoundId='rbxassetid://541909763',Volume=1,[Create]=function(caa)
	sound03=caa end},Create'Sound'{SoundId='rbxassetid://147722270',Volume=1,[Create]=function(caa)
	sound04=caa end},Create'Frame'{Size=UDim2.new(0,0,0,100),Position=UDim2.new(0.5,0,0,0),BorderSizePixel=0,ZIndex=5,BackgroundColor3=Color3.fromRGB(255,35,110),[Create]=function(caa)
	frame01=caa end},Create'ImageLabel'{Image='rbxassetid://1491878692',BackgroundTransparency=1,Size=UDim2.new(0,100,0,100),Position=UDim2.new(0,0,0,
	-500),ZIndex=3,[Create]=function(caa)image01=caa end},Create'ImageLabel'{Image='rbxassetid://1491878477',BackgroundTransparency=1,ImageTransparency=1,Size=UDim2.new(0,100,0,100),Position=UDim2.new(0,0,0,0),ZIndex=4,[Create]=function(caa)
	image02=caa end},Create'ImageLabel'{Image='rbxassetid://1491878477',BackgroundTransparency=1,ImageTransparency=1,Size=UDim2.new(0,100,0,100),Position=UDim2.new(0,0,0,0),[Create]=function(caa)
	image03=caa end},Create'ImageLabel'{Image='rbxassetid://1491979712',BackgroundTransparency=1,ImageTransparency=1,Size=UDim2.new(0,100,0,100),Position=UDim2.new(0,0,0,0),[Create]=function(caa)
	image04=caa end},Create'ImageLabel'{Image='rbxassetid://1491935743',BackgroundTransparency=1,ImageTransparency=1,Size=UDim2.new(0,500,0,100),Position=UDim2.new(0.5,
	-250,0,0),ZIndex=6,[Create]=function(caa)image05=caa end},[Create]=function(caa)
	main=caa end},[Create]=function(caa)
	intro=caa end}end
	local function aaa()
	fadeIn=game:GetService("TweenService"):Create(blur,TweenInfo.new(2,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Size=24})
	fadeOut=game:GetService("TweenService"):Create(blur,TweenInfo.new(2,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Size=0})
	imageTwn01=game:GetService("TweenService"):Create(image04,TweenInfo.new(2,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Position=UDim2.new(0,
	-50,0,-50),Size=UDim2.new(0,200,0,200),ImageTransparency=1})
	imageTwn02=game:GetService("TweenService"):Create(image01,TweenInfo.new(2,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Position=UDim2.new(0,0,0,0),Rotation=
	-720})
	imageTwn03=game:GetService("TweenService"):Create(image05,TweenInfo.new(2,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{ImageTransparency=0})
	imageTwn04=game:GetService("TweenService"):Create(image02,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{ImageTransparency=0})end
	local function baa()imageTwn02:Play()sound02:Play()fadeIn:Play()
	wait(2)image04.ImageTransparency=0;imageTwn01:Play()
	sound01:Play()wait(2)imageTwn04:Play()wait(1)
	image01.ImageTransparency=1;image03.ImageTransparency=0
	image02:TweenPosition(UDim2.new(0,-250,0,0),"Out","Quint",2)
	image03:TweenPosition(UDim2.new(0,250,0,0),"Out","Quint",2)
	frame01:TweenSizeAndPosition(UDim2.new(0,500,0,100),UDim2.new(0.5,-250,0.5,-50),"Out","Quint",2)sound03:Play()wait(1.3)imageTwn03:Play()wait(2)
	main:TweenPosition(UDim2.new(0,5000,0.5,
	-50),"In","Quint",2)sound04:Play()wait(1.4)fadeOut:Play()wait(2)
	intro:Destroy()blur:Destroy()wait()d=true
	screenGui.open:TweenPosition(UDim2.new(0,0,0.5,0),'Out','Quad',0.6)wait(0.6)d=false end;d_a()_aa()aaa()baa()end)

end
coroutine.resume(coroutine.create(SCRIPT_OHOD88_FAKESCRIPT))
function SCRIPT_RJSC67_FAKESCRIPT() -- Walkspeed.Script 
	local script = Instance.new('Script')
	script.Parent = Walkspeed
	script.Parent.MouseButton1Click:connect(function()
		while wait(0.01) do
			game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass"Humanoid".WalkSpeed = 50
		end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_RJSC67_FAKESCRIPT))
function SCRIPT_UPWY84_FAKESCRIPT() -- NameESP.Script 
	local script = Instance.new('Script')
	script.Parent = NameESP
	
	script.Parent.MouseButton1Click:connect(function()
	Important={Players=game:GetService("Players"),Workspace=game:GetService("Workspace"),CoreGui=game:GetService("CoreGui")}local a=false
	function CreateESP(b)
	if b~=nil then local c=b.Character;if not c then return end;local d;do repeat wait()until
	c:FindFirstChild("Head")end;d=c.Head
	local _a=Instance.new("BillboardGui",Important.CoreGui)_a.Adornee=d;_a.ExtentsOffset=Vector3.new(0,1,0)
	_a.AlwaysOnTop=true;_a.Size=UDim2.new(0,5,0,5)
	_a.StudsOffset=Vector3.new(0,3,0)_a.Name="ESP_PLAYER_"..b.Name
	local aa=Instance.new("Frame",_a)aa.ZIndex=10;aa.BackgroundTransparency=1
	aa.Size=UDim2.new(1,0,1,0)local ba=Instance.new("TextLabel",aa)ba.Name="Name"
	ba.ZIndex=10;ba.Text=b.Name;ba.Visible=true
	ba.TextColor3=Color3.new(255,0,255)ba.BackgroundTransparency=1;ba.Size=UDim2.new(1,0,10,0)
	ba.Font=Enum.Font.SourceSansLight;ba.TextSize=20;ba.TextStrokeTransparency=.5 end end
	for b,c in pairs(Important.Players:GetChildren())do if game.GameId==
	1320186298 then return end;CreateESP(c)end end)

end
coroutine.resume(coroutine.create(SCRIPT_UPWY84_FAKESCRIPT))
function SCRIPT_XSQL78_FAKESCRIPT() -- BodyESP.Script 
	local script = Instance.new('Script')
	script.Parent = BodyESP
	
	script.Parent.MouseButton1Click:connect(function()
	local a=Instance.new("BillboardGui")a.Name=""a.AlwaysOnTop=true;a.LightInfluence=0
	a.Size=UDim2.new(1.75,0,1.75,0)local b=Instance.new("Frame",a)
	b.BackgroundColor3=Color3.fromRGB(255,0,255)b.Size=UDim2.new(1,0,1,0)b.BorderSizePixel=4
	b.BorderColor3=Color3.fromRGB(0,0,0)local c=a:Clone()local d=b:Clone()d.Parent=c
	d.BackgroundColor3=Color3.fromRGB(0,185,0)
	for _a,aa in
	pairs(game:GetService("Players"):GetPlayers())do
	if
	aa.Name~=game:GetService("Players").LocalPlayer.Name and aa.Character and
	aa.Character:FindFirstChild("Head")then
	a:Clone().Parent=aa.Character.Head end end end)

end
coroutine.resume(coroutine.create(SCRIPT_XSQL78_FAKESCRIPT))
function SCRIPT_KFHB81_FAKESCRIPT() -- Tweenified.Script 
	local script = Instance.new('Script')
	script.Parent = Tweenified
	Tweenified.Active=true;Tweenified.Draggable=true

end
coroutine.resume(coroutine.create(SCRIPT_KFHB81_FAKESCRIPT))
function SCRIPT_TZGG73_FAKESCRIPT() -- ScreenGui.MainActive 
	local script = Instance.new('Script')
	script.Parent = ScreenGui
	local aa=game.Players.LocalPlayer.PlayerGui.ScreenGui;local ba=aa:WaitForChild("Tweenified")
	local ca=aa:WaitForChild("MainFrame")local da=true;local _b=false
	ba.MouseButton1Down:connect(function()
	if _b==false then _b=true
	if da then
	local ab=Instance.new("Sound")ab.Parent=game.Workspace;ab.Name="ClickingNoise1"
	ab.SoundId="http://www.roblox.com/asset/?id=226892749"ab:Play()
	ca:TweenPosition(UDim2.new(0.636,0,0.158,0),"Out","Sine",2)ba.Text="Close"wait(0.5)
	workspace.ClickingNoise1:Destroy()wait(1)da=false else local ab=Instance.new("Sound")
	ab.Parent=game.Workspace;ab.Name="ClickingNoise2"
	ab.SoundId="http://www.roblox.com/asset/?id=226892749"ab:Play()
	ca:TweenPosition(UDim2.new(1,20,0.158,0),"Out","Sine",2)ba.Text="Open"wait(0.5)
	workspace.ClickingNoise2:Destroy()wait(1)da=true end;wait(0.2)_b=false end end)

end
coroutine.resume(coroutine.create(SCRIPT_TZGG73_FAKESCRIPT))