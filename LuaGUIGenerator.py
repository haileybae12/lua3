import sys
from PyQt5.QtWidgets import (
    QApplication, QMainWindow, QWidget, QVBoxLayout, 
    QHBoxLayout, QLabel, QLineEdit, QPushButton, 
    QTextEdit, QGroupBox, QMessageBox, QComboBox
)
from PyQt5.QtGui import QFont

class LuaUIGenerator(QMainWindow):
    """
    A Python GUI for generating advanced, modular Roblox Lua UI code,
    including a Frame container, a nested TextLabel header, and an interactive TextButton.
    """
    
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Roblox Lua UI Architect (Interactive Builder)")
        self.setGeometry(100, 100, 800, 950) # Expanded for new inputs
        self._setup_ui()

    def _setup_ui(self):
        central_widget = QWidget()
        self.setCentralWidget(central_widget)
        main_layout = QVBoxLayout(central_widget)

        # --- 1. Frame/Container Properties ---
        input_group = QGroupBox("1. Container Properties (Frame)")
        input_layout = QVBoxLayout(input_group)
        
        self.name_input = QLineEdit("SettingsPanel")
        input_layout.addWidget(QLabel("Container Name:"))
        input_layout.addWidget(self.name_input)

        # Size Input (UDim2 scale)
        size_layout = QHBoxLayout()
        self.size_x_input = QLineEdit("0.4")
        self.size_y_input = QLineEdit("0.6")
        size_layout.addWidget(QLabel("Size X (Scale 0-1):"))
        size_layout.addWidget(self.size_x_input)
        size_layout.addWidget(QLabel("Size Y (Scale 0-1):"))
        size_layout.addWidget(self.size_y_input)
        input_layout.addLayout(size_layout)

        # Color Input (RGB)
        color_layout = QHBoxLayout()
        self.color_r_input = QLineEdit("50")
        self.color_g_input = QLineEdit("50")
        self.color_b_input = QLineEdit("50")
        color_layout.addWidget(QLabel("Background Color R (0-255):"))
        color_layout.addWidget(self.color_r_input)
        color_layout.addWidget(QLabel("G:"))
        color_layout.addWidget(self.color_g_input)
        color_layout.addWidget(QLabel("B:"))
        color_layout.addWidget(self.color_b_input)
        input_layout.addLayout(color_layout)
        
        # AnchorPoint Input
        anchor_group = QGroupBox("AnchorPoint (0.5/0.5 for perfect centering)")
        anchor_layout = QHBoxLayout(anchor_group)
        self.anchor_x_input = QLineEdit("0.5")
        self.anchor_y_input = QLineEdit("0.5")
        anchor_layout.addWidget(QLabel("Anchor X (0-1):"))
        anchor_layout.addWidget(self.anchor_x_input)
        anchor_layout.addWidget(QLabel("Anchor Y (0-1):"))
        anchor_layout.addWidget(self.anchor_y_input)
        input_layout.addWidget(anchor_group)

        main_layout.addWidget(input_group)

        # --- 2. Nested TextLabel Properties ---
        text_group = QGroupBox("2. Nested TextLabel Properties (Child Header)")
        text_layout = QVBoxLayout(text_group)
        
        # Text Content
        self.text_content_input = QLineEdit("SYSTEM OVERVIEW")
        text_layout.addWidget(QLabel("Label Text Content:"))
        text_layout.addWidget(self.text_content_input)
        
        # Text Size
        self.text_size_input = QLineEdit("30") 
        text_layout.addWidget(QLabel("Label Text Size (Pixels):"))
        text_layout.addWidget(self.text_size_input)
        
        # Font Dropdown
        self.font_combo = QComboBox()
        self.fonts = [
            "SourceSansBold", "Arial", "Gothic", "Fantasy",
            "SciFi", "Highway", "Legacy"
        ]
        for font_name in self.fonts:
            self.font_combo.addItem(font_name)
        self.font_combo.setCurrentText("SourceSansBold") 
        text_layout.addWidget(QLabel("Font Selection (Enum.Font):"))
        text_layout.addWidget(self.font_combo)
        
        # Text Color (RGB)
        text_color_layout = QHBoxLayout()
        self.text_r_input = QLineEdit("255")
        self.text_g_input = QLineEdit("255")
        self.text_b_input = QLineEdit("0")
        text_color_layout.addWidget(QLabel("Text Color R (0-255):"))
        text_color_layout.addWidget(self.text_r_input)
        text_color_layout.addWidget(QLabel("G:"))
        text_color_layout.addWidget(self.text_g_input)
        text_color_layout.addWidget(QLabel("B:"))
        text_color_layout.addWidget(self.text_b_input)
        text_layout.addLayout(text_color_layout)

        main_layout.addWidget(text_group)
        
        # --- 3. Nested TextButton Properties ---
        button_group = QGroupBox("3. Nested TextButton Properties (Interactive Element)")
        button_layout = QVBoxLayout(button_group)

        # Button Name & Text
        self.button_name_input = QLineEdit("ToggleAimbotButton")
        self.button_text_input = QLineEdit("Toggle Aimbot (F)")
        button_layout.addWidget(QLabel("Button Instance Name:"))
        button_layout.addWidget(self.button_name_input)
        button_layout.addWidget(QLabel("Button Display Text:"))
        button_layout.addWidget(self.button_text_input)

        # Button Size (relative to parent Frame)
        button_size_layout = QHBoxLayout()
        self.button_size_x_input = QLineEdit("0.9")
        self.button_size_y_input = QLineEdit("0.1")
        button_size_layout.addWidget(QLabel("Size X (Scale):"))
        button_size_layout.addWidget(self.button_size_x_input)
        button_size_layout.addWidget(QLabel("Size Y (Scale):"))
        button_size_layout.addWidget(self.button_size_y_input)
        button_layout.addLayout(button_size_layout)
        
        button_layout.addWidget(QLabel("Button will be centered and positioned 0.15 scale down from the top."))
        
        main_layout.addWidget(button_group)

        # --- Control and Output Section ---
        
        self.generate_button = QPushButton("Generate Advanced Lua Code")
        self.generate_button.clicked.connect(self.generate_lua_code)
        main_layout.addWidget(self.generate_button)

        self.output_text = QTextEdit()
        # Set a monospaced font for code readability
        font = QFont("Courier New", 10)
        self.output_text.setFont(font)
        self.output_text.setPlaceholderText("Generated Lua code will appear here...")
        main_layout.addWidget(self.output_text)
        
        main_layout.setStretch(4, 1) # Output section takes remaining space


    def generate_lua_code(self):
        """
        Gathers all properties and constructs the corresponding modular Lua script.
        """
        try:
            # --- 1. GATHER ALL PROPERTIES ---
            # Frame
            name = self.name_input.text()
            size_x = float(self.size_x_input.text())
            size_y = float(self.size_y_input.text())
            anchor_x = float(self.anchor_x_input.text())
            anchor_y = float(self.anchor_y_input.text())
            color_r = int(self.color_r_input.text())
            color_g = int(self.color_g_input.text())
            color_b = int(self.color_b_input.text())
            
            # TextLabel
            text_content = self.text_content_input.text()
            text_size = int(self.text_size_input.text())
            selected_font = self.font_combo.currentText()
            text_r = int(self.text_r_input.text())
            text_g = int(self.text_g_input.text())
            text_b = int(self.text_b_input.text())
            
            # TextButton
            button_name = self.button_name_input.text()
            button_text = self.button_text_input.text()
            button_size_x = float(self.button_size_x_input.text())
            button_size_y = float(self.button_size_y_input.text())
            
            # --- 2. SANITY CHECKS ---
            if not all(0 <= val <= 1 for val in [size_x, size_y, anchor_x, anchor_y, button_size_x, button_size_y]):
                raise ValueError("All Scale (0-1) and AnchorPoint values must be between 0.0 and 1.0.")
            if not all(0 <= c <= 255 for c in [color_r, color_g, color_b, text_r, text_g, text_b]):
                raise ValueError("All Color RGB values must be between 0 and 255.")


            # --- 3. ARCHITECT THE LUA CODE STRING ---
            
            # Calculate normalized color values (0-1) for Color3.new()
            norm_r, norm_g, norm_b = color_r/255, color_g/255, color_b/255
            text_norm_r, text_norm_g, text_norm_b = text_r/255, text_g/255, text_b/255
            
            # Calculate the button's centered X-position based on its size
            button_pos_x_scale = (1 - button_size_x) / 2 
            
            lua_code = f"""
--[[
    Advanced Lua UI Script generated by custom IDE.
    Place this LocalScript in StarterPlayer.StarterPlayerScripts or execute via exploit.
--]]

-- CORE SERVICES (Best Practice: Use game:GetService())
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local localPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()
local playerGui = localPlayer:WaitForChild("PlayerGui")

-- ARCHITECTURAL HELPER FUNCTION
-- This modular function handles Instance creation and property assignment cleanly.
local function createUIElement(className, properties, parent)
    local element = Instance.new(className)
    for propName, propValue in pairs(properties) do
        local success, err = pcall(function()
            element[propName] = propValue
        end)
        if not success then
            warn(string.format("[UI Builder] Failed to set property '%s' on %s: %s", propName, className, err))
        end
    end
    element.Parent = parent
    return element
end

-- 1. DEFINE FRAME PROPERTIES (Container)
local FrameProperties = {{
    Name = "{name}",
    
    -- SIZE & POSITION
    Size = UDim2.new({size_x}, 0, {size_y}, 0),
    AnchorPoint = Vector2.new({anchor_x}, {anchor_y}),
    Position = UDim2.new(0.5, 0, 0.5, 0), -- Positioned at the center of the screen
    
    -- APPEARANCE
    BackgroundColor3 = Color3.new({norm_r}, {norm_g}, {norm_b}),
    BorderSizePixel = 0,
    ZIndex = 2,
}}

-- 2. DEFINE TEXTLABEL PROPERTIES (Child Header)
local TextLabelProperties = {{
    Name = "HeaderLabel",
    
    -- TEXT PROPERTIES
    Text = "{text_content}",
    TextSize = {text_size},
    TextColor3 = Color3.new({text_norm_r}, {text_norm_g}, {text_norm_b}),
    Font = Enum.Font.{selected_font},
    TextScaled = false,
    TextXAlignment = Enum.TextXAlignment.Center,
    TextYAlignment = Enum.TextYAlignment.Top,
    
    -- LAYOUT
    Size = UDim2.new(1, 0, 0.15, 0), -- Full width, 15% height
    Position = UDim2.new(0, 0, 0, 0), 
    BackgroundTransparency = 1,
    ZIndex = 3,
}}

-- 3. DEFINE TEXTBUTTON PROPERTIES (Interactive Element)
local ButtonProperties = {{
    Name = "{button_name}",
    
    -- TEXT PROPERTIES
    Text = "{button_text} (INACTIVE)", -- Initial state text
    TextColor3 = Color3.new(1, 1, 1), -- White Text
    TextScaled = true, 
    Font = Enum.Font.SourceSansSemibold,
    
    -- LAYOUT: Positioned below the 0.15-height HeaderLabel
    Size = UDim2.new({button_size_x}, 0, {button_size_y}, 0), 
    Position = UDim2.new({button_pos_x_scale}, 0, 0.15, 0), 
    
    -- APPEARANCE
    BackgroundColor3 = Color3.new(0.6, 0.1, 0.1), -- Initial Red (Off) state
    BorderSizePixel = 0,
    ZIndex = 3, 
}}

-- 4. CREATE HIERARCHY
local screenGui = createUIElement("ScreenGui", {{Name = "CustomUIContainer"}}, playerGui)
local mainFrame = createUIElement("Frame", FrameProperties, screenGui)
local headerLabel = createUIElement("TextLabel", TextLabelProperties, mainFrame)

local toggleButton = createUIElement("TextButton", ButtonProperties, mainFrame)

-- 5. INTERACTIVITY / EXPLOIT LOGIC
-- Status Variable for the cheat (e.g., Aimbot)
local isEnabled = false
local runServiceConnection = nil -- Stores the active Heartbeat/RenderStepped connection

local function ToggleCheat()
    isEnabled = not isEnabled -- Toggle the state
    
    -- 5a. Visual Feedback
    if isEnabled then
        toggleButton.Text = "{button_text} (ACTIVE)"
        toggleButton.BackgroundColor3 = Color3.new(0.1, 0.6, 0.1) -- Green
    else
        toggleButton.Text = "{button_text} (INACTIVE)"
        toggleButton.BackgroundColor3 = Color3.new(0.6, 0.1, 0.1) -- Red
    end

    -- 5b. CORE EXPLOIT CONNECTION
    if isEnabled then
        print("[EXPLOIT] {button_name} activated. Starting run loop...")
        
        --[[ 
            *** USER CODE INSERTION POINT ***
            Connect your main exploit function here. 
            Example: runServiceConnection = RunService.Heartbeat:Connect(AimbotFunction)
        --]]
        
    else
        print("[EXPLOIT] {button_name} deactivated. Stopping run loop.")
        if runServiceConnection then 
            runServiceConnection:Disconnect()
            runServiceConnection = nil
        end
    end
end

toggleButton.MouseButton1Click:Connect(ToggleCheat)


print("UI Element '{name}' and all children loaded successfully.")
"""
            # 4. Display the generated code
            self.output_text.setText(lua_code.strip())

        except ValueError as e:
            QMessageBox.critical(self, "Input Error", str(e))
        except Exception as e:
             QMessageBox.critical(self, "Error", f"An unexpected error occurred: {e}")


if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = LuaUIGenerator()
    window.show()
    sys.exit(app.exec_())