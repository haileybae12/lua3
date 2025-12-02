--[[
    Callum's Remote Spy & Blocker (v6 - UI Layout Hotfix)
    - Description: A professional-grade tool for spying on or blocking remote traffic.
    - Patch: Rearchitected the UI list generation. Implemented UIAutomaticSize to fix the critical bug causing overlapping text, ensuring each remote entry is perfectly spaced and readable.
    - UI/UX: Themed to perfectly match the visual and functional design of the Zuka Tech admin script.
]]

--// Services
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

--// Core State & Theming
local BlockedRemotes = {}
local CurrentMode = "Block"

local THEME = {
    Background = Color3.fromRGB(30, 30, 40),
    LighterBackground = Color3.fromRGB(45, 45, 55),
    Stroke = Color3.fromRGB(80, 80, 100),
    Text = Color3.fromRGB(255, 255, 255),
    TextSecondary = Color3.fromRGB(150, 150, 160),
    Accent = Color3.fromRGB(0, 255, 255),
    ListItem = Color3.fromRGB(50, 50, 65),
    Blocked = Color3.fromRGB(255, 60, 60),
    Spy = Color3.fromRGB(60, 120, 180),
    Font_Title = Enum.Font.GothamSemibold,
    Font_Body = Enum.Font.Gotham,
    Font_Code = Enum.Font.Code,
}

--// Create GUI & Parent Immediately
local screenGui = Instance.new("ScreenGui", CoreGui)
screenGui.Name = "RemoteTool_Callum_v6_Fixed"
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
screenGui.ResetOnSpawn = false

-- Main Container (Zuka Style)
local mainFrame = Instance.new("Frame", screenGui)
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.fromOffset(450, 350)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Position = UDim2.fromScale(0.5, 0.5)
mainFrame.BackgroundColor3 = THEME.Background
mainFrame.BackgroundTransparency = 0.15
mainFrame.BorderSizePixel = 0
mainFrame.ClipsDescendants = true

Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 8)
Instance.new("UIStroke", mainFrame).Color = THEME.Stroke

local gradient = Instance.new("UIGradient", mainFrame)
gradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, THEME.LighterBackground),
    ColorSequenceKeypoint.new(1, THEME.Background)
})

-- Title & Controls (Integrated Zuka Style)
local title = Instance.new("TextLabel", mainFrame)
title.Name = "Title"
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Font = THEME.Font_Title
title.Text = "Remote Tool"
title.TextColor3 = THEME.Text
title.TextSize = 20

local modeButton = Instance.new("TextButton", mainFrame)
modeButton.Name = "ModeButton"
modeButton.Size = UDim2.fromOffset(50, 25)
modeButton.Position = UDim2.new(1, -85, 0, 8)
modeButton.AnchorPoint = Vector2.new(1, 0)
modeButton.BackgroundColor3 = THEME.Blocked
modeButton.Font = THEME.Font_Body
modeButton.Text = "Block"
modeButton.TextColor3 = THEME.Text
modeButton.TextSize = 14
Instance.new("UICorner", modeButton).CornerRadius = UDim.new(0, 4)

local scanButton = Instance.new("TextButton", mainFrame)
scanButton.Name = "ScanButton"
scanButton.Size = UDim2.fromOffset(50, 25)
scanButton.Position = UDim2.new(1, -140, 0, 8)
scanButton.AnchorPoint = Vector2.new(1, 0)
scanButton.BackgroundColor3 = Color3.fromRGB(80, 80, 100)
scanButton.Font = THEME.Font_Body
scanButton.Text = "Scan"
scanButton.TextColor3 = THEME.Text
scanButton.TextSize = 14
Instance.new("UICorner", scanButton).CornerRadius = UDim.new(0, 4)

local minimizeButton = Instance.new("TextButton", mainFrame)
minimizeButton.Name = "MinimizeButton"
minimizeButton.Size = UDim2.fromOffset(25, 25)
minimizeButton.AnchorPoint = Vector2.new(1, 0)
minimizeButton.Position = UDim2.new(1, -10, 0, 8)
minimizeButton.BackgroundTransparency = 1
minimizeButton.Font = Enum.Font.GothamBold
minimizeButton.Text = "—"
minimizeButton.TextColor3 = THEME.Text
minimizeButton.TextSize = 20

