loadstring(game:HttpGet("https://pastefy.app/USvO173G/raw"))()
-- 🔹 Attractive Draggable GUI with ON/OFF Indicator (no function)
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TPGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Create main frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 180, 0, 70)
frame.Position = UDim2.new(0.5, -90, 0.1, 0)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0
frame.AnchorPoint = Vector2.new(0.5, 0)
frame.Parent = screenGui
frame.Active = true
frame.Draggable = true

-- Add rounded corners + shadow
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = frame

local shadow = Instance.new("ImageLabel")
shadow.Name = "Shadow"
shadow.Parent = frame
shadow.BackgroundTransparency = 1
shadow.AnchorPoint = Vector2.new(0.5, 0.5)
shadow.Position = UDim2.new(0.5, 0, 0.5, 4)
shadow.Size = UDim2.new(1, 20, 1, 20)
shadow.Image = "rbxassetid://1316045217" -- soft shadow texture
shadow.ImageTransparency = 0.4
shadow.ZIndex = 0

-- Create title label
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 20)
title.Position = UDim2.new(0, 0, 0, 4)
title.BackgroundTransparency = 1
title.Text = "🧭 TP To Base"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.Parent = frame

-- Create toggle button
local button = Instance.new("TextButton")
button.Size = UDim2.new(1, -20, 0, 30)
button.Position = UDim2.new(0, 10, 0, 28)
button.BackgroundColor3 = Color3.fromRGB(40, 120, 255)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.GothamBold
button.TextSize = 18
button.Text = "Go to Base"
button.AutoButtonColor = true
button.Parent = frame

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 8)
buttonCorner.Parent = button

-- Indicator label
local indicator = Instance.new("TextLabel")
indicator.Size = UDim2.new(1, 0, 0, 20)
indicator.Position = UDim2.new(0, 0, 1, -18)
indicator.BackgroundTransparency = 1
indicator.TextColor3 = Color3.fromRGB(0, 255, 0)
indicator.Font = Enum.Font.GothamMedium
indicator.TextSize = 14
indicator.Text = "Status: ON"
indicator.Parent = frame

-- Toggle logic
local isOn = true
button.MouseButton1Click:Connect(function()
	isOn = not isOn
	if isOn then
		indicator.Text = "Status: ON"
		indicator.TextColor3 = Color3.fromRGB(0, 255, 0)
		button.BackgroundColor3 = Color3.fromRGB(40, 120, 255)
	else
		indicator.Text = "Status: OFF"
		indicator.TextColor3 = Color3.fromRGB(255, 70, 70)
		button.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
	end
end)
