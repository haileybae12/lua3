--[[
    Callum's Remote Spy & Blocker (v2 - Robust)
    - Description: A GUI-based tool to dynamically find and block RemoteEvents and RemoteFunctions.
    - Changes: Ensured GUI always appears by parenting early and wrapping the hook in a pcall for stability.
]]

--// Services & Core Variables
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")

local BlockedRemotes = {} -- Using a dictionary for O(1) lookups

--// Create the GUI & Parent Immediately
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "RemoteBlocker_Callum_v2"
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
screenGui.ResetOnSpawn = false
-- Parent the GUI right away to ensure it always appears.
screenGui.Parent = CoreGui

local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
mainFrame.BorderColor3 = Color3.fromRGB(80, 80, 100)
mainFrame.BorderSizePixel = 2
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
mainFrame.Size = UDim2.new(0, 400, 0, 300)
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

local titleBar = Instance.new("Frame")
titleBar.Name = "TitleBar"
titleBar.BackgroundColor3 = Color3.fromRGB(80, 80, 100)
titleBar.BorderSizePixel = 0
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.Parent = mainFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "TitleLabel"
titleLabel.BackgroundTransparency = 1
titleLabel.Size = UDim2.new(1, -100, 1, 0)
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Text = "Remote Spy & Blocker"
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Position = UDim2.new(0, 10, 0, 0)
titleLabel.Parent = titleBar

local refreshButton = Instance.new("TextButton")
refreshButton.Name = "RefreshButton"
refreshButton.BackgroundColor3 = Color3.fromRGB(100, 100, 120)
refreshButton.Size = UDim2.new(0, 50, 0, 20)
refreshButton.Position = UDim2.new(1, -90, 0.5, -10)
refreshButton.Font = Enum.Font.SourceSans
refreshButton.Text = "Scan"
refreshButton.TextColor3 = Color3.fromRGB(255, 255, 255)
refreshButton.Parent = titleBar

local toggleButton = Instance.new("TextButton")
toggleButton.Name = "ToggleButton"
toggleButton.BackgroundColor3 = Color3.fromRGB(100, 100, 120)
toggleButton.Size = UDim2.new(0, 20, 0, 20)
toggleButton.Position = UDim2.new(1, -25, 0.5, -10)
toggleButton.Font = Enum.Font.SourceSansBold
toggleButton.Text = "-"
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.Parent = titleBar

local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Name = "RemoteList"
scrollingFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
scrollingFrame.BorderSizePixel = 0
scrollingFrame.Position = UDim2.new(0, 0, 0, 30)
scrollingFrame.Size = UDim2.new(1, 0, 1, -30)
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(120, 120, 140)
scrollingFrame.Parent = mainFrame

local uiListLayout = Instance.new("UIListLayout")
uiListLayout.Padding = UDim.new(0, 5)
uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uiListLayout.Parent = scrollingFrame

--// Core Functions
local function createRemoteButton(remoteInstance)
    local button = Instance.new("TextButton")
    button.Name = remoteInstance:GetFullName()
    button.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
    button.Size = UDim2.new(1, -10, 0, 25)
    button.Font = Enum.Font.Code
    button.Text = remoteInstance.Name .. " (" .. remoteInstance.ClassName .. ")"
    button.TextColor3 = Color3.fromRGB(220, 220, 220)
    button.Parent = scrollingFrame

    button.MouseButton1Click:Connect(function()
        if BlockedRemotes[remoteInstance.Name] then
            -- Unblock
            BlockedRemotes[remoteInstance.Name] = nil
            button.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
            button.TextColor3 = Color3.fromRGB(220, 220, 220)
        else
            -- Block
            BlockedRemotes[remoteInstance.Name] = true
            button.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
            button.TextColor3 = Color3.fromRGB(255, 255, 255)
        end
    end)
end

local function scanForRemotes()
    for _, child in ipairs(scrollingFrame:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end

    local foundRemotes = {}
    local function recurse(instance)
        local success, children = pcall(function() return instance:GetChildren() end)
        if not success then return end

        for _, child in ipairs(children) do
            if child:IsA("RemoteEvent") or child:IsA("RemoteFunction") then
                if not table.find(foundRemotes, child:GetFullName()) then
                    table.insert(foundRemotes, child:GetFullName())
                    createRemoteButton(child)
                end
            end
            if child.Name ~= "Terrain" and #children > 0 then
                recurse(child)
            end
        end
    end

    recurse(game)
end

--// GUI Interactivity
local isVisible = true
toggleButton.MouseButton1Click:Connect(function()
    isVisible = not isVisible
    scrollingFrame.Visible = isVisible
    mainFrame.Size = isVisible and UDim2.new(0, 400, 0, 300) or UDim2.new(0, 400, 0, 30)
    toggleButton.Text = isVisible and "-" or "+"
end)

refreshButton.MouseButton1Click:Connect(scanForRemotes)

--// The Namecall Hook (Protected Call)
local hookSuccess, hookError = pcall(function()
    local Metatable = getrawmetatable(game)
    local OriginalNamecall = Metatable.__namecall

    setreadonly(Metatable, false)
    Metatable.__namecall = newcclosure(function(self, ...)
        local method = getnamecallmethod()
        if (method == "FireServer" or method == "InvokeServer") and not checkcaller() then
            if BlockedRemotes[self.Name] then
                return nil
            end
        end
        return OriginalNamecall(self, ...)
    end)
    setreadonly(Metatable, true)
end)

if not hookSuccess then
    warn("Callum's Remote Blocker: Failed to create __namecall hook. Remote blocking will be disabled.", hookError)
end

--// Initial Scan
scanForRemotes()