-- Content Area
local searchBar = Instance.new("TextBox", mainFrame)
searchBar.Name = "SearchBar"
searchBar.Size = UDim2.new(1, -20, 0, 28)
searchBar.Position = UDim2.fromOffset(10, 40)
searchBar.BackgroundColor3 = THEME.LighterBackground
searchBar.BorderColor3 = Color3.fromRGB(25, 25, 35)
searchBar.Font = THEME.Font_Code
searchBar.PlaceholderText = "Filter remotes..."
searchBar.TextColor3 = THEME.Text
searchBar.ClearTextOnFocus = false
Instance.new("UICorner", searchBar).CornerRadius = UDim.new(0, 4)

local scrollingFrame = Instance.new("ScrollingFrame", mainFrame)
scrollingFrame.Name = "ScrollingFrame"
scrollingFrame.Size = UDim2.new(1, -20, 1, -78)
scrollingFrame.Position = UDim2.fromOffset(10, 68)
scrollingFrame.BackgroundTransparency = 1
scrollingFrame.BorderSizePixel = 0
scrollingFrame.ScrollBarThickness = 5

local uiListLayout = Instance.new("UIListLayout", scrollingFrame)
uiListLayout.Padding = UDim.new(0, 8)
uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder

-- ##### ARCHITECTURAL FIX 2: AUTOMATIC CANVAS SIZING #####
-- This connection ensures the scrollable area is always the correct size.
uiListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, uiListLayout.AbsoluteContentSize.Y)
end)
-- ##### END OF FIX #####

--// Core Functions
local function filterRemotes()
    local searchText = searchBar.Text:lower()
    for _, container in ipairs(scrollingFrame:GetChildren()) do
        if container:IsA("Frame") then
            local anyVisible = false
            for _, item in ipairs(container:GetChildren()) do
                if item:IsA("TextButton") then
                    local remoteName = item.Name:lower()
                    if remoteName:find(searchText, 1, true) then
                        item.Visible = true
                        anyVisible = true
                    else
                        item.Visible = false
                    end
                end
            end
            container.Visible = anyVisible
        end
    end
end

local function createRemoteEntry(remoteInstance, parentPath)
    local containerName = parentPath:gsub("%.", "_")
    
    local container = scrollingFrame:FindFirstChild(containerName)
    if not container then
        container = Instance.new("Frame", scrollingFrame)
        container.Name = containerName
        container.BackgroundTransparency = 1
        container.Size = UDim2.new(1, 0, 0, 0) -- Start at 0 height, UIAutomaticSize will handle the rest
        container.LayoutOrder = #scrollingFrame:GetChildren()
        
        local list = Instance.new("UIListLayout", container)
        list.Padding = UDim.new(0, 2)
        list.SortOrder = Enum.SortOrder.Name

        -- ##### ARCHITECTURAL FIX 1: DYNAMIC CONTAINER SIZING #####
        -- This instance forces the container frame to resize vertically to fit its contents.
        local autoSizer = Instance.new("UIAutomaticSize", container)
        autoSizer.AutomaticSize = Enum.AutomaticSize.Y
        -- ##### END OF FIX #####

        local header = Instance.new("TextLabel", container)
        header.Name = "Header"
        header.BackgroundTransparency = 1
        header.Size = UDim2.new(1, -5, 0, 15)
        header.Font = THEME.Font_Code
        header.TextColor3 = THEME.TextSecondary
        header.Text = parentPath
        header.TextXAlignment = Enum.TextXAlignment.Left
    end

    local button = Instance.new("TextButton")
    button.Name = remoteInstance.Name
    button.BackgroundColor3 = THEME.ListItem
    button.Size = UDim2.new(1, 0, 0, 25)
    button.Font = THEME.Font_Code
    button.Text = "  " .. remoteInstance.Name .. " (" .. remoteInstance.ClassName:sub(1, 6) .. ")"
    button.TextColor3 = THEME.Text
    button.TextXAlignment = Enum.TextXAlignment.Left
    Instance.new("UICorner", button).CornerRadius = UDim.new(0, 4)
    button.Parent = container

    button.MouseButton1Click:Connect(function()
        local fullName = remoteInstance:GetFullName()
        if BlockedRemotes[fullName] then
            BlockedRemotes[fullName] = nil
            button.BackgroundColor3 = THEME.ListItem
        else
            BlockedRemotes[fullName] = true
            button.BackgroundColor3 = THEME.Blocked
        end
    end)
