--[[
    Callum's Remote Spy & Blocker (v3 - Architect Edition)
    - Description: A professional-grade tool for spying on or blocking remote traffic.
    - Features: Spy/Block modes, live search filter, unique path-based blocking, and a grouped/hierarchical UI.
]]

--// Services
local CoreGui = game:GetService("CoreGui")

--// Core State
local BlockedRemotes = {} -- Uses remote:GetFullName() for precise blocking
local CurrentMode = "Block" -- Can be "Block" or "Spy"

--// Create GUI & Parent Immediately
local screenGui = Instance.new("ScreenGui", CoreGui)
screenGui.Name = "RemoteTool_Callum_v3"
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
screenGui.ResetOnSpawn = false

-- Main Container
local mainFrame = Instance.new("Frame", screenGui)
mainFrame.Name = "MainFrame"
mainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
mainFrame.BorderColor3 = Color3.fromRGB(80, 80, 100)
mainFrame.BorderSizePixel = 2
mainFrame.Position = UDim2.fromScale(0.5, 0.5)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Size = UDim2.new(0, 450, 0, 350)
mainFrame.Active = true
mainFrame.Draggable = true

-- Title Bar
local titleBar = Instance.new("Frame", mainFrame)
titleBar.Name = "TitleBar"
titleBar.BackgroundColor3 = Color3.fromRGB(80, 80, 100)
titleBar.BorderSizePixel = 0
titleBar.Size = UDim2.new(1, 0, 0, 30)

local titleLabel = Instance.new("TextLabel", titleBar)
titleLabel.Name = "TitleLabel"
titleLabel.BackgroundTransparency = 1
titleLabel.Size = UDim2.new(1, -150, 1, 0)
titleLabel.Font = Enum.Font.SourceSansSemibold
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Text = "Remote Tool v3"
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Position = UDim2.new(0, 10, 0, 0)

-- Control Buttons
local scanButton = Instance.new("TextButton", titleBar)
scanButton.Name = "ScanButton"
scanButton.BackgroundColor3 = Color3.fromRGB(100, 100, 120)
scanButton.Size = UDim2.new(0, 50, 0, 20)
scanButton.Position = UDim2.new(1, -140, 0.5, -10)
scanButton.Font = Enum.Font.SourceSans
scanButton.Text = "Scan"
scanButton.TextColor3 = Color3.fromRGB(255, 255, 255)

local modeButton = Instance.new("TextButton", titleBar)
modeButton.Name = "ModeButton"
modeButton.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
modeButton.Size = UDim2.new(0, 50, 0, 20)
modeButton.Position = UDim2.new(1, -85, 0.5, -10)
modeButton.Font = Enum.Font.SourceSans
modeButton.Text = "Block"
modeButton.TextColor3 = Color3.fromRGB(255, 255, 255)

local toggleButton = Instance.new("TextButton", titleBar)
toggleButton.Name = "ToggleButton"
toggleButton.BackgroundColor3 = Color3.fromRGB(100, 100, 120)
toggleButton.Size = UDim2.new(0, 20, 0, 20)
toggleButton.Position = UDim2.new(1, -25, 0.5, -10)
toggleButton.Font = Enum.Font.SourceSansBold
toggleButton.Text = "-"
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Content Area
local contentFrame = Instance.new("Frame", mainFrame)
contentFrame.Name = "ContentFrame"
contentFrame.BackgroundTransparency = 1
contentFrame.Position = UDim2.new(0, 0, 0, 30)
contentFrame.Size = UDim2.new(1, 0, 1, -30)

local searchBar = Instance.new("TextBox", contentFrame)
searchBar.Name = "SearchBar"
searchBar.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
searchBar.BorderColor3 = Color3.fromRGB(25, 25, 35)
searchBar.Size = UDim2.new(1, -10, 0, 25)
searchBar.Position = UDim2.new(0.5, 0, 0, 5)
searchBar.AnchorPoint = Vector2.new(0.5, 0)
searchBar.Font = Enum.Font.Code
searchBar.PlaceholderText = "Filter by name..."
searchBar.TextColor3 = Color3.fromRGB(220, 220, 220)
searchBar.ClearTextOnFocus = false

local scrollingFrame = Instance.new("ScrollingFrame", contentFrame)
scrollingFrame.Name = "RemoteList"
scrollingFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
scrollingFrame.BorderSizePixel = 0
scrollingFrame.Position = UDim2.new(0, 5, 0, 35)
scrollingFrame.Size = UDim2.new(1, -10, 1, -40)
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(120, 120, 140)

