-- Zuka Aimbot Hub (Camera Lock Edition w/ GUI, FOV Circle, Head/Torso selector)
-- Place as a LocalScript in StarterGui for testing

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

-- Helpers
local function makeUICorner(obj, radius)
	local u = Instance.new("UICorner")
	u.CornerRadius = UDim.new(0, radius or 6)
	u.Parent = obj
end

local function safeDestroy(v)
	if v and v.Destroy then pcall(function() v:Destroy() end) end
end

-- ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "ZukaAimbotHub"
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = LocalPlayer:WaitForChild("PlayerGui")

-- Window
local win = Instance.new("Frame", gui)
win.Size = UDim2.new(0, 520, 0, 360)
win.Position = UDim2.new(0.5, -260, 0.5, -180)
win.BackgroundColor3 = Color3.fromRGB(18,18,18)
win.BorderSizePixel = 0
makeUICorner(win, 10)

-- Header
local header = Instance.new("Frame", win)
header.Size = UDim2.new(1, 0, 0, 48)
header.BackgroundTransparency = 1

local title = Instance.new("TextLabel", header)
title.Size = UDim2.new(1, -140, 1, 0)
title.Position = UDim2.new(0, 16, 0, 0)
title.BackgroundTransparency = 1
title.Font = Enum.Font.Code
title.TextSize = 20
title.TextXAlignment = Enum.TextXAlignment.Left
title.TextColor3 = Color3.fromRGB(255,180,180)
title.Text = "- Zuka Aimbot -"

local closeBtn = Instance.new("TextButton", header)
closeBtn.Size = UDim2.new(0, 110, 0, 28)
closeBtn.Position = UDim2.new(1, -124, 0, 10)
closeBtn.BackgroundColor3 = Color3.fromRGB(153,0,0)
closeBtn.TextColor3 = Color3.fromRGB(255,255,255)
closeBtn.Font = Enum.Font.Code
closeBtn.TextSize = 14
closeBtn.Text = "Close"
makeUICorner(closeBtn, 8)

closeBtn.MouseButton1Click:Connect(function()
	TweenService:Create(win, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = UDim2.new(0, 0, 0, 0),
		Position = UDim2.new(0.5, 0, 0.5, 0)
	}):Play()
	task.wait(0.25)
	safeDestroy(gui)
end)

-- Main content
local page = Instance.new("Frame", win)
page.Size = UDim2.new(1, -24, 1, -64)
page.Position = UDim2.new(0, 12, 0, 56)
page.BackgroundTransparency = 1

local titleLabel = Instance.new("TextLabel", page)
titleLabel.Size = UDim2.new(1, -20, 0, 36)
titleLabel.Position = UDim2.new(0, 10, 0, 10)
titleLabel.BackgroundTransparency = 1
titleLabel.TextColor3 = Color3.fromRGB(200,220,255)
titleLabel.Font = Enum.Font.Code
titleLabel.TextSize = 22
titleLabel.Text = "Aimbot Settings"
titleLabel.TextXAlignment = Enum.TextXAlignment.Left

local desc = Instance.new("TextLabel", page)
desc.Size = UDim2.new(1, -20, 0, 22)
desc.Position = UDim2.new(0, 10, 0, 50)
desc.BackgroundTransparency = 1
desc.TextColor3 = Color3.fromRGB(180,180,200)
desc.Font = Enum.Font.Code
desc.TextSize = 15
desc.Text = "Toggle aimbot and configure aim mode/part."
desc.TextXAlignment = Enum.TextXAlignment.Left

-- Key setting
local keyLabel = Instance.new("TextLabel", page)
keyLabel.Size = UDim2.new(0, 120, 0, 22)
keyLabel.Position = UDim2.new(0, 20, 0, 90)
keyLabel.BackgroundTransparency = 1
keyLabel.Text = "Toggle Key:"
keyLabel.TextColor3 = Color3.fromRGB(180,220,255)
keyLabel.Font = Enum.Font.Code
keyLabel.TextSize = 15
keyLabel.TextXAlignment = Enum.TextXAlignment.Left

local keyBox = Instance.new("TextBox", page)
keyBox.Size = UDim2.new(0, 100, 0, 22)
keyBox.Position = UDim2.new(0, 140, 0, 90)
keyBox.BackgroundColor3 = Color3.fromRGB(40,40,40)
keyBox.TextColor3 = Color3.fromRGB(255,255,255)
keyBox.Font = Enum.Font.Code
keyBox.TextSize = 15
keyBox.Text = "MouseButton2"
makeUICorner(keyBox, 6)

-- Mode toggle button
local modeBtn = Instance.new("TextButton", page)
modeBtn.Size = UDim2.new(0, 180, 0, 28)
modeBtn.Position = UDim2.new(0, 260, 0, 90)
modeBtn.BackgroundColor3 = Color3.fromRGB(40,40,40)
modeBtn.TextColor3 = Color3.fromRGB(255,255,255)
modeBtn.Font = Enum.Font.Code
modeBtn.TextSize = 14
modeBtn.Text = "Mode: PRESS"
makeUICorner(modeBtn, 6)