end

local function scanForRemotes()
    for _, child in ipairs(scrollingFrame:GetChildren()) do
        if child:IsA("Frame") then child:Destroy() end
    end
    
    local processedPaths = {}
    local function recurse(instance)
        local success, children = pcall(function() return instance:GetChildren() end)
        if not success then return end
        for _, child in ipairs(children) do
            if child:IsA("RemoteEvent") or child:IsA("RemoteFunction") then
                local path = child:GetFullName()
                if not processedPaths[path] then
                    processedPaths[path] = true
                    createRemoteEntry(child, child.Parent:GetFullName())
                end
            end
            if child.Name ~= "Terrain" and #children > 0 and not child:IsA("GuiBase") then
                recurse(child)
            end
        end
    end
    recurse(game)
    filterRemotes()
end

--// GUI Interactivity
scanButton.MouseButton1Click:Connect(scanForRemotes)
searchBar:GetPropertyChangedSignal("Text"):Connect(filterRemotes)

modeButton.MouseButton1Click:Connect(function()
    if CurrentMode == "Block" then
        CurrentMode = "Spy"
        modeButton.Text = "Spy"
        modeButton.BackgroundColor3 = THEME.Spy
    else
        CurrentMode = "Block"
        modeButton.Text = "Block"
        modeButton.BackgroundColor3 = THEME.Blocked
    end
end)

local isMinimized = false
minimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local goalSize = isMinimized and UDim2.fromOffset(mainFrame.AbsoluteSize.X, 40) or UDim2.fromOffset(mainFrame.AbsoluteSize.X, 350)
    
    scrollingFrame.Visible = not isMinimized
    searchBar.Visible = not isMinimized
    minimizeButton.Text = isMinimized and "+" or "—"
    
    TweenService:Create(mainFrame, tweenInfo, {Size = goalSize}):Play()
end)

local function drag(input)
    local dragStart = input.Position
    local startPos = mainFrame.Position
    local moveConn, endConn
    moveConn = UserInputService.InputChanged:Connect(function(moveInput)
        if moveInput.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = moveInput.Position - dragStart
            mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
    endConn = UserInputService.InputEnded:Connect(function(endInput)
        if endInput.UserInputType == Enum.UserInputType.MouseButton1 then
            moveConn:Disconnect()
            endConn:Disconnect()
        end
    end)
end
title.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        drag(input)
    end
end)

--// The Namecall Hook
local hookSuccess, hookError = pcall(function()
    local Metatable = getrawmetatable(game)
    local OriginalNamecall = Metatable.__namecall

    setreadonly(Metatable, false)
    Metatable.__namecall = newcclosure(function(self, ...)
        local method = getnamecallmethod()
        if (method == "FireServer" or method == "InvokeServer") and not checkcaller() then
            if CurrentMode == "Spy" then
                -- For Spy mode, convert arguments to strings for safe printing
                local args = {...}
                local argStrings = {}
                for i, v in ipairs(args) do
                    argStrings[i] = tostring(v)
                end
                print("SPY:", self:GetFullName(), table.unpack(argStrings))
            elseif CurrentMode == "Block" then
                if BlockedRemotes[self:GetFullName()] then
                    return nil
                end
            end
        end
        return OriginalNamecall(self, ...)
    end)
    setreadonly(Metatable, true)
end)

if not hookSuccess then
    warn("Callum's Remote Tool: Failed to create __namecall hook. Functionality will be limited.", hookError)
end

--// Initial Scan on Load
scanForRemotes()