local uiListLayout = Instance.new("UIListLayout", scrollingFrame)
uiListLayout.Padding = UDim.new(0, 8)
uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder

--// Core Functions
local function filterRemotes()
    local searchText = searchBar.Text:lower()
    for _, container in ipairs(scrollingFrame:GetChildren()) do
        if container:IsA("Frame") then
            local anyVisible = false
            for _, button in ipairs(container:GetChildren()) do
                if button:IsA("TextButton") then
                    local remoteName = button.Text:lower()
                    if remoteName:find(searchText, 1, true) then
                        button.Visible = true
                        anyVisible = true
                    else
                        button.Visible = false
                    end
                end
            end
            container.Visible = anyVisible
        end
    end
end

local function createRemoteEntry(remoteInstance, parentPath)
    local container = scrollingFrame:FindFirstChild(parentPath)
    if not container then
        container = Instance.new("Frame", scrollingFrame)
        container.Name = parentPath
        container.BackgroundTransparency = 1
        container.Size = UDim2.new(1, 0, 0, 0) -- Auto-size
        container.LayoutOrder = #scrollingFrame:GetChildren()
        
        local list = Instance.new("UIListLayout", container)
        list.Padding = UDim.new(0, 2)
        list.SortOrder = Enum.SortOrder.Name

        local header = Instance.new("TextLabel", container)
        header.Name = "Header"
        header.BackgroundTransparency = 1
        header.Size = UDim2.new(1, -5, 0, 15)
        header.Font = Enum.Font.Code
        header.TextColor3 = Color3.fromRGB(150, 150, 160)
        header.Text = parentPath
        header.TextXAlignment = Enum.TextXAlignment.Left
    end

    local button = Instance.new("TextButton")
    button.Name = remoteInstance.Name
    button.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
    button.Size = UDim2.new(1, -5, 0, 25)
    button.Font = Enum.Font.Code
    button.Text = "  " .. remoteInstance.Name .. " (" .. remoteInstance.ClassName:sub(1, 6) .. ")"
    button.TextColor3 = Color3.fromRGB(220, 220, 220)
    button.TextXAlignment = Enum.TextXAlignment.Left
    button.Parent = container

    button.MouseButton1Click:Connect(function()
        local fullName = remoteInstance:GetFullName()
        if BlockedRemotes[fullName] then
            BlockedRemotes[fullName] = nil
            button.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
            button.TextColor3 = Color3.fromRGB(220, 220, 220)
        else
            BlockedRemotes[fullName] = true
            button.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
            button.TextColor3 = Color3.fromRGB(255, 255, 255)
        end
    end)
end

local function scanForRemotes()
    for _, child in ipairs(scrollingFrame:GetChildren()) do
        if child:IsA("Frame") then
            child:Destroy()
        end
    end

    local function recurse(instance)
        local success, children = pcall(function() return instance:GetChildren() end)
        if not success then return end

        for _, child in ipairs(children) do
            if child:IsA("RemoteEvent") or child:IsA("RemoteFunction") then
                createRemoteEntry(child, child.Parent:GetFullName())
            end
            if child.Name ~= "Terrain" and #children > 0 and not child:IsA("GuiBase") then
                recurse(child)
            end
        end
    end
    recurse(game)
    filterRemotes() -- Apply filter after scan
end

--// GUI Interactivity
scanButton.MouseButton1Click:Connect(scanForRemotes)
searchBar:GetPropertyChangedSignal("Text"):Connect(filterRemotes)

modeButton.MouseButton1Click:Connect(function()
    if CurrentMode == "Block" then
        CurrentMode = "Spy"
        modeButton.Text = "Spy"
        modeButton.BackgroundColor3 = Color3.fromRGB(60, 120, 180)
    else
        CurrentMode = "Block"
        modeButton.Text = "Block"
        modeButton.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
    end
end)

local isVisible = true
toggleButton.MouseButton1Click:Connect(function()
    isVisible = not isVisible
    contentFrame.Visible = isVisible
    mainFrame.Size = isVisible and UDim2.new(0, 450, 0, 350) or UDim2.new(0, 450, 0, 30)
    toggleButton.Text = isVisible and "-" or "+"
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
                -- In Spy mode, we log the call and its arguments, then let it pass
                print("SPY:", self:GetFullName(), ...)
            elseif CurrentMode == "Block" then
                -- In Block mode, we check our precise list and block if necessary
                if BlockedRemotes[self:GetFullName()] then
                    return nil -- Blocked
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