local holdMode = false
modeBtn.MouseButton1Click:Connect(function()
	holdMode = not holdMode
	modeBtn.Text = "Mode: " .. (holdMode and "HOLD" or "PRESS")
end)

-- Aim part dropdown
local partLabel = Instance.new("TextLabel", page)
partLabel.Size = UDim2.new(0, 120, 0, 22)
partLabel.Position = UDim2.new(0, 20, 0, 130)
partLabel.BackgroundTransparency = 1
partLabel.Text = "Aim Part:"
partLabel.TextColor3 = Color3.fromRGB(180,220,255)
partLabel.Font = Enum.Font.Code
partLabel.TextSize = 15
partLabel.TextXAlignment = Enum.TextXAlignment.Left

local partDropdown = Instance.new("TextButton", page)
partDropdown.Size = UDim2.new(0, 100, 0, 22)
partDropdown.Position = UDim2.new(0, 140, 0, 130)
partDropdown.BackgroundColor3 = Color3.fromRGB(40,40,40)
partDropdown.TextColor3 = Color3.fromRGB(255,255,255)
partDropdown.Font = Enum.Font.Code
partDropdown.TextSize = 15
partDropdown.Text = "Head"
makeUICorner(partDropdown, 6)

local aimPart = "Head"
partDropdown.MouseButton1Click:Connect(function()
	aimPart = (aimPart == "Head") and "Torso" or "Head"
	partDropdown.Text = aimPart
end)

-- Status
local status = Instance.new("TextLabel", page)
status.Size = UDim2.new(1, -20, 0, 22)
status.Position = UDim2.new(0, 10, 0, 170)
status.BackgroundTransparency = 1
status.TextColor3 = Color3.fromRGB(180,220,180)
status.Font = Enum.Font.Code
status.TextSize = 15
status.Text = "Aimbot ready."
status.TextXAlignment = Enum.TextXAlignment.Left

-- Core vars
local aiming = false
local fovRadius = 100
local target = nil

-- FOV Circle
local fovCircle = Drawing and Drawing.new("Circle")
if fovCircle then
	fovCircle.Thickness = 1.5
	fovCircle.NumSides = 64
	fovCircle.Radius = fovRadius
	fovCircle.Filled = false
	fovCircle.Color = Color3.fromRGB(255, 60, 60)
	fovCircle.Visible = false
end

-- Status update
local function setStatus()
	status.Text = aiming and ("Aimbot ON (" .. aimPart .. ")") or "Aimbot OFF"
	if fovCircle then fovCircle.Visible = aiming end
end

-- Input logic
local function toggleAimbot()
	aiming = not aiming
	setStatus()
end

UIS.InputBegan:Connect(function(input, processed)
	if processed then return end
	local key = keyBox.Text:upper()
	if holdMode then
		if (input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode.Name:upper() == key)
			or (input.UserInputType.Name:upper() == key) then
			aiming = true
			setStatus()
		end
	else
		if (input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode.Name:upper() == key)
			or (input.UserInputType.Name:upper() == key) then
			toggleAimbot()
		end
	end
end)

UIS.InputEnded:Connect(function(input)
	if not holdMode then return end
	local key = keyBox.Text:upper()
	if (input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode.Name:upper() == key)
		or (input.UserInputType.Name:upper() == key) then
		aiming = false
		setStatus()
	end
end)

-- Targeting functions (placeholder for testing)
local function getClosestToCursor()
	local closest, dist = nil, fovRadius
	local mousePos = UIS:GetMouseLocation()
	for _,plr in pairs(Players:GetPlayers()) do
		if plr ~= LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
			local part = plr.Character:FindFirstChild(aimPart) or plr.Character:FindFirstChild("HumanoidRootPart")
			local pos, onScreen = Camera:WorldToViewportPoint(part.Position)
			if onScreen then
				local magnitude = (Vector2.new(pos.X, pos.Y) - mousePos).Magnitude
				if magnitude < dist then
					closest = part
					dist = magnitude
				end
			end
		end
	end
	return closest
end

-- Loop
RunService.RenderStepped:Connect(function()
	local mousePos = UIS:GetMouseLocation()
	if fovCircle then
		fovCircle.Position = mousePos
	end

	if aiming then
		target = getClosestToCursor()
		if target then
			local targetPos = target.Position
			local camDir = (targetPos - Camera.CFrame.Position).Unit
			local current = Camera.CFrame
			-- smooth lerp
			local newCF = current:Lerp(CFrame.new(current.Position, current.Position + camDir), 0.25)
			Camera.CFrame = newCF
		end
	end
end)

-- Intro tween
win.Position = UDim2.new(0.5, -260, 0.5, -400)
TweenService:Create(win, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
	Position = UDim2.new(0.5, -260, 0.5, -180)
}):Play()
