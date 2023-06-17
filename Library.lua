if game.CoreGui:FindFirstChild("LibraryHub05481") then
  game.CoreGui.LibraryHub05481:Destroy()
end
--n
function createHub(namee)
local hub = Instance.new("ScreenGui")
local MainGUI = Instance.new("Frame")
local BACKGROUND = Instance.new("Frame")
local DropShadowHolder = Instance.new("Frame")
local DropShadow = Instance.new("ImageLabel")
local SideTab = Instance.new("Frame")
local Logo = Instance.new("ImageLabel")
local Frame = Instance.new("Frame")
local GameTitle = Instance.new("TextLabel")
local OpenHub = Instance.new("ImageButton")
hub.Name = "LibraryHub05481"
hub.Parent = game.CoreGui
hub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MainGUI.Name = "MainGUI"
MainGUI.Parent = hub
MainGUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainGUI.BackgroundTransparency = 1.000
MainGUI.BorderSizePixel = 0
MainGUI.Position = UDim2.new(0.288785011, 0, 0.254320979, 0)
MainGUI.Size = UDim2.new(0, 680, 0, 50)
BACKGROUND.Name = "BACKGROUND"
BACKGROUND.Parent = MainGUI
BACKGROUND.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
BACKGROUND.BackgroundTransparency = 0.100
BACKGROUND.BorderSizePixel = 0
BACKGROUND.Position = UDim2.new(-0.000500191934, 0, -0.00617308915, 0)
BACKGROUND.Size = UDim2.new(0, 683, 0, 408)
DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = BACKGROUND
DropShadowHolder.BackgroundTransparency = 1.000
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
DropShadowHolder.ZIndex = 0
DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1.000
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = 0
DropShadow.Image = "rbxassetid://6015897843"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.500
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
SideTab.Name = "SideTab"
SideTab.Parent = BACKGROUND
SideTab.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
SideTab.BorderSizePixel = 0
SideTab.Position = UDim2.new(-0.000275417784, 0, 0.00245112996, 0)
SideTab.Size = UDim2.new(0, 176, 0, 404)
Logo.Name = "Logo"
Logo.Parent = SideTab
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.Position = UDim2.new(0.0340909101, 0, 0.0280163828, 0)
Logo.Size = UDim2.new(0, 164, 0, 66)
Logo.Image = "http://www.roblox.com/asset/?id=12705497553"
Frame.Parent = BACKGROUND
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.268175781, 0, 0.0601960719, 0)
Frame.Size = UDim2.new(0, 490, 0, 2)
GameTitle.Name = "GameTitle"
GameTitle.Parent = MainGUI
GameTitle.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
GameTitle.BackgroundTransparency = 1.000
GameTitle.BorderSizePixel = 0
GameTitle.Position = UDim2.new(0.270576298, 0, 0, 0)
GameTitle.Size = UDim2.new(0, 240, 0, 27)
GameTitle.Font = Enum.Font.SourceSansSemibold
GameTitle.Text = namee
GameTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
GameTitle.TextSize = 16.000
GameTitle.TextXAlignment = Enum.TextXAlignment.Left
OpenHub.Name = "OpenHub"
OpenHub.Parent = BACKGROUND
OpenHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OpenHub.BackgroundTransparency = 1.000
OpenHub.Position = UDim2.new(0.95168376, 0, 0.00245098048, 0)
OpenHub.Size = UDim2.new(0, 23, 0, 23)
OpenHub.Image = "http://www.roblox.com/asset/?id=12498487469"
local PagesButton = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
PagesButton.Name = "PagesButton"
PagesButton.Parent = SideTab
PagesButton.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
PagesButton.BackgroundTransparency = 1.000
PagesButton.BorderSizePixel = 0
PagesButton.Position = UDim2.new(-0.000275351777, 0, 0.215368748, 0)
PagesButton.Size = UDim2.new(0, 176, 0, 319)
UIListLayout.Parent = PagesButton
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
local function VXEFO_fake_script()
	local script = Instance.new('LocalScript', MainGUI)
	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	local gui = script.Parent
	local dragging
	local dragInput
	local dragStart
	local startPos
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
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
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(VXEFO_fake_script)()
local function HPEE_fake_script() -- hub.LocalScript 
	local script = Instance.new('LocalScript', hub)
	local frame = script.Parent.MainGUI --in the .frame - you should need to change it what is your frame name.
	local hotkey = Enum.KeyCode.L
	local UIS = game:GetService("UserInputService")
	local open = true
	UIS.InputBegan:Connect(function(key, gp)
		if key.KeyCode == hotkey then
			if UIS:GetFocusedTextBox() == nil then
				if open == false then
					open = true 
					frame.Visible = open
				elseif open == true then
					open = false
					frame.Visible = open
				end
			end
		end
	end)
end
coroutine.wrap(HPEE_fake_script)()

return hub
end

function createPage(hub1, name, imageurl)
local MiscButton = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
MiscButton.Name = "MiscButton"
MiscButton.Parent = hub1.MainGUI.BACKGROUND.SideTab.PagesButton
MiscButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MiscButton.BackgroundTransparency = 1.000
MiscButton.BorderSizePixel = 0
MiscButton.Position = UDim2.new(0.00106880907, 0, 0.287469268, 0)
MiscButton.Size = UDim2.new(0, 175, 0, 36)
MiscButton.Image = "http://www.roblox.com/asset/?id=12705320405"
MiscButton.ImageTransparency = 1.000

TextLabel.Parent = MiscButton
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.22857143, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 135, 0, 36)
TextLabel.Font = Enum.Font.SourceSansSemibold
TextLabel.Text = name
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 17.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel.Parent = MiscButton
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0400000028, 0, 0.138888896, 0)
ImageLabel.Size = UDim2.new(0, 25, 0, 25)
ImageLabel.Image = "http://www.roblox.com/asset/?id=13740501046"

-- Scripts:

local function KYXHCIX_fake_script() -- MiscButton.LocalScript 
	local script = Instance.new('LocalScript', MiscButton)

	script.Parent.MouseButton1Down:connect(function()
		---Pages
		script.Parent.Parent.Parent.Parent.MainPage.Visible = false
		script.Parent.Parent.Parent.Parent.PlayerPage.Visible = false
		script.Parent.Parent.Parent.Parent.SettingsPage.Visible = false
		script.Parent.Parent.Parent.Parent.MiscPage.Visible = true
	
		---Buttons
		script.Parent.Parent.MainButton.ImageTransparency = 1
		script.Parent.Parent.PlayerButton.ImageTransparency = 1
		script.Parent.Parent.SettingsButton.ImageTransparency = 1
		script.Parent.ImageTransparency = 0.61
	end)
	
end
coroutine.wrap(KYXHCIX_fake_script)()
local countt = 0
for i,v in pairs(hub1.MainGUI.BACKGROUND.SideTab.PagesButton:GetChildren()) do
    countt = countt + 1
end

if countt == 2 then
    for i,v in pairs(hub1.MainGUI.BACKGROUND.SideTab.PagesButton:GetChildren()) do
    if v:IsA("ImageButton") then
        v.ImageTransparency = 0.61
        break
    end
    
end
end


end
