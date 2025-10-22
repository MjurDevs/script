--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 244 | Scripts: 19 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.StarterUi
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[StarterUi]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;
G2L["1"]["DisplayOrder"] = 100000;


-- StarterGui.StarterUi.Main
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(71, 71, 71);
G2L["2"]["Size"] = UDim2.new(0.4, 0, 0.4, 0);
G2L["2"]["Position"] = UDim2.new(0.3, 0, 0.3, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[Main]];
G2L["2"]["Selectable"] = true;
G2L["2"]["Active"] = true;
G2L["2"]["Draggable"] = true;


-- StarterGui.StarterUi.Main.MainHandler
G2L["3"] = Instance.new("LocalScript", G2L["2"]);
G2L["3"]["Name"] = [[MainHandler]];


-- StarterGui.StarterUi.Main.MainHandler._Source_MainHandler_3
G2L["4"] = Instance.new("StringValue", G2L["3"]);
G2L["4"]["Name"] = [[_Source_MainHandler_3]];
G2L["4"]["Value"] = [[local Main = script.Parent
local List = Main:WaitForChild("List")
local FrameContainer = Main:WaitForChild("Frame")

-- Mapowanie przycisków na frame'y po ich faktycznej nazwie
local categoryButtons = {
	Visual = {button = List:WaitForChild("Visual"):WaitForChild("Inside"):WaitForChild("Name"), frame = FrameContainer:WaitForChild("Visual")},
	Aim = {button = List:WaitForChild("Aim"):WaitForChild("Inside"):WaitForChild("Name"), frame = FrameContainer:WaitForChild("Aim")},
	Crosshair = {button = List:WaitForChild("Crosshair"):WaitForChild("Inside"):WaitForChild("Name"), frame = FrameContainer:WaitForChild("Crosshair")},
	Misc = {button = List:WaitForChild("Misc"):WaitForChild("Inside"):WaitForChild("Name"), frame = FrameContainer:WaitForChild("Misc")},
	Functions = {button = List:WaitForChild("Functions"):WaitForChild("Inside"):WaitForChild("Name"), frame = FrameContainer:WaitForChild("Functions")}
}

-- Ukrywa wszystkie frame'y
local function hideAllFrames()
	for _, v in pairs(categoryButtons) do
		v.frame.Visible = false
	end
end

-- Obsługa kliknięcia przycisku
for _, v in pairs(categoryButtons) do
	v.button.MouseButton1Click:Connect(function()
		hideAllFrames()
		v.frame.Visible = true
	end)
end

-- Pokaż domyślną kategorię przy starcie
hideAllFrames()
]];


-- StarterGui.StarterUi.Main.UICorner
G2L["5"] = Instance.new("UICorner", G2L["2"]);
G2L["5"]["CornerRadius"] = UDim.new(0.05, 0);


-- StarterGui.StarterUi.Main.List
G2L["6"] = Instance.new("Frame", G2L["2"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["Size"] = UDim2.new(0.275, 0, 1, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Name"] = [[List]];
G2L["6"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.List.Visual
G2L["7"] = Instance.new("Frame", G2L["6"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["Size"] = UDim2.new(1, 0, 0.2, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Name"] = [[Visual]];
G2L["7"]["LayoutOrder"] = 1;
G2L["7"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.List.Visual.UICorner
G2L["8"] = Instance.new("UICorner", G2L["7"]);
G2L["8"]["CornerRadius"] = UDim.new(0.05, 0);


-- StarterGui.StarterUi.Main.List.Visual.Inside
G2L["9"] = Instance.new("Frame", G2L["7"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["9"]["Size"] = UDim2.new(0.9, 0, 0.9, 0);
G2L["9"]["Position"] = UDim2.new(0.05, 0, 0.05, 0);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Name"] = [[Inside]];


-- StarterGui.StarterUi.Main.List.Visual.Inside.UICorner
G2L["a"] = Instance.new("UICorner", G2L["9"]);
G2L["a"]["CornerRadius"] = UDim.new(0.2, 0);


-- StarterGui.StarterUi.Main.List.Visual.Inside.Name
G2L["b"] = Instance.new("TextButton", G2L["9"]);
G2L["b"]["TextWrapped"] = true;
G2L["b"]["RichText"] = true;
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b"]["TextStrokeColor3"] = Color3.fromRGB(73, 0, 255);
G2L["b"]["TextSize"] = 12;
G2L["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Text"] = [[     Visuals]];
G2L["b"]["Name"] = [[Name]];


-- StarterGui.StarterUi.Main.List.UIListLayout
G2L["c"] = Instance.new("UIListLayout", G2L["6"]);
G2L["c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.StarterUi.Main.List.Aim
G2L["d"] = Instance.new("Frame", G2L["6"]);
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["Size"] = UDim2.new(1, 0, 0.2, 0);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Name"] = [[Aim]];
G2L["d"]["LayoutOrder"] = 2;
G2L["d"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.List.Aim.UICorner
G2L["e"] = Instance.new("UICorner", G2L["d"]);
G2L["e"]["CornerRadius"] = UDim.new(0.05, 0);


-- StarterGui.StarterUi.Main.List.Aim.Inside
G2L["f"] = Instance.new("Frame", G2L["d"]);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["f"]["Size"] = UDim2.new(0.9, 0, 0.9, 0);
G2L["f"]["Position"] = UDim2.new(0.05, 0, 0.05, 0);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Name"] = [[Inside]];


-- StarterGui.StarterUi.Main.List.Aim.Inside.UICorner
G2L["10"] = Instance.new("UICorner", G2L["f"]);
G2L["10"]["CornerRadius"] = UDim.new(0.2, 0);


-- StarterGui.StarterUi.Main.List.Aim.Inside.Name
G2L["11"] = Instance.new("TextButton", G2L["f"]);
G2L["11"]["TextWrapped"] = true;
G2L["11"]["RichText"] = true;
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["11"]["TextStrokeColor3"] = Color3.fromRGB(73, 0, 255);
G2L["11"]["TextSize"] = 12;
G2L["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Text"] = [[     Aim]];
G2L["11"]["Name"] = [[Name]];


-- StarterGui.StarterUi.Main.List.Crosshair
G2L["12"] = Instance.new("Frame", G2L["6"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["Size"] = UDim2.new(1, 0, 0.2, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Name"] = [[Crosshair]];
G2L["12"]["LayoutOrder"] = 3;
G2L["12"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.List.Crosshair.UICorner
G2L["13"] = Instance.new("UICorner", G2L["12"]);
G2L["13"]["CornerRadius"] = UDim.new(0.05, 0);


-- StarterGui.StarterUi.Main.List.Crosshair.Inside
G2L["14"] = Instance.new("Frame", G2L["12"]);
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["14"]["Size"] = UDim2.new(0.9, 0, 0.9, 0);
G2L["14"]["Position"] = UDim2.new(0.05, 0, 0.05, 0);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Name"] = [[Inside]];


-- StarterGui.StarterUi.Main.List.Crosshair.Inside.UICorner
G2L["15"] = Instance.new("UICorner", G2L["14"]);
G2L["15"]["CornerRadius"] = UDim.new(0.2, 0);


-- StarterGui.StarterUi.Main.List.Crosshair.Inside.Name
G2L["16"] = Instance.new("TextButton", G2L["14"]);
G2L["16"]["TextWrapped"] = true;
G2L["16"]["RichText"] = true;
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["16"]["TextStrokeColor3"] = Color3.fromRGB(73, 0, 255);
G2L["16"]["TextSize"] = 12;
G2L["16"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["16"]["BackgroundTransparency"] = 1;
G2L["16"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Text"] = [[     Crosshair]];
G2L["16"]["Name"] = [[Name]];


-- StarterGui.StarterUi.Main.List.Misc
G2L["17"] = Instance.new("Frame", G2L["6"]);
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["Size"] = UDim2.new(1, 0, 0.2, 0);
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Name"] = [[Misc]];
G2L["17"]["LayoutOrder"] = 4;
G2L["17"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.List.Misc.UICorner
G2L["18"] = Instance.new("UICorner", G2L["17"]);
G2L["18"]["CornerRadius"] = UDim.new(0.05, 0);


-- StarterGui.StarterUi.Main.List.Misc.Inside
G2L["19"] = Instance.new("Frame", G2L["17"]);
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["19"]["Size"] = UDim2.new(0.9, 0, 0.9, 0);
G2L["19"]["Position"] = UDim2.new(0.05, 0, 0.05, 0);
G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["Name"] = [[Inside]];


-- StarterGui.StarterUi.Main.List.Misc.Inside.UICorner
G2L["1a"] = Instance.new("UICorner", G2L["19"]);
G2L["1a"]["CornerRadius"] = UDim.new(0.2, 0);


-- StarterGui.StarterUi.Main.List.Misc.Inside.Name
G2L["1b"] = Instance.new("TextButton", G2L["19"]);
G2L["1b"]["TextWrapped"] = true;
G2L["1b"]["RichText"] = true;
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1b"]["TextStrokeColor3"] = Color3.fromRGB(73, 0, 255);
G2L["1b"]["TextSize"] = 12;
G2L["1b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1b"]["BackgroundTransparency"] = 1;
G2L["1b"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Text"] = [[     Misc]];
G2L["1b"]["Name"] = [[Name]];


-- StarterGui.StarterUi.Main.List.Functions
G2L["1c"] = Instance.new("Frame", G2L["6"]);
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["Size"] = UDim2.new(1, 0, 0.2, 0);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Name"] = [[Functions]];
G2L["1c"]["LayoutOrder"] = 5;
G2L["1c"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.List.Functions.UICorner
G2L["1d"] = Instance.new("UICorner", G2L["1c"]);
G2L["1d"]["CornerRadius"] = UDim.new(0.05, 0);


-- StarterGui.StarterUi.Main.List.Functions.Inside
G2L["1e"] = Instance.new("Frame", G2L["1c"]);
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["1e"]["Size"] = UDim2.new(0.9, 0, 0.9, 0);
G2L["1e"]["Position"] = UDim2.new(0.05, 0, 0.05, 0);
G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["Name"] = [[Inside]];


-- StarterGui.StarterUi.Main.List.Functions.Inside.UICorner
G2L["1f"] = Instance.new("UICorner", G2L["1e"]);
G2L["1f"]["CornerRadius"] = UDim.new(0.2, 0);


-- StarterGui.StarterUi.Main.List.Functions.Inside.Name
G2L["20"] = Instance.new("TextButton", G2L["1e"]);
G2L["20"]["TextWrapped"] = true;
G2L["20"]["RichText"] = true;
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["20"]["TextStrokeColor3"] = Color3.fromRGB(73, 0, 255);
G2L["20"]["TextSize"] = 12;
G2L["20"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["20"]["BackgroundTransparency"] = 1;
G2L["20"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Text"] = [[     Functions]];
G2L["20"]["Name"] = [[Name]];


-- StarterGui.StarterUi.Main.Frame
G2L["21"] = Instance.new("Frame", G2L["2"]);
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["Size"] = UDim2.new(0.725, 0, 1, 0);
G2L["21"]["Position"] = UDim2.new(0.275, 0, 0, 0);
G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Functions
G2L["22"] = Instance.new("Frame", G2L["21"]);
G2L["22"]["Visible"] = false;
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["Name"] = [[Functions]];
G2L["22"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Crosshair
G2L["23"] = Instance.new("Frame", G2L["21"]);
G2L["23"]["Visible"] = false;
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23"]["Name"] = [[Crosshair]];
G2L["23"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairHandler
G2L["24"] = Instance.new("LocalScript", G2L["23"]);
G2L["24"]["Name"] = [[CrosshairHandler]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairHandler._Source_CrosshairHandler_36
G2L["25"] = Instance.new("StringValue", G2L["24"]);
G2L["25"]["Name"] = [[_Source_CrosshairHandler_36]];
G2L["25"]["Value"] = [[-- Parent
local CrosshairFrame = script.Parent -- Crosshair frame containing all sliders/buttons
local GuiParent = CrosshairFrame.Parent.Parent.Parent -- This is Main.Frame where holder should go

-- ===== SETTINGS =====
local settings = {
	Size = 0,
	Thickness = 0,
	Color = Color3.new(1,1,1),
	Dot = false,
	Outline = false,
	Rotation = 0,
	Alpha = 1,
	Spacing = 0,
}

-- ===== UTIL =====
local function parseColor(str)
	local r,g,b = str:match("(%d+),%s*(%d+),%s*(%d+)")
	if r and g and b then
		return Color3.fromRGB(tonumber(r), tonumber(g), tonumber(b))
	end
	return Color3.new(1,1,1)
end

-- ===== CREATE CROSSHAIR =====
local function createCrosshair()
	-- Check if crosshair is enabled
	local enabled = CrosshairFrame.CrosshairMain.Slider.State.Value
	if not enabled then
		if GuiParent:FindFirstChild("CrosshairHolder") then
			GuiParent.CrosshairHolder:Destroy()
		end
		return
	end

	-- Remove old holder
	if GuiParent:FindFirstChild("CrosshairHolder") then
		GuiParent.CrosshairHolder:Destroy()
	end

	-- Holder
	local holder = Instance.new("Frame")
	holder.Name = "CrosshairHolder"
	holder.BackgroundTransparency = 1
	holder.Size = UDim2.new(0,0,0,0)
	holder.Position = UDim2.new(0.5,0,0.5,0)
	holder.AnchorPoint = Vector2.new(0.5,0.5)
	holder.Parent = GuiParent

	local s = settings.Size
	local t = settings.Thickness
	local sp = settings.Spacing

	local function createLine(offsetX, offsetY, width, height)
		local line = Instance.new("Frame")
		line.Size = UDim2.new(0,width,0,height)
		line.Position = UDim2.new(0.5, offsetX, 0.5, offsetY)
		line.AnchorPoint = Vector2.new(0.5,0.5)
		line.BackgroundColor3 = settings.Color
		line.BackgroundTransparency = 1 - settings.Alpha
		line.BorderSizePixel = settings.Outline and 1 or 0
		line.BorderColor3 = Color3.new(0,0,0)
		line.Parent = holder
	end

	-- Lines
	createLine(0, -(s/2 + sp + t/2), t, s) -- Top
	createLine(0, s/2 + sp + t/2, t, s) -- Bottom
	createLine(-(s/2 + sp + t/2), 0, s, t) -- Left
	createLine(s/2 + sp + t/2, 0, s, t) -- Right

	-- Central dot
	if settings.Dot then
		local dot = Instance.new("Frame")
		dot.Size = UDim2.new(0,t,0,t)
		dot.Position = UDim2.new(0.5,0,0.5,0)
		dot.AnchorPoint = Vector2.new(0.5,0.5)
		dot.BackgroundColor3 = settings.Color
		dot.BackgroundTransparency = 1 - settings.Alpha
		dot.BorderSizePixel = 0
		dot.Parent = holder
	end

	-- Rotation
	holder.Rotation = settings.Rotation
end

-- ===== GUI CONNECTIONS =====
-- Slider on/off
CrosshairFrame.CrosshairMain.Slider.State:GetPropertyChangedSignal("Value"):Connect(createCrosshair)

-- Size
CrosshairFrame.CrosshairSize.Key:GetPropertyChangedSignal("Text"):Connect(function()
	local val = tonumber(CrosshairFrame.CrosshairSize.Key.Text)
	if val then
		settings.Size = val
		createCrosshair()
	end
end)

-- Thickness
CrosshairFrame.CrosshairThickness.Key:GetPropertyChangedSignal("Text"):Connect(function()
	local val = tonumber(CrosshairFrame.CrosshairThickness.Key.Text)
	if val then
		settings.Thickness = val
		createCrosshair()
	end
end)

-- Color
CrosshairFrame.CrosshairColor.Key:GetPropertyChangedSignal("Text"):Connect(function()
	local val = parseColor(CrosshairFrame.CrosshairColor.Key.Text)
	if val then
		settings.Color = val
		createCrosshair()
	end
end)

-- Dot toggle
local dotTrigger = CrosshairFrame.CrosshairDot.Slider.Trigger
if dotTrigger then
	dotTrigger.MouseButton1Click:Connect(function()
		settings.Dot = not settings.Dot
		dotTrigger.Parent.BackgroundColor3 = settings.Dot and Color3.fromRGB(79,255,66) or Color3.fromRGB(100,100,100)
		createCrosshair()
	end)
end

-- Outline toggle
local outlineTrigger = CrosshairFrame.CrosshairOutline.Slider.Trigger
if outlineTrigger then
	outlineTrigger.MouseButton1Click:Connect(function()
		settings.Outline = not settings.Outline
		outlineTrigger.Parent.BackgroundColor3 = settings.Outline and Color3.fromRGB(79,255,66) or Color3.fromRGB(100,100,100)
		createCrosshair()
	end)
end

-- Rotation
CrosshairFrame.CrosshairRotation.Key:GetPropertyChangedSignal("Text"):Connect(function()
	local val = tonumber(CrosshairFrame.CrosshairRotation.Key.Text)
	if val then
		settings.Rotation = val
		createCrosshair()
	end
end)

-- Alpha
CrosshairFrame.CrosshairAlpha.Key:GetPropertyChangedSignal("Text"):Connect(function()
	local val = tonumber(CrosshairFrame.CrosshairAlpha.Key.Text)
	if val then
		settings.Alpha = math.clamp(val/100,0,1)
		createCrosshair()
	end
end)

-- Spacing
if CrosshairFrame:FindFirstChild("CrosshairSpacing") then
	CrosshairFrame.CrosshairSpacing.Key:GetPropertyChangedSignal("Text"):Connect(function()
		local val = tonumber(CrosshairFrame.CrosshairSpacing.Key.Text)
		if val then
			settings.Spacing = val
			createCrosshair()
		end
	end)
end

-- ===== INITIAL CREATE =====
createCrosshair()
]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairMain
G2L["26"] = Instance.new("Frame", G2L["23"]);
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Name"] = [[CrosshairMain]];
G2L["26"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairMain.Slider
G2L["27"] = Instance.new("Frame", G2L["26"]);
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["27"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["27"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["Name"] = [[Slider]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairMain.Slider.UICorner
G2L["28"] = Instance.new("UICorner", G2L["27"]);
G2L["28"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairMain.Slider.Dot
G2L["29"] = Instance.new("Frame", G2L["27"]);
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29"]["Size"] = UDim2.new(0.8, 0, 0.8, 0);
G2L["29"]["Position"] = UDim2.new(0.05, 0, 0.1, 0);
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["Name"] = [[Dot]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairMain.Slider.Dot.UIAspectRatioConstraint
G2L["2a"] = Instance.new("UIAspectRatioConstraint", G2L["29"]);



-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairMain.Slider.Dot.UICorner
G2L["2b"] = Instance.new("UICorner", G2L["29"]);
G2L["2b"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairMain.Slider.State
G2L["2c"] = Instance.new("BoolValue", G2L["27"]);
G2L["2c"]["Name"] = [[State]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairMain.Slider.Trigger
G2L["2d"] = Instance.new("ImageButton", G2L["27"]);
G2L["2d"]["BorderSizePixel"] = 0;
G2L["2d"]["ImageTransparency"] = 1;
G2L["2d"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d"]["ZIndex"] = 2;
G2L["2d"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["2d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d"]["Name"] = [[Trigger]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairMain.Slider.Trigger.TriggerEvent
G2L["2e"] = Instance.new("LocalScript", G2L["2d"]);
G2L["2e"]["Name"] = [[TriggerEvent]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairMain.Slider.Trigger.TriggerEvent._Source_TriggerEvent_46
G2L["2f"] = Instance.new("StringValue", G2L["2e"]);
G2L["2f"]["Name"] = [[_Source_TriggerEvent_46]];
G2L["2f"]["Value"] = [[local stateVal = script.Parent.Parent.State
local button = script.Parent
local background = script.Parent.Parent
local dot = script.Parent.Parent.Dot

button.Activated:Connect(function()
	if stateVal.Value == false then
		stateVal.Value = true
		background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
		dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
	elseif stateVal.Value == true then
		stateVal.Value = false
		background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
		dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
	end
end)
]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairMain.TextLabel
G2L["30"] = Instance.new("TextLabel", G2L["26"]);
G2L["30"]["TextStrokeTransparency"] = 0;
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["TextSize"] = 22;
G2L["30"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["30"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["30"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["30"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["30"]["BackgroundTransparency"] = 1;
G2L["30"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["Text"] = [[Crosshair]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairSize
G2L["31"] = Instance.new("Frame", G2L["23"]);
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["31"]["Position"] = UDim2.new(0, 0, 0.2, 0);
G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Name"] = [[CrosshairSize]];
G2L["31"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairSize.TextLabel
G2L["32"] = Instance.new("TextLabel", G2L["31"]);
G2L["32"]["TextStrokeTransparency"] = 0;
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["TextSize"] = 22;
G2L["32"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["32"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["32"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["BackgroundTransparency"] = 1;
G2L["32"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["Text"] = [[Size]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairSize.Key
G2L["33"] = Instance.new("TextBox", G2L["31"]);
G2L["33"]["TextStrokeTransparency"] = 0;
G2L["33"]["Name"] = [[Key]];
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["TextWrapped"] = true;
G2L["33"]["TextSize"] = 14;
G2L["33"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["33"]["TextScaled"] = true;
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["33"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["33"]["PlaceholderText"] = [[px]];
G2L["33"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["33"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["Text"] = [[]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairSize.Key.UICorner
G2L["34"] = Instance.new("UICorner", G2L["33"]);
G2L["34"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairThickness
G2L["35"] = Instance.new("Frame", G2L["23"]);
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["35"]["Position"] = UDim2.new(0, 0, 0.4, 0);
G2L["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["Name"] = [[CrosshairThickness]];
G2L["35"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairThickness.TextLabel
G2L["36"] = Instance.new("TextLabel", G2L["35"]);
G2L["36"]["TextStrokeTransparency"] = 0;
G2L["36"]["BorderSizePixel"] = 0;
G2L["36"]["TextSize"] = 22;
G2L["36"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["36"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["36"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["36"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["36"]["BackgroundTransparency"] = 1;
G2L["36"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["Text"] = [[Thickness]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairThickness.Key
G2L["37"] = Instance.new("TextBox", G2L["35"]);
G2L["37"]["TextStrokeTransparency"] = 0;
G2L["37"]["Name"] = [[Key]];
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["TextWrapped"] = true;
G2L["37"]["TextSize"] = 14;
G2L["37"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["37"]["TextScaled"] = true;
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["37"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["37"]["PlaceholderText"] = [[px]];
G2L["37"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["37"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["37"]["Text"] = [[]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairThickness.Key.UICorner
G2L["38"] = Instance.new("UICorner", G2L["37"]);
G2L["38"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairColor
G2L["39"] = Instance.new("Frame", G2L["23"]);
G2L["39"]["BorderSizePixel"] = 0;
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["39"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["39"]["Position"] = UDim2.new(0, 0, 0.6, 0);
G2L["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["39"]["Name"] = [[CrosshairColor]];
G2L["39"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairColor.TextLabel
G2L["3a"] = Instance.new("TextLabel", G2L["39"]);
G2L["3a"]["TextStrokeTransparency"] = 0;
G2L["3a"]["BorderSizePixel"] = 0;
G2L["3a"]["TextSize"] = 22;
G2L["3a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3a"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["3a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["3a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3a"]["BackgroundTransparency"] = 1;
G2L["3a"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["Text"] = [[Color (r,g,b)]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairColor.Key
G2L["3b"] = Instance.new("TextBox", G2L["39"]);
G2L["3b"]["TextStrokeTransparency"] = 0;
G2L["3b"]["Name"] = [[Key]];
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["TextWrapped"] = true;
G2L["3b"]["TextSize"] = 14;
G2L["3b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["TextScaled"] = true;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["3b"]["PlaceholderText"] = [[R, G, B]];
G2L["3b"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["3b"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["Text"] = [[]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairColor.Key.UICorner
G2L["3c"] = Instance.new("UICorner", G2L["3b"]);
G2L["3c"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairDot
G2L["3d"] = Instance.new("Frame", G2L["23"]);
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["3d"]["Position"] = UDim2.new(0, 0, 0.8, 0);
G2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["Name"] = [[CrosshairDot]];
G2L["3d"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairDot.Slider
G2L["3e"] = Instance.new("Frame", G2L["3d"]);
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["3e"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["3e"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["3e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3e"]["Name"] = [[Slider]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairDot.Slider.UICorner
G2L["3f"] = Instance.new("UICorner", G2L["3e"]);
G2L["3f"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairDot.Slider.Dot
G2L["40"] = Instance.new("Frame", G2L["3e"]);
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["40"]["Size"] = UDim2.new(0.8, 0, 0.8, 0);
G2L["40"]["Position"] = UDim2.new(0.05, 0, 0.1, 0);
G2L["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["40"]["Name"] = [[Dot]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairDot.Slider.Dot.UIAspectRatioConstraint
G2L["41"] = Instance.new("UIAspectRatioConstraint", G2L["40"]);



-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairDot.Slider.Dot.UICorner
G2L["42"] = Instance.new("UICorner", G2L["40"]);
G2L["42"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairDot.Slider.State
G2L["43"] = Instance.new("BoolValue", G2L["3e"]);
G2L["43"]["Name"] = [[State]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairDot.Slider.Trigger
G2L["44"] = Instance.new("ImageButton", G2L["3e"]);
G2L["44"]["BorderSizePixel"] = 0;
G2L["44"]["ImageTransparency"] = 1;
G2L["44"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["44"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["44"]["ZIndex"] = 2;
G2L["44"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["44"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["44"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["44"]["Name"] = [[Trigger]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairDot.Slider.Trigger.TriggerEvent
G2L["45"] = Instance.new("LocalScript", G2L["44"]);
G2L["45"]["Name"] = [[TriggerEvent]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairDot.Slider.Trigger.TriggerEvent._Source_TriggerEvent_69
G2L["46"] = Instance.new("StringValue", G2L["45"]);
G2L["46"]["Name"] = [[_Source_TriggerEvent_69]];
G2L["46"]["Value"] = [[local stateVal = script.Parent.Parent.State
local button = script.Parent
local background = script.Parent.Parent
local dot = script.Parent.Parent.Dot

button.Activated:Connect(function()
	if stateVal.Value == false then
		stateVal.Value = true
		background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
		dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
	elseif stateVal.Value == true then
		stateVal.Value = false
		background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
		dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
	end
end)
]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairDot.TextLabel
G2L["47"] = Instance.new("TextLabel", G2L["3d"]);
G2L["47"]["TextStrokeTransparency"] = 0;
G2L["47"]["BorderSizePixel"] = 0;
G2L["47"]["TextSize"] = 22;
G2L["47"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["47"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["47"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["BackgroundTransparency"] = 1;
G2L["47"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["47"]["Text"] = [[Central Dot]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairOutline
G2L["48"] = Instance.new("Frame", G2L["23"]);
G2L["48"]["BorderSizePixel"] = 0;
G2L["48"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["48"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["48"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["48"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["48"]["Name"] = [[CrosshairOutline]];
G2L["48"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairOutline.Slider
G2L["49"] = Instance.new("Frame", G2L["48"]);
G2L["49"]["BorderSizePixel"] = 0;
G2L["49"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["49"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["49"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["49"]["Name"] = [[Slider]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairOutline.Slider.UICorner
G2L["4a"] = Instance.new("UICorner", G2L["49"]);
G2L["4a"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairOutline.Slider.Dot
G2L["4b"] = Instance.new("Frame", G2L["49"]);
G2L["4b"]["BorderSizePixel"] = 0;
G2L["4b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4b"]["Size"] = UDim2.new(0.8, 0, 0.8, 0);
G2L["4b"]["Position"] = UDim2.new(0.05, 0, 0.1, 0);
G2L["4b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4b"]["Name"] = [[Dot]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairOutline.Slider.Dot.UIAspectRatioConstraint
G2L["4c"] = Instance.new("UIAspectRatioConstraint", G2L["4b"]);



-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairOutline.Slider.Dot.UICorner
G2L["4d"] = Instance.new("UICorner", G2L["4b"]);
G2L["4d"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairOutline.Slider.State
G2L["4e"] = Instance.new("BoolValue", G2L["49"]);
G2L["4e"]["Name"] = [[State]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairOutline.Slider.Trigger
G2L["4f"] = Instance.new("ImageButton", G2L["49"]);
G2L["4f"]["BorderSizePixel"] = 0;
G2L["4f"]["ImageTransparency"] = 1;
G2L["4f"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["4f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4f"]["ZIndex"] = 2;
G2L["4f"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["4f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4f"]["Name"] = [[Trigger]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairOutline.Slider.Trigger.TriggerEvent
G2L["50"] = Instance.new("LocalScript", G2L["4f"]);
G2L["50"]["Name"] = [[TriggerEvent]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairOutline.Slider.Trigger.TriggerEvent._Source_TriggerEvent_80
G2L["51"] = Instance.new("StringValue", G2L["50"]);
G2L["51"]["Name"] = [[_Source_TriggerEvent_80]];
G2L["51"]["Value"] = [[local stateVal = script.Parent.Parent.State
local button = script.Parent
local background = script.Parent.Parent
local dot = script.Parent.Parent.Dot

button.Activated:Connect(function()
	if stateVal.Value == false then
		stateVal.Value = true
		background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
		dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
	elseif stateVal.Value == true then
		stateVal.Value = false
		background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
		dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
	end
end)
]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairOutline.TextLabel
G2L["52"] = Instance.new("TextLabel", G2L["48"]);
G2L["52"]["TextStrokeTransparency"] = 0;
G2L["52"]["BorderSizePixel"] = 0;
G2L["52"]["TextSize"] = 22;
G2L["52"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["52"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["52"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["52"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["52"]["BackgroundTransparency"] = 1;
G2L["52"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["52"]["Text"] = [[Outline]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairRotation
G2L["53"] = Instance.new("Frame", G2L["23"]);
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["53"]["Position"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["Name"] = [[CrosshairRotation]];
G2L["53"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairRotation.TextLabel
G2L["54"] = Instance.new("TextLabel", G2L["53"]);
G2L["54"]["TextStrokeTransparency"] = 0;
G2L["54"]["BorderSizePixel"] = 0;
G2L["54"]["TextSize"] = 22;
G2L["54"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["54"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["54"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["54"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["54"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["54"]["BackgroundTransparency"] = 1;
G2L["54"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["54"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["54"]["Text"] = [[Rotation]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairRotation.Key
G2L["55"] = Instance.new("TextBox", G2L["53"]);
G2L["55"]["TextStrokeTransparency"] = 0;
G2L["55"]["Name"] = [[Key]];
G2L["55"]["BorderSizePixel"] = 0;
G2L["55"]["TextWrapped"] = true;
G2L["55"]["TextSize"] = 14;
G2L["55"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["55"]["TextScaled"] = true;
G2L["55"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["55"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["55"]["PlaceholderText"] = [[°]];
G2L["55"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["55"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["55"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["55"]["Text"] = [[]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairRotation.Key.UICorner
G2L["56"] = Instance.new("UICorner", G2L["55"]);
G2L["56"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairAlpha
G2L["57"] = Instance.new("Frame", G2L["23"]);
G2L["57"]["BorderSizePixel"] = 0;
G2L["57"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["57"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["57"]["Position"] = UDim2.new(0.5, 0, 0.4, 0);
G2L["57"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["57"]["Name"] = [[CrosshairAlpha]];
G2L["57"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairAlpha.TextLabel
G2L["58"] = Instance.new("TextLabel", G2L["57"]);
G2L["58"]["TextStrokeTransparency"] = 0;
G2L["58"]["BorderSizePixel"] = 0;
G2L["58"]["TextSize"] = 22;
G2L["58"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["58"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["58"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["58"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["58"]["BackgroundTransparency"] = 1;
G2L["58"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["58"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["Text"] = [[Aplha]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairAlpha.Key
G2L["59"] = Instance.new("TextBox", G2L["57"]);
G2L["59"]["TextStrokeTransparency"] = 0;
G2L["59"]["Name"] = [[Key]];
G2L["59"]["BorderSizePixel"] = 0;
G2L["59"]["TextWrapped"] = true;
G2L["59"]["TextSize"] = 14;
G2L["59"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["59"]["TextScaled"] = true;
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["59"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["59"]["PlaceholderText"] = [[%]];
G2L["59"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["59"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["59"]["Text"] = [[]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairAlpha.Key.UICorner
G2L["5a"] = Instance.new("UICorner", G2L["59"]);
G2L["5a"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairSpacing
G2L["5b"] = Instance.new("Frame", G2L["23"]);
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5b"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["5b"]["Position"] = UDim2.new(0.5, 0, 0.6, 0);
G2L["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["Name"] = [[CrosshairSpacing]];
G2L["5b"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairSpacing.TextLabel
G2L["5c"] = Instance.new("TextLabel", G2L["5b"]);
G2L["5c"]["TextStrokeTransparency"] = 0;
G2L["5c"]["BorderSizePixel"] = 0;
G2L["5c"]["TextSize"] = 22;
G2L["5c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5c"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["5c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["5c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5c"]["BackgroundTransparency"] = 1;
G2L["5c"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5c"]["Text"] = [[Space]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairSpacing.Key
G2L["5d"] = Instance.new("TextBox", G2L["5b"]);
G2L["5d"]["TextStrokeTransparency"] = 0;
G2L["5d"]["Name"] = [[Key]];
G2L["5d"]["BorderSizePixel"] = 0;
G2L["5d"]["TextWrapped"] = true;
G2L["5d"]["TextSize"] = 14;
G2L["5d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5d"]["TextScaled"] = true;
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["5d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["5d"]["PlaceholderText"] = [[px]];
G2L["5d"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["5d"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["5d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["Text"] = [[]];


-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairSpacing.Key.UICorner
G2L["5e"] = Instance.new("UICorner", G2L["5d"]);
G2L["5e"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Misc
G2L["5f"] = Instance.new("Frame", G2L["21"]);
G2L["5f"]["Visible"] = false;
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["Name"] = [[Misc]];
G2L["5f"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Visual
G2L["60"] = Instance.new("Frame", G2L["21"]);
G2L["60"]["Visible"] = false;
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["Name"] = [[Visual]];
G2L["60"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Visual.VisualHandler
G2L["61"] = Instance.new("LocalScript", G2L["60"]);
G2L["61"]["Name"] = [[VisualHandler]];


-- StarterGui.StarterUi.Main.Frame.Visual.ESP
G2L["62"] = Instance.new("Frame", G2L["60"]);
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["Name"] = [[ESP]];
G2L["62"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Visual.ESP.Slider
G2L["63"] = Instance.new("Frame", G2L["62"]);
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["63"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["63"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["63"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["63"]["Name"] = [[Slider]];


-- StarterGui.StarterUi.Main.Frame.Visual.ESP.Slider.UICorner
G2L["64"] = Instance.new("UICorner", G2L["63"]);
G2L["64"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Visual.ESP.Slider.Dot
G2L["65"] = Instance.new("Frame", G2L["63"]);
G2L["65"]["BorderSizePixel"] = 0;
G2L["65"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["65"]["Size"] = UDim2.new(0.8, 0, 0.8, 0);
G2L["65"]["Position"] = UDim2.new(0.05, 0, 0.1, 0);
G2L["65"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["65"]["Name"] = [[Dot]];


-- StarterGui.StarterUi.Main.Frame.Visual.ESP.Slider.Dot.UIAspectRatioConstraint
G2L["66"] = Instance.new("UIAspectRatioConstraint", G2L["65"]);



-- StarterGui.StarterUi.Main.Frame.Visual.ESP.Slider.Dot.UICorner
G2L["67"] = Instance.new("UICorner", G2L["65"]);
G2L["67"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Visual.ESP.Slider.State
G2L["68"] = Instance.new("BoolValue", G2L["63"]);
G2L["68"]["Name"] = [[State]];


-- StarterGui.StarterUi.Main.Frame.Visual.ESP.Slider.Trigger
G2L["69"] = Instance.new("ImageButton", G2L["63"]);
G2L["69"]["BorderSizePixel"] = 0;
G2L["69"]["ImageTransparency"] = 1;
G2L["69"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["69"]["ZIndex"] = 2;
G2L["69"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["69"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["69"]["Name"] = [[Trigger]];


-- StarterGui.StarterUi.Main.Frame.Visual.ESP.Slider.Trigger.TriggerEvent
G2L["6a"] = Instance.new("LocalScript", G2L["69"]);
G2L["6a"]["Name"] = [[TriggerEvent]];


-- StarterGui.StarterUi.Main.Frame.Visual.ESP.Slider.Trigger.TriggerEvent._Source_TriggerEvent_107
G2L["6b"] = Instance.new("StringValue", G2L["6a"]);
G2L["6b"]["Name"] = [[_Source_TriggerEvent_107]];
G2L["6b"]["Value"] = [[local stateVal = script.Parent.Parent.State
local button = script.Parent
local background = script.Parent.Parent
local dot = script.Parent.Parent.Dot

button.Activated:Connect(function()
	if stateVal.Value == false then
		stateVal.Value = true
		background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
		dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
	elseif stateVal.Value == true then
		stateVal.Value = false
		background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
		dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
	end
end)
]];


-- StarterGui.StarterUi.Main.Frame.Visual.ESP.TextLabel
G2L["6c"] = Instance.new("TextLabel", G2L["62"]);
G2L["6c"]["TextStrokeTransparency"] = 0;
G2L["6c"]["BorderSizePixel"] = 0;
G2L["6c"]["TextSize"] = 22;
G2L["6c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6c"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["6c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["6c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6c"]["BackgroundTransparency"] = 1;
G2L["6c"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["6c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6c"]["Text"] = [[ESP]];


-- StarterGui.StarterUi.Main.Frame.Visual.ShowName
G2L["6d"] = Instance.new("Frame", G2L["60"]);
G2L["6d"]["BorderSizePixel"] = 0;
G2L["6d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6d"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["6d"]["Position"] = UDim2.new(0, 0, 0.2, 0);
G2L["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6d"]["Name"] = [[ShowName]];
G2L["6d"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Visual.ShowName.Slider
G2L["6e"] = Instance.new("Frame", G2L["6d"]);
G2L["6e"]["BorderSizePixel"] = 0;
G2L["6e"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["6e"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["6e"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["6e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6e"]["Name"] = [[Slider]];


-- StarterGui.StarterUi.Main.Frame.Visual.ShowName.Slider.UICorner
G2L["6f"] = Instance.new("UICorner", G2L["6e"]);
G2L["6f"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Visual.ShowName.Slider.Dot
G2L["70"] = Instance.new("Frame", G2L["6e"]);
G2L["70"]["BorderSizePixel"] = 0;
G2L["70"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["70"]["Size"] = UDim2.new(0.8, 0, 0.8, 0);
G2L["70"]["Position"] = UDim2.new(0.05, 0, 0.1, 0);
G2L["70"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["70"]["Name"] = [[Dot]];


-- StarterGui.StarterUi.Main.Frame.Visual.ShowName.Slider.Dot.UIAspectRatioConstraint
G2L["71"] = Instance.new("UIAspectRatioConstraint", G2L["70"]);



-- StarterGui.StarterUi.Main.Frame.Visual.ShowName.Slider.Dot.UICorner
G2L["72"] = Instance.new("UICorner", G2L["70"]);
G2L["72"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Visual.ShowName.Slider.State
G2L["73"] = Instance.new("BoolValue", G2L["6e"]);
G2L["73"]["Name"] = [[State]];


-- StarterGui.StarterUi.Main.Frame.Visual.ShowName.Slider.Trigger
G2L["74"] = Instance.new("ImageButton", G2L["6e"]);
G2L["74"]["BorderSizePixel"] = 0;
G2L["74"]["ImageTransparency"] = 1;
G2L["74"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["74"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["74"]["ZIndex"] = 2;
G2L["74"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["74"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["74"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["74"]["Name"] = [[Trigger]];


-- StarterGui.StarterUi.Main.Frame.Visual.ShowName.Slider.Trigger.TriggerEvent
G2L["75"] = Instance.new("LocalScript", G2L["74"]);
G2L["75"]["Name"] = [[TriggerEvent]];


-- StarterGui.StarterUi.Main.Frame.Visual.ShowName.Slider.Trigger.TriggerEvent._Source_TriggerEvent_118
G2L["76"] = Instance.new("StringValue", G2L["75"]);
G2L["76"]["Name"] = [[_Source_TriggerEvent_118]];
G2L["76"]["Value"] = [[local stateVal = script.Parent.Parent.State
local button = script.Parent
local background = script.Parent.Parent
local dot = script.Parent.Parent.Dot

button.Activated:Connect(function()
	if stateVal.Value == false then
		stateVal.Value = true
		background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
		dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
	elseif stateVal.Value == true then
		stateVal.Value = false
		background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
		dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
	end
end)
]];


-- StarterGui.StarterUi.Main.Frame.Visual.ShowName.TextLabel
G2L["77"] = Instance.new("TextLabel", G2L["6d"]);
G2L["77"]["TextStrokeTransparency"] = 0;
G2L["77"]["BorderSizePixel"] = 0;
G2L["77"]["TextSize"] = 22;
G2L["77"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["77"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["77"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["77"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["77"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["77"]["BackgroundTransparency"] = 1;
G2L["77"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["77"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["77"]["Text"] = [[Show Name]];


-- StarterGui.StarterUi.Main.Frame.Visual.ShowHP
G2L["78"] = Instance.new("Frame", G2L["60"]);
G2L["78"]["BorderSizePixel"] = 0;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["78"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["78"]["Position"] = UDim2.new(0, 0, 0.4, 0);
G2L["78"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["78"]["Name"] = [[ShowHP]];
G2L["78"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Visual.ShowHP.Slider
G2L["79"] = Instance.new("Frame", G2L["78"]);
G2L["79"]["BorderSizePixel"] = 0;
G2L["79"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["79"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["79"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["79"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["79"]["Name"] = [[Slider]];


-- StarterGui.StarterUi.Main.Frame.Visual.ShowHP.Slider.UICorner
G2L["7a"] = Instance.new("UICorner", G2L["79"]);
G2L["7a"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Visual.ShowHP.Slider.Dot
G2L["7b"] = Instance.new("Frame", G2L["79"]);
G2L["7b"]["BorderSizePixel"] = 0;
G2L["7b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7b"]["Size"] = UDim2.new(0.8, 0, 0.8, 0);
G2L["7b"]["Position"] = UDim2.new(0.05, 0, 0.1, 0);
G2L["7b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7b"]["Name"] = [[Dot]];


-- StarterGui.StarterUi.Main.Frame.Visual.ShowHP.Slider.Dot.UIAspectRatioConstraint
G2L["7c"] = Instance.new("UIAspectRatioConstraint", G2L["7b"]);



-- StarterGui.StarterUi.Main.Frame.Visual.ShowHP.Slider.Dot.UICorner
G2L["7d"] = Instance.new("UICorner", G2L["7b"]);
G2L["7d"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Visual.ShowHP.Slider.State
G2L["7e"] = Instance.new("BoolValue", G2L["79"]);
G2L["7e"]["Name"] = [[State]];


-- StarterGui.StarterUi.Main.Frame.Visual.ShowHP.Slider.Trigger
G2L["7f"] = Instance.new("ImageButton", G2L["79"]);
G2L["7f"]["BorderSizePixel"] = 0;
G2L["7f"]["ImageTransparency"] = 1;
G2L["7f"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["7f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7f"]["ZIndex"] = 2;
G2L["7f"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["7f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["7f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7f"]["Name"] = [[Trigger]];


-- StarterGui.StarterUi.Main.Frame.Visual.ShowHP.Slider.Trigger.TriggerEvent
G2L["80"] = Instance.new("LocalScript", G2L["7f"]);
G2L["80"]["Name"] = [[TriggerEvent]];


-- StarterGui.StarterUi.Main.Frame.Visual.ShowHP.Slider.Trigger.TriggerEvent._Source_TriggerEvent_129
G2L["81"] = Instance.new("StringValue", G2L["80"]);
G2L["81"]["Name"] = [[_Source_TriggerEvent_129]];
G2L["81"]["Value"] = [[local stateVal = script.Parent.Parent.State
local button = script.Parent
local background = script.Parent.Parent
local dot = script.Parent.Parent.Dot

button.Activated:Connect(function()
	if stateVal.Value == false then
		stateVal.Value = true
		background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
		dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
	elseif stateVal.Value == true then
		stateVal.Value = false
		background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
		dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
	end
end)
]];


-- StarterGui.StarterUi.Main.Frame.Visual.ShowHP.TextLabel
G2L["82"] = Instance.new("TextLabel", G2L["78"]);
G2L["82"]["TextStrokeTransparency"] = 0;
G2L["82"]["BorderSizePixel"] = 0;
G2L["82"]["TextSize"] = 22;
G2L["82"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["82"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["82"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["82"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["82"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["82"]["BackgroundTransparency"] = 1;
G2L["82"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["82"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["82"]["Text"] = [[Show Health]];


-- StarterGui.StarterUi.Main.Frame.Visual.Highlight
G2L["83"] = Instance.new("Frame", G2L["60"]);
G2L["83"]["BorderSizePixel"] = 0;
G2L["83"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["83"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["83"]["Position"] = UDim2.new(0, 0, 0.6, 0);
G2L["83"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["83"]["Name"] = [[Highlight]];
G2L["83"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Visual.Highlight.Slider
G2L["84"] = Instance.new("Frame", G2L["83"]);
G2L["84"]["BorderSizePixel"] = 0;
G2L["84"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["84"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["84"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["84"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["84"]["Name"] = [[Slider]];


-- StarterGui.StarterUi.Main.Frame.Visual.Highlight.Slider.UICorner
G2L["85"] = Instance.new("UICorner", G2L["84"]);
G2L["85"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Visual.Highlight.Slider.Dot
G2L["86"] = Instance.new("Frame", G2L["84"]);
G2L["86"]["BorderSizePixel"] = 0;
G2L["86"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["86"]["Size"] = UDim2.new(0.8, 0, 0.8, 0);
G2L["86"]["Position"] = UDim2.new(0.05, 0, 0.1, 0);
G2L["86"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["86"]["Name"] = [[Dot]];


-- StarterGui.StarterUi.Main.Frame.Visual.Highlight.Slider.Dot.UIAspectRatioConstraint
G2L["87"] = Instance.new("UIAspectRatioConstraint", G2L["86"]);



-- StarterGui.StarterUi.Main.Frame.Visual.Highlight.Slider.Dot.UICorner
G2L["88"] = Instance.new("UICorner", G2L["86"]);
G2L["88"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Visual.Highlight.Slider.State
G2L["89"] = Instance.new("BoolValue", G2L["84"]);
G2L["89"]["Name"] = [[State]];


-- StarterGui.StarterUi.Main.Frame.Visual.Highlight.Slider.Trigger
G2L["8a"] = Instance.new("ImageButton", G2L["84"]);
G2L["8a"]["BorderSizePixel"] = 0;
G2L["8a"]["ImageTransparency"] = 1;
G2L["8a"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["8a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8a"]["ZIndex"] = 2;
G2L["8a"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["8a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["8a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8a"]["Name"] = [[Trigger]];


-- StarterGui.StarterUi.Main.Frame.Visual.Highlight.Slider.Trigger.TriggerEvent
G2L["8b"] = Instance.new("LocalScript", G2L["8a"]);
G2L["8b"]["Name"] = [[TriggerEvent]];


-- StarterGui.StarterUi.Main.Frame.Visual.Highlight.Slider.Trigger.TriggerEvent._Source_TriggerEvent_140
G2L["8c"] = Instance.new("StringValue", G2L["8b"]);
G2L["8c"]["Name"] = [[_Source_TriggerEvent_140]];
G2L["8c"]["Value"] = [[local stateVal = script.Parent.Parent.State
local button = script.Parent
local background = script.Parent.Parent
local dot = script.Parent.Parent.Dot

button.Activated:Connect(function()
	if stateVal.Value == false then
		stateVal.Value = true
		background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
		dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
	elseif stateVal.Value == true then
		stateVal.Value = false
		background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
		dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
	end
end)
]];


-- StarterGui.StarterUi.Main.Frame.Visual.Highlight.TextLabel
G2L["8d"] = Instance.new("TextLabel", G2L["83"]);
G2L["8d"]["TextStrokeTransparency"] = 0;
G2L["8d"]["BorderSizePixel"] = 0;
G2L["8d"]["TextSize"] = 22;
G2L["8d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["8d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8d"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["8d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["8d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8d"]["BackgroundTransparency"] = 1;
G2L["8d"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["8d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8d"]["Text"] = [[Highlight]];


-- StarterGui.StarterUi.Main.Frame.Visual.Distance
G2L["8e"] = Instance.new("Frame", G2L["60"]);
G2L["8e"]["BorderSizePixel"] = 0;
G2L["8e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8e"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["8e"]["Position"] = UDim2.new(0, 0, 0.8, 0);
G2L["8e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8e"]["Name"] = [[Distance]];
G2L["8e"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Visual.Distance.Slider
G2L["8f"] = Instance.new("Frame", G2L["8e"]);
G2L["8f"]["BorderSizePixel"] = 0;
G2L["8f"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["8f"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["8f"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["8f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8f"]["Name"] = [[Slider]];


-- StarterGui.StarterUi.Main.Frame.Visual.Distance.Slider.UICorner
G2L["90"] = Instance.new("UICorner", G2L["8f"]);
G2L["90"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Visual.Distance.Slider.Dot
G2L["91"] = Instance.new("Frame", G2L["8f"]);
G2L["91"]["BorderSizePixel"] = 0;
G2L["91"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["91"]["Size"] = UDim2.new(0.8, 0, 0.8, 0);
G2L["91"]["Position"] = UDim2.new(0.05, 0, 0.1, 0);
G2L["91"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["91"]["Name"] = [[Dot]];


-- StarterGui.StarterUi.Main.Frame.Visual.Distance.Slider.Dot.UIAspectRatioConstraint
G2L["92"] = Instance.new("UIAspectRatioConstraint", G2L["91"]);



-- StarterGui.StarterUi.Main.Frame.Visual.Distance.Slider.Dot.UICorner
G2L["93"] = Instance.new("UICorner", G2L["91"]);
G2L["93"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Visual.Distance.Slider.State
G2L["94"] = Instance.new("BoolValue", G2L["8f"]);
G2L["94"]["Name"] = [[State]];


-- StarterGui.StarterUi.Main.Frame.Visual.Distance.Slider.Trigger
G2L["95"] = Instance.new("ImageButton", G2L["8f"]);
G2L["95"]["BorderSizePixel"] = 0;
G2L["95"]["ImageTransparency"] = 1;
G2L["95"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["95"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["95"]["ZIndex"] = 2;
G2L["95"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["95"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["95"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["95"]["Name"] = [[Trigger]];


-- StarterGui.StarterUi.Main.Frame.Visual.Distance.Slider.Trigger.TriggerEvent
G2L["96"] = Instance.new("LocalScript", G2L["95"]);
G2L["96"]["Name"] = [[TriggerEvent]];


-- StarterGui.StarterUi.Main.Frame.Visual.Distance.Slider.Trigger.TriggerEvent._Source_TriggerEvent_151
G2L["97"] = Instance.new("StringValue", G2L["96"]);
G2L["97"]["Name"] = [[_Source_TriggerEvent_151]];
G2L["97"]["Value"] = [[local stateVal = script.Parent.Parent.State
local button = script.Parent
local background = script.Parent.Parent
local dot = script.Parent.Parent.Dot

button.Activated:Connect(function()
	if stateVal.Value == false then
		stateVal.Value = true
		background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
		dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
	elseif stateVal.Value == true then
		stateVal.Value = false
		background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
		dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
	end
end)
]];


-- StarterGui.StarterUi.Main.Frame.Visual.Distance.TextLabel
G2L["98"] = Instance.new("TextLabel", G2L["8e"]);
G2L["98"]["TextStrokeTransparency"] = 0;
G2L["98"]["BorderSizePixel"] = 0;
G2L["98"]["TextSize"] = 22;
G2L["98"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["98"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["98"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["98"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["98"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["98"]["BackgroundTransparency"] = 1;
G2L["98"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["98"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["98"]["Text"] = [[Distance]];


-- StarterGui.StarterUi.Main.Frame.Visual.Tool
G2L["99"] = Instance.new("Frame", G2L["60"]);
G2L["99"]["BorderSizePixel"] = 0;
G2L["99"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["99"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["99"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["99"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["99"]["Name"] = [[Tool]];
G2L["99"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Visual.Tool.Slider
G2L["9a"] = Instance.new("Frame", G2L["99"]);
G2L["9a"]["BorderSizePixel"] = 0;
G2L["9a"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["9a"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["9a"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["9a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9a"]["Name"] = [[Slider]];


-- StarterGui.StarterUi.Main.Frame.Visual.Tool.Slider.UICorner
G2L["9b"] = Instance.new("UICorner", G2L["9a"]);
G2L["9b"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Visual.Tool.Slider.Dot
G2L["9c"] = Instance.new("Frame", G2L["9a"]);
G2L["9c"]["BorderSizePixel"] = 0;
G2L["9c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9c"]["Size"] = UDim2.new(0.8, 0, 0.8, 0);
G2L["9c"]["Position"] = UDim2.new(0.05, 0, 0.1, 0);
G2L["9c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9c"]["Name"] = [[Dot]];


-- StarterGui.StarterUi.Main.Frame.Visual.Tool.Slider.Dot.UIAspectRatioConstraint
G2L["9d"] = Instance.new("UIAspectRatioConstraint", G2L["9c"]);



-- StarterGui.StarterUi.Main.Frame.Visual.Tool.Slider.Dot.UICorner
G2L["9e"] = Instance.new("UICorner", G2L["9c"]);
G2L["9e"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Visual.Tool.Slider.State
G2L["9f"] = Instance.new("BoolValue", G2L["9a"]);
G2L["9f"]["Name"] = [[State]];


-- StarterGui.StarterUi.Main.Frame.Visual.Tool.Slider.Trigger
G2L["a0"] = Instance.new("ImageButton", G2L["9a"]);
G2L["a0"]["BorderSizePixel"] = 0;
G2L["a0"]["ImageTransparency"] = 1;
G2L["a0"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["a0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a0"]["ZIndex"] = 2;
G2L["a0"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["a0"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["a0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a0"]["Name"] = [[Trigger]];


-- StarterGui.StarterUi.Main.Frame.Visual.Tool.Slider.Trigger.TriggerEvent
G2L["a1"] = Instance.new("LocalScript", G2L["a0"]);
G2L["a1"]["Name"] = [[TriggerEvent]];


-- StarterGui.StarterUi.Main.Frame.Visual.Tool.Slider.Trigger.TriggerEvent._Source_TriggerEvent_162
G2L["a2"] = Instance.new("StringValue", G2L["a1"]);
G2L["a2"]["Name"] = [[_Source_TriggerEvent_162]];
G2L["a2"]["Value"] = [[local stateVal = script.Parent.Parent.State
local button = script.Parent
local background = script.Parent.Parent
local dot = script.Parent.Parent.Dot

button.Activated:Connect(function()
	if stateVal.Value == false then
		stateVal.Value = true
		background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
		dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
	elseif stateVal.Value == true then
		stateVal.Value = false
		background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
		dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
	end
end)
]];


-- StarterGui.StarterUi.Main.Frame.Visual.Tool.TextLabel
G2L["a3"] = Instance.new("TextLabel", G2L["99"]);
G2L["a3"]["TextStrokeTransparency"] = 0;
G2L["a3"]["BorderSizePixel"] = 0;
G2L["a3"]["TextSize"] = 22;
G2L["a3"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a3"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["a3"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["a3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a3"]["BackgroundTransparency"] = 1;
G2L["a3"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["a3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a3"]["Text"] = [[Show Tool]];


-- StarterGui.StarterUi.Main.Frame.Visual.Teams
G2L["a4"] = Instance.new("Frame", G2L["60"]);
G2L["a4"]["BorderSizePixel"] = 0;
G2L["a4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a4"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["a4"]["Position"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["a4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a4"]["Name"] = [[Teams]];
G2L["a4"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Visual.Teams.Slider
G2L["a5"] = Instance.new("Frame", G2L["a4"]);
G2L["a5"]["BorderSizePixel"] = 0;
G2L["a5"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["a5"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["a5"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["a5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a5"]["Name"] = [[Slider]];


-- StarterGui.StarterUi.Main.Frame.Visual.Teams.Slider.UICorner
G2L["a6"] = Instance.new("UICorner", G2L["a5"]);
G2L["a6"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Visual.Teams.Slider.Dot
G2L["a7"] = Instance.new("Frame", G2L["a5"]);
G2L["a7"]["BorderSizePixel"] = 0;
G2L["a7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a7"]["Size"] = UDim2.new(0.8, 0, 0.8, 0);
G2L["a7"]["Position"] = UDim2.new(0.05, 0, 0.1, 0);
G2L["a7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a7"]["Name"] = [[Dot]];


-- StarterGui.StarterUi.Main.Frame.Visual.Teams.Slider.Dot.UIAspectRatioConstraint
G2L["a8"] = Instance.new("UIAspectRatioConstraint", G2L["a7"]);



-- StarterGui.StarterUi.Main.Frame.Visual.Teams.Slider.Dot.UICorner
G2L["a9"] = Instance.new("UICorner", G2L["a7"]);
G2L["a9"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Visual.Teams.Slider.State
G2L["aa"] = Instance.new("BoolValue", G2L["a5"]);
G2L["aa"]["Name"] = [[State]];


-- StarterGui.StarterUi.Main.Frame.Visual.Teams.Slider.Trigger
G2L["ab"] = Instance.new("ImageButton", G2L["a5"]);
G2L["ab"]["BorderSizePixel"] = 0;
G2L["ab"]["ImageTransparency"] = 1;
G2L["ab"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["ab"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ab"]["ZIndex"] = 2;
G2L["ab"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["ab"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["ab"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ab"]["Name"] = [[Trigger]];


-- StarterGui.StarterUi.Main.Frame.Visual.Teams.Slider.Trigger.TriggerEvent
G2L["ac"] = Instance.new("LocalScript", G2L["ab"]);
G2L["ac"]["Name"] = [[TriggerEvent]];


-- StarterGui.StarterUi.Main.Frame.Visual.Teams.Slider.Trigger.TriggerEvent._Source_TriggerEvent_173
G2L["ad"] = Instance.new("StringValue", G2L["ac"]);
G2L["ad"]["Name"] = [[_Source_TriggerEvent_173]];
G2L["ad"]["Value"] = [[local stateVal = script.Parent.Parent.State
local button = script.Parent
local background = script.Parent.Parent
local dot = script.Parent.Parent.Dot

button.Activated:Connect(function()
	if stateVal.Value == false then
		stateVal.Value = true
		background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
		dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
	elseif stateVal.Value == true then
		stateVal.Value = false
		background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
		dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
	end
end)
]];


-- StarterGui.StarterUi.Main.Frame.Visual.Teams.TextLabel
G2L["ae"] = Instance.new("TextLabel", G2L["a4"]);
G2L["ae"]["TextStrokeTransparency"] = 0;
G2L["ae"]["BorderSizePixel"] = 0;
G2L["ae"]["TextSize"] = 22;
G2L["ae"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ae"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ae"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["ae"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["ae"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ae"]["BackgroundTransparency"] = 1;
G2L["ae"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["ae"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ae"]["Text"] = [[Show Enemy]];


-- StarterGui.StarterUi.Main.Frame.Aim
G2L["af"] = Instance.new("Frame", G2L["21"]);
G2L["af"]["Visible"] = false;
G2L["af"]["BorderSizePixel"] = 0;
G2L["af"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["af"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["af"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["af"]["Name"] = [[Aim]];
G2L["af"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Aim.AimHandler
G2L["b0"] = Instance.new("LocalScript", G2L["af"]);
G2L["b0"]["Name"] = [[AimHandler]];


-- StarterGui.StarterUi.Main.Frame.Aim.AimHandler._Source_AimHandler_177
G2L["b1"] = Instance.new("StringValue", G2L["b0"]);
G2L["b1"]["Name"] = [[_Source_AimHandler_177]];
G2L["b1"]["Value"] = [[--// Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera

--// References
local AimFrame = script.Parent
local MainFrame = AimFrame.Parent.Parent.Parent
local AimLockFrame = AimFrame:FindFirstChild("AimLock")
local SmoothFrame = AimFrame:FindFirstChild("AimSmoothness")
local FovFrame = AimFrame:FindFirstChild("FovCircle")
local WallCheckFrame = AimFrame:FindFirstChild("WallCheck") -- new slider
local FovSizeBox = AimFrame:FindFirstChild("FovCircleSize") and AimFrame.FovCircleSize:FindFirstChild("Key")
local TargetPartBox = AimFrame:FindFirstChild("TargerPart") and AimFrame.TargerPart:FindFirstChild("Key")
local AimKeyBox = AimFrame:FindFirstChild("AimKey") and AimFrame.AimKey:FindFirstChild("Key")

--// Config
local config = {
	aimOn = false,
	smoothOn = false,
	fovVisual = false,
	fovRadius = 0,
	wallCheck = false,
	targetPart = "Head",
	aimKey = Enum.KeyCode.X
}

--// Utils
local function getBoolFromSlider(frame)
	if frame then
		local slider = frame:FindFirstChild("Slider")
		if slider then
			local state = slider:FindFirstChild("State")
			if state and state:IsA("BoolValue") then
				return state.Value
			end
		end
	end
	return false
end

local function getNumber(textBox)
	if textBox then
		local num = tonumber(textBox.Text)
		return num or 0
	end
	return 0
end

-- Update config
local function updateConfig()
	local newConfig = {
		aimOn = getBoolFromSlider(AimLockFrame),
		smoothOn = getBoolFromSlider(SmoothFrame),
		fovVisual = getBoolFromSlider(FovFrame),
		wallCheck = getBoolFromSlider(WallCheckFrame),
		fovRadius = getNumber(FovSizeBox),
		targetPart = TargetPartBox and (TargetPartBox.Text ~= "" and TargetPartBox.Text or "Head") or "Head"
	}

	local aimKeyText = AimKeyBox and AimKeyBox.Text:upper() or ""
	local keyEnum = nil
	for _, key in ipairs(Enum.KeyCode:GetEnumItems()) do
		if key.Name:upper() == aimKeyText then
			keyEnum = key
			break
		end
	end
	if keyEnum then
		newConfig.aimKey = keyEnum
	end

	for k, v in pairs(newConfig) do
		if config[k] ~= v then
			config[k] = v
			print("Config changed:", k, "->", v)
		end
	end
end

-- Connect sliders
for _, frame in pairs({AimLockFrame, SmoothFrame, FovFrame, WallCheckFrame}) do
	if frame then
		local slider = frame:FindFirstChild("Slider")
		if slider then
			local state = slider:FindFirstChild("State")
			if state then
				state.Changed:Connect(updateConfig)
			end
		end
	end
end

if FovSizeBox then FovSizeBox:GetPropertyChangedSignal("Text"):Connect(updateConfig) end
if TargetPartBox then TargetPartBox:GetPropertyChangedSignal("Text"):Connect(updateConfig) end
if AimKeyBox then AimKeyBox:GetPropertyChangedSignal("Text"):Connect(updateConfig) end

updateConfig()

--// FOV Circle Setup
local fovCircle = Instance.new("Frame")
fovCircle.Name = "FovVisual"
fovCircle.AnchorPoint = Vector2.new(0.5, 0.5)
fovCircle.Size = UDim2.new(0, config.fovRadius * 2, 0, config.fovRadius * 2)
fovCircle.Position = UDim2.new(0.5, 0, 0.5, 0)
fovCircle.BackgroundTransparency = 1
fovCircle.BorderSizePixel = 0
fovCircle.Parent = MainFrame

local fovUICorner = Instance.new("UICorner")
fovUICorner.CornerRadius = UDim.new(1, 0)
fovUICorner.Parent = fovCircle

local fovStroke = Instance.new("UIStroke")
fovStroke.Thickness = 3
fovStroke.Color = Color3.fromRGB(255, 0, 0)
fovStroke.Parent = fovCircle

--// Aim Logic
local lockedTarget = nil

local function isTargetVisible(part)
	if not config.wallCheck then
		return true
	end

	local origin = Camera.CFrame.Position
	local direction = (part.Position - origin).Unit * (part.Position - origin).Magnitude
	local raycastParams = RaycastParams.new()
	raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
	raycastParams.FilterDescendantsInstances = {part.Parent:GetChildren()} -- ignore character parts
	local result = workspace:Raycast(origin, direction, raycastParams)
	return not result
end

local function getClosestPlayerTarget()
	local closestDist = config.fovRadius
	local closestPart = nil
	local center = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)

	for _, player in ipairs(Players:GetPlayers()) do
		if player ~= Players.LocalPlayer and player.Character and player.Character:FindFirstChild(config.targetPart) then
			local part = player.Character[config.targetPart]
			local screenPos, onScreen = Camera:WorldToViewportPoint(part.Position)
			if onScreen then
				local dist = (Vector2.new(screenPos.X, screenPos.Y) - center).Magnitude
				if dist <= closestDist and isTargetVisible(part) then
					closestDist = dist
					closestPart = part
				end
			end
		end
	end

	if closestPart then
		print("Locked target:", closestPart:GetFullName())
	end

	return closestPart
end

-- Aim Key
local mouseDown = false
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == config.aimKey then
		mouseDown = true
		lockedTarget = nil
		print("Aim key pressed")
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == config.aimKey then
		mouseDown = false
		lockedTarget = nil
		print("Aim key released")
	end
end)

RunService.RenderStepped:Connect(function(delta)
	updateConfig()
	fovCircle.Visible = config.fovVisual
	fovCircle.Size = UDim2.new(0, config.fovRadius * 2, 0, config.fovRadius * 2)

	if config.aimOn and mouseDown then
		if not lockedTarget then
			lockedTarget = getClosestPlayerTarget()
		end

		if lockedTarget then
			local currentCFrame = Camera.CFrame
			local targetCFrame = CFrame.new(currentCFrame.Position, lockedTarget.Position)
			if config.smoothOn then
				Camera.CFrame = currentCFrame:Lerp(targetCFrame, 0.35)
			else
				Camera.CFrame = targetCFrame
			end
		end
	else
		lockedTarget = nil
	end
end)
]];


-- StarterGui.StarterUi.Main.Frame.Aim.AimLock
G2L["b2"] = Instance.new("Frame", G2L["af"]);
G2L["b2"]["BorderSizePixel"] = 0;
G2L["b2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b2"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["b2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b2"]["Name"] = [[AimLock]];
G2L["b2"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Aim.AimLock.Slider
G2L["b3"] = Instance.new("Frame", G2L["b2"]);
G2L["b3"]["BorderSizePixel"] = 0;
G2L["b3"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["b3"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["b3"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["b3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b3"]["Name"] = [[Slider]];


-- StarterGui.StarterUi.Main.Frame.Aim.AimLock.Slider.UICorner
G2L["b4"] = Instance.new("UICorner", G2L["b3"]);
G2L["b4"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Aim.AimLock.Slider.Dot
G2L["b5"] = Instance.new("Frame", G2L["b3"]);
G2L["b5"]["BorderSizePixel"] = 0;
G2L["b5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b5"]["Size"] = UDim2.new(0.8, 0, 0.8, 0);
G2L["b5"]["Position"] = UDim2.new(0.05, 0, 0.1, 0);
G2L["b5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b5"]["Name"] = [[Dot]];


-- StarterGui.StarterUi.Main.Frame.Aim.AimLock.Slider.Dot.UIAspectRatioConstraint
G2L["b6"] = Instance.new("UIAspectRatioConstraint", G2L["b5"]);



-- StarterGui.StarterUi.Main.Frame.Aim.AimLock.Slider.Dot.UICorner
G2L["b7"] = Instance.new("UICorner", G2L["b5"]);
G2L["b7"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Aim.AimLock.Slider.State
G2L["b8"] = Instance.new("BoolValue", G2L["b3"]);
G2L["b8"]["Name"] = [[State]];


-- StarterGui.StarterUi.Main.Frame.Aim.AimLock.Slider.Trigger
G2L["b9"] = Instance.new("ImageButton", G2L["b3"]);
G2L["b9"]["BorderSizePixel"] = 0;
G2L["b9"]["ImageTransparency"] = 1;
G2L["b9"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["b9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b9"]["ZIndex"] = 2;
G2L["b9"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["b9"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["b9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b9"]["Name"] = [[Trigger]];


-- StarterGui.StarterUi.Main.Frame.Aim.AimLock.Slider.Trigger.TriggerEvent
G2L["ba"] = Instance.new("LocalScript", G2L["b9"]);
G2L["ba"]["Name"] = [[TriggerEvent]];


-- StarterGui.StarterUi.Main.Frame.Aim.AimLock.Slider.Trigger.TriggerEvent._Source_TriggerEvent_187
G2L["bb"] = Instance.new("StringValue", G2L["ba"]);
G2L["bb"]["Name"] = [[_Source_TriggerEvent_187]];
G2L["bb"]["Value"] = [[local stateVal = script.Parent.Parent.State
local button = script.Parent
local background = script.Parent.Parent
local dot = script.Parent.Parent.Dot

button.Activated:Connect(function()
	if stateVal.Value == false then
		stateVal.Value = true
		background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
		dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
	elseif stateVal.Value == true then
		stateVal.Value = false
		background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
		dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
	end
end)
]];


-- StarterGui.StarterUi.Main.Frame.Aim.AimLock.TextLabel
G2L["bc"] = Instance.new("TextLabel", G2L["b2"]);
G2L["bc"]["TextStrokeTransparency"] = 0;
G2L["bc"]["BorderSizePixel"] = 0;
G2L["bc"]["TextSize"] = 22;
G2L["bc"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["bc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bc"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["bc"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["bc"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bc"]["BackgroundTransparency"] = 1;
G2L["bc"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["bc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bc"]["Text"] = [[Aim Lock]];


-- StarterGui.StarterUi.Main.Frame.Aim.AimKey
G2L["bd"] = Instance.new("Frame", G2L["af"]);
G2L["bd"]["BorderSizePixel"] = 0;
G2L["bd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bd"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["bd"]["Position"] = UDim2.new(0.5, 0, 0.8, 0);
G2L["bd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bd"]["Name"] = [[AimKey]];
G2L["bd"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Aim.AimKey.TextLabel
G2L["be"] = Instance.new("TextLabel", G2L["bd"]);
G2L["be"]["TextStrokeTransparency"] = 0;
G2L["be"]["BorderSizePixel"] = 0;
G2L["be"]["TextSize"] = 22;
G2L["be"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["be"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["be"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["be"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["be"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["be"]["BackgroundTransparency"] = 1;
G2L["be"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["be"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["be"]["Text"] = [[Aim Key]];


-- StarterGui.StarterUi.Main.Frame.Aim.AimKey.Key
G2L["bf"] = Instance.new("TextBox", G2L["bd"]);
G2L["bf"]["TextStrokeTransparency"] = 0;
G2L["bf"]["Name"] = [[Key]];
G2L["bf"]["BorderSizePixel"] = 0;
G2L["bf"]["TextWrapped"] = true;
G2L["bf"]["TextSize"] = 14;
G2L["bf"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bf"]["TextScaled"] = true;
G2L["bf"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["bf"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["bf"]["PlaceholderText"] = [[...]];
G2L["bf"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["bf"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["bf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bf"]["Text"] = [[]];


-- StarterGui.StarterUi.Main.Frame.Aim.AimKey.Key.UICorner
G2L["c0"] = Instance.new("UICorner", G2L["bf"]);
G2L["c0"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Aim.FovCircle
G2L["c1"] = Instance.new("Frame", G2L["af"]);
G2L["c1"]["BorderSizePixel"] = 0;
G2L["c1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c1"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["c1"]["Position"] = UDim2.new(0, 0, 0.6, 0);
G2L["c1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c1"]["Name"] = [[FovCircle]];
G2L["c1"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Aim.FovCircle.Slider
G2L["c2"] = Instance.new("Frame", G2L["c1"]);
G2L["c2"]["BorderSizePixel"] = 0;
G2L["c2"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["c2"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["c2"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["c2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c2"]["Name"] = [[Slider]];


-- StarterGui.StarterUi.Main.Frame.Aim.FovCircle.Slider.UICorner
G2L["c3"] = Instance.new("UICorner", G2L["c2"]);
G2L["c3"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Aim.FovCircle.Slider.Dot
G2L["c4"] = Instance.new("Frame", G2L["c2"]);
G2L["c4"]["BorderSizePixel"] = 0;
G2L["c4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c4"]["Size"] = UDim2.new(0.8, 0, 0.8, 0);
G2L["c4"]["Position"] = UDim2.new(0.05, 0, 0.1, 0);
G2L["c4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c4"]["Name"] = [[Dot]];


-- StarterGui.StarterUi.Main.Frame.Aim.FovCircle.Slider.Dot.UIAspectRatioConstraint
G2L["c5"] = Instance.new("UIAspectRatioConstraint", G2L["c4"]);



-- StarterGui.StarterUi.Main.Frame.Aim.FovCircle.Slider.Dot.UICorner
G2L["c6"] = Instance.new("UICorner", G2L["c4"]);
G2L["c6"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Aim.FovCircle.Slider.State
G2L["c7"] = Instance.new("BoolValue", G2L["c2"]);
G2L["c7"]["Name"] = [[State]];


-- StarterGui.StarterUi.Main.Frame.Aim.FovCircle.Slider.Trigger
G2L["c8"] = Instance.new("ImageButton", G2L["c2"]);
G2L["c8"]["BorderSizePixel"] = 0;
G2L["c8"]["ImageTransparency"] = 1;
G2L["c8"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["c8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c8"]["ZIndex"] = 2;
G2L["c8"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["c8"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["c8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c8"]["Name"] = [[Trigger]];


-- StarterGui.StarterUi.Main.Frame.Aim.FovCircle.Slider.Trigger.TriggerEvent
G2L["c9"] = Instance.new("LocalScript", G2L["c8"]);
G2L["c9"]["Name"] = [[TriggerEvent]];


-- StarterGui.StarterUi.Main.Frame.Aim.FovCircle.Slider.Trigger.TriggerEvent._Source_TriggerEvent_202
G2L["ca"] = Instance.new("StringValue", G2L["c9"]);
G2L["ca"]["Name"] = [[_Source_TriggerEvent_202]];
G2L["ca"]["Value"] = [[local stateVal = script.Parent.Parent.State
local button = script.Parent
local background = script.Parent.Parent
local dot = script.Parent.Parent.Dot

button.Activated:Connect(function()
	if stateVal.Value == false then
		stateVal.Value = true
		background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
		dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
	elseif stateVal.Value == true then
		stateVal.Value = false
		background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
		dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
	end
end)
]];


-- StarterGui.StarterUi.Main.Frame.Aim.FovCircle.TextLabel
G2L["cb"] = Instance.new("TextLabel", G2L["c1"]);
G2L["cb"]["TextStrokeTransparency"] = 0;
G2L["cb"]["BorderSizePixel"] = 0;
G2L["cb"]["TextSize"] = 22;
G2L["cb"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["cb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cb"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["cb"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["cb"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cb"]["BackgroundTransparency"] = 1;
G2L["cb"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["cb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cb"]["Text"] = [[Fov Circle]];


-- StarterGui.StarterUi.Main.Frame.Aim.FovCircleSize
G2L["cc"] = Instance.new("Frame", G2L["af"]);
G2L["cc"]["BorderSizePixel"] = 0;
G2L["cc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cc"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["cc"]["Position"] = UDim2.new(0, 0, 0.8, 0);
G2L["cc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cc"]["Name"] = [[FovCircleSize]];
G2L["cc"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Aim.FovCircleSize.TextLabel
G2L["cd"] = Instance.new("TextLabel", G2L["cc"]);
G2L["cd"]["TextStrokeTransparency"] = 0;
G2L["cd"]["BorderSizePixel"] = 0;
G2L["cd"]["TextSize"] = 22;
G2L["cd"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["cd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cd"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["cd"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["cd"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cd"]["BackgroundTransparency"] = 1;
G2L["cd"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["cd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cd"]["Text"] = [[Fov Size]];


-- StarterGui.StarterUi.Main.Frame.Aim.FovCircleSize.Key
G2L["ce"] = Instance.new("TextBox", G2L["cc"]);
G2L["ce"]["TextStrokeTransparency"] = 0;
G2L["ce"]["Name"] = [[Key]];
G2L["ce"]["BorderSizePixel"] = 0;
G2L["ce"]["TextWrapped"] = true;
G2L["ce"]["TextSize"] = 14;
G2L["ce"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ce"]["TextScaled"] = true;
G2L["ce"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["ce"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["ce"]["PlaceholderText"] = [[px]];
G2L["ce"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["ce"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["ce"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ce"]["Text"] = [[]];


-- StarterGui.StarterUi.Main.Frame.Aim.FovCircleSize.Key.UICorner
G2L["cf"] = Instance.new("UICorner", G2L["ce"]);
G2L["cf"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Aim.AimSmoothness
G2L["d0"] = Instance.new("Frame", G2L["af"]);
G2L["d0"]["BorderSizePixel"] = 0;
G2L["d0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d0"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["d0"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["d0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d0"]["Name"] = [[AimSmoothness]];
G2L["d0"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Aim.AimSmoothness.TextLabel
G2L["d1"] = Instance.new("TextLabel", G2L["d0"]);
G2L["d1"]["TextStrokeTransparency"] = 0;
G2L["d1"]["BorderSizePixel"] = 0;
G2L["d1"]["TextSize"] = 22;
G2L["d1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d1"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["d1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["d1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d1"]["BackgroundTransparency"] = 1;
G2L["d1"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["d1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d1"]["Text"] = [[Smoothness]];


-- StarterGui.StarterUi.Main.Frame.Aim.AimSmoothness.Slider
G2L["d2"] = Instance.new("Frame", G2L["d0"]);
G2L["d2"]["BorderSizePixel"] = 0;
G2L["d2"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["d2"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["d2"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["d2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d2"]["Name"] = [[Slider]];


-- StarterGui.StarterUi.Main.Frame.Aim.AimSmoothness.Slider.UICorner
G2L["d3"] = Instance.new("UICorner", G2L["d2"]);
G2L["d3"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Aim.AimSmoothness.Slider.Dot
G2L["d4"] = Instance.new("Frame", G2L["d2"]);
G2L["d4"]["BorderSizePixel"] = 0;
G2L["d4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d4"]["Size"] = UDim2.new(0.8, 0, 0.8, 0);
G2L["d4"]["Position"] = UDim2.new(0.05, 0, 0.1, 0);
G2L["d4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d4"]["Name"] = [[Dot]];


-- StarterGui.StarterUi.Main.Frame.Aim.AimSmoothness.Slider.Dot.UIAspectRatioConstraint
G2L["d5"] = Instance.new("UIAspectRatioConstraint", G2L["d4"]);



-- StarterGui.StarterUi.Main.Frame.Aim.AimSmoothness.Slider.Dot.UICorner
G2L["d6"] = Instance.new("UICorner", G2L["d4"]);
G2L["d6"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Aim.AimSmoothness.Slider.State
G2L["d7"] = Instance.new("BoolValue", G2L["d2"]);
G2L["d7"]["Name"] = [[State]];


-- StarterGui.StarterUi.Main.Frame.Aim.AimSmoothness.Slider.Trigger
G2L["d8"] = Instance.new("ImageButton", G2L["d2"]);
G2L["d8"]["BorderSizePixel"] = 0;
G2L["d8"]["ImageTransparency"] = 1;
G2L["d8"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["d8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d8"]["ZIndex"] = 2;
G2L["d8"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["d8"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["d8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d8"]["Name"] = [[Trigger]];


-- StarterGui.StarterUi.Main.Frame.Aim.AimSmoothness.Slider.Trigger.TriggerEvent
G2L["d9"] = Instance.new("LocalScript", G2L["d8"]);
G2L["d9"]["Name"] = [[TriggerEvent]];


-- StarterGui.StarterUi.Main.Frame.Aim.AimSmoothness.Slider.Trigger.TriggerEvent._Source_TriggerEvent_218
G2L["da"] = Instance.new("StringValue", G2L["d9"]);
G2L["da"]["Name"] = [[_Source_TriggerEvent_218]];
G2L["da"]["Value"] = [[local stateVal = script.Parent.Parent.State
local button = script.Parent
local background = script.Parent.Parent
local dot = script.Parent.Parent.Dot

button.Activated:Connect(function()
	if stateVal.Value == false then
		stateVal.Value = true
		background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
		dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
	elseif stateVal.Value == true then
		stateVal.Value = false
		background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
		dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
	end
end)
]];


-- StarterGui.StarterUi.Main.Frame.Aim.TargerPart
G2L["db"] = Instance.new("Frame", G2L["af"]);
G2L["db"]["BorderSizePixel"] = 0;
G2L["db"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["db"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["db"]["Position"] = UDim2.new(0, 0, 0.2, 0);
G2L["db"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["db"]["Name"] = [[TargerPart]];
G2L["db"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Aim.TargerPart.TextLabel
G2L["dc"] = Instance.new("TextLabel", G2L["db"]);
G2L["dc"]["TextStrokeTransparency"] = 0;
G2L["dc"]["BorderSizePixel"] = 0;
G2L["dc"]["TextSize"] = 22;
G2L["dc"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["dc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["dc"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["dc"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["dc"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["dc"]["BackgroundTransparency"] = 1;
G2L["dc"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["dc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["dc"]["Text"] = [[Target]];


-- StarterGui.StarterUi.Main.Frame.Aim.TargerPart.Key
G2L["dd"] = Instance.new("TextBox", G2L["db"]);
G2L["dd"]["TextStrokeTransparency"] = 0;
G2L["dd"]["Name"] = [[Key]];
G2L["dd"]["BorderSizePixel"] = 0;
G2L["dd"]["TextWrapped"] = true;
G2L["dd"]["TextSize"] = 14;
G2L["dd"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["dd"]["TextScaled"] = true;
G2L["dd"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["dd"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);

G2L["dd"]["PlaceholderText"] = [[part]];
G2L["dd"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["dd"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["dd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["dd"]["Text"] = [[]];


-- StarterGui.StarterUi.Main.Frame.Aim.TargerPart.Key.UICorner
G2L["de"] = Instance.new("UICorner", G2L["dd"]);
G2L["de"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Aim.WallCheck
G2L["df"] = Instance.new("Frame", G2L["af"]);
G2L["df"]["BorderSizePixel"] = 0;
G2L["df"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["df"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["df"]["Position"] = UDim2.new(0, 0, 0.4, 0);
G2L["df"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["df"]["Name"] = [[WallCheck]];
G2L["df"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Aim.WallCheck.TextLabel
G2L["e0"] = Instance.new("TextLabel", G2L["df"]);
G2L["e0"]["TextStrokeTransparency"] = 0;
G2L["e0"]["BorderSizePixel"] = 0;
G2L["e0"]["TextSize"] = 22;
G2L["e0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["e0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e0"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["e0"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["e0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e0"]["BackgroundTransparency"] = 1;
G2L["e0"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["e0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e0"]["Text"] = [[Wall Check]];


-- StarterGui.StarterUi.Main.Frame.Aim.WallCheck.Slider
G2L["e1"] = Instance.new("Frame", G2L["df"]);
G2L["e1"]["BorderSizePixel"] = 0;
G2L["e1"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["e1"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["e1"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["e1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e1"]["Name"] = [[Slider]];


-- StarterGui.StarterUi.Main.Frame.Aim.WallCheck.Slider.UICorner
G2L["e2"] = Instance.new("UICorner", G2L["e1"]);
G2L["e2"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Aim.WallCheck.Slider.Dot
G2L["e3"] = Instance.new("Frame", G2L["e1"]);
G2L["e3"]["BorderSizePixel"] = 0;
G2L["e3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e3"]["Size"] = UDim2.new(0.8, 0, 0.8, 0);
G2L["e3"]["Position"] = UDim2.new(0.05, 0, 0.1, 0);
G2L["e3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e3"]["Name"] = [[Dot]];


-- StarterGui.StarterUi.Main.Frame.Aim.WallCheck.Slider.Dot.UIAspectRatioConstraint
G2L["e4"] = Instance.new("UIAspectRatioConstraint", G2L["e3"]);



-- StarterGui.StarterUi.Main.Frame.Aim.WallCheck.Slider.Dot.UICorner
G2L["e5"] = Instance.new("UICorner", G2L["e3"]);
G2L["e5"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Aim.WallCheck.Slider.State
G2L["e6"] = Instance.new("BoolValue", G2L["e1"]);
G2L["e6"]["Name"] = [[State]];


-- StarterGui.StarterUi.Main.Frame.Aim.WallCheck.Slider.Trigger
G2L["e7"] = Instance.new("ImageButton", G2L["e1"]);
G2L["e7"]["BorderSizePixel"] = 0;
G2L["e7"]["ImageTransparency"] = 1;
G2L["e7"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["e7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e7"]["ZIndex"] = 2;
G2L["e7"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["e7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e7"]["Name"] = [[Trigger]];


-- StarterGui.StarterUi.Main.Frame.Aim.WallCheck.Slider.Trigger.TriggerEvent
G2L["e8"] = Instance.new("LocalScript", G2L["e7"]);
G2L["e8"]["Name"] = [[TriggerEvent]];


-- StarterGui.StarterUi.Main.Frame.Aim.WallCheck.Slider.Trigger.TriggerEvent._Source_TriggerEvent_233
G2L["e9"] = Instance.new("StringValue", G2L["e8"]);
G2L["e9"]["Name"] = [[_Source_TriggerEvent_233]];
G2L["e9"]["Value"] = [[local stateVal = script.Parent.Parent.State
local button = script.Parent
local background = script.Parent.Parent
local dot = script.Parent.Parent.Dot

button.Activated:Connect(function()
	if stateVal.Value == false then
		stateVal.Value = true
		background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
		dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
	elseif stateVal.Value == true then
		stateVal.Value = false
		background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
		dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
	end
end)
]];


-- StarterGui.StarterUi.Main.Frame.Aim.TeamCheck
G2L["ea"] = Instance.new("Frame", G2L["af"]);
G2L["ea"]["BorderSizePixel"] = 0;
G2L["ea"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ea"]["Size"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["ea"]["Position"] = UDim2.new(0.5, 0, 0.2, 0);
G2L["ea"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ea"]["Name"] = [[TeamCheck]];
G2L["ea"]["BackgroundTransparency"] = 1;


-- StarterGui.StarterUi.Main.Frame.Aim.TeamCheck.TextLabel
G2L["eb"] = Instance.new("TextLabel", G2L["ea"]);
G2L["eb"]["TextStrokeTransparency"] = 0;
G2L["eb"]["BorderSizePixel"] = 0;
G2L["eb"]["TextSize"] = 22;
G2L["eb"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["eb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["eb"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["eb"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["eb"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["eb"]["BackgroundTransparency"] = 1;
G2L["eb"]["Size"] = UDim2.new(0.7, 0, 1, 0);
G2L["eb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["eb"]["Text"] = [[Team Check]];


-- StarterGui.StarterUi.Main.Frame.Aim.TeamCheck.Slider
G2L["ec"] = Instance.new("Frame", G2L["ea"]);
G2L["ec"]["BorderSizePixel"] = 0;
G2L["ec"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["ec"]["Size"] = UDim2.new(0.3, 0, 0.5, 0);
G2L["ec"]["Position"] = UDim2.new(0.7, 0, 0.25, 0);
G2L["ec"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ec"]["Name"] = [[Slider]];


-- StarterGui.StarterUi.Main.Frame.Aim.TeamCheck.Slider.UICorner
G2L["ed"] = Instance.new("UICorner", G2L["ec"]);
G2L["ed"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Aim.TeamCheck.Slider.Dot
G2L["ee"] = Instance.new("Frame", G2L["ec"]);
G2L["ee"]["BorderSizePixel"] = 0;
G2L["ee"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ee"]["Size"] = UDim2.new(0.8, 0, 0.8, 0);
G2L["ee"]["Position"] = UDim2.new(0.05, 0, 0.1, 0);
G2L["ee"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ee"]["Name"] = [[Dot]];


-- StarterGui.StarterUi.Main.Frame.Aim.TeamCheck.Slider.Dot.UIAspectRatioConstraint
G2L["ef"] = Instance.new("UIAspectRatioConstraint", G2L["ee"]);



-- StarterGui.StarterUi.Main.Frame.Aim.TeamCheck.Slider.Dot.UICorner
G2L["f0"] = Instance.new("UICorner", G2L["ee"]);
G2L["f0"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.StarterUi.Main.Frame.Aim.TeamCheck.Slider.State
G2L["f1"] = Instance.new("BoolValue", G2L["ec"]);
G2L["f1"]["Name"] = [[State]];


-- StarterGui.StarterUi.Main.Frame.Aim.TeamCheck.Slider.Trigger
G2L["f2"] = Instance.new("ImageButton", G2L["ec"]);
G2L["f2"]["BorderSizePixel"] = 0;
G2L["f2"]["ImageTransparency"] = 1;
G2L["f2"]["BackgroundTransparency"] = 1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["f2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f2"]["ZIndex"] = 2;
G2L["f2"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["f2"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["f2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f2"]["Name"] = [[Trigger]];


-- StarterGui.StarterUi.Main.Frame.Aim.TeamCheck.Slider.Trigger.TriggerEvent
G2L["f3"] = Instance.new("LocalScript", G2L["f2"]);
G2L["f3"]["Name"] = [[TriggerEvent]];


-- StarterGui.StarterUi.Main.Frame.Aim.TeamCheck.Slider.Trigger.TriggerEvent._Source_TriggerEvent_218
G2L["f4"] = Instance.new("StringValue", G2L["f3"]);
G2L["f4"]["Name"] = [[_Source_TriggerEvent_218]];
G2L["f4"]["Value"] = [[local stateVal = script.Parent.Parent.State
local button = script.Parent
local background = script.Parent.Parent
local dot = script.Parent.Parent.Dot

button.Activated:Connect(function()
	if stateVal.Value == false then
		stateVal.Value = true
		background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
		dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
	elseif stateVal.Value == true then
		stateVal.Value = false
		background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
		dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
	end
end)
]];


-- StarterGui.StarterUi.Main.MainHandler
local function C_3()
local script = G2L["3"];
	local Main = script.Parent
	local List = Main:WaitForChild("List")
	local FrameContainer = Main:WaitForChild("Frame")
	
	-- Mapowanie przycisków na frame'y po ich faktycznej nazwie
	local categoryButtons = {
		Visual = {button = List:WaitForChild("Visual"):WaitForChild("Inside"):WaitForChild("Name"), frame = FrameContainer:WaitForChild("Visual")},
		Aim = {button = List:WaitForChild("Aim"):WaitForChild("Inside"):WaitForChild("Name"), frame = FrameContainer:WaitForChild("Aim")},
		Crosshair = {button = List:WaitForChild("Crosshair"):WaitForChild("Inside"):WaitForChild("Name"), frame = FrameContainer:WaitForChild("Crosshair")},
		Misc = {button = List:WaitForChild("Misc"):WaitForChild("Inside"):WaitForChild("Name"), frame = FrameContainer:WaitForChild("Misc")},
		Functions = {button = List:WaitForChild("Functions"):WaitForChild("Inside"):WaitForChild("Name"), frame = FrameContainer:WaitForChild("Functions")}
	}
	
	-- Ukrywa wszystkie frame'y
	local function hideAllFrames()
		for _, v in pairs(categoryButtons) do
			v.frame.Visible = false
		end
	end
	
	-- Obsługa kliknięcia przycisku
	for _, v in pairs(categoryButtons) do
		v.button.MouseButton1Click:Connect(function()
			hideAllFrames()
			v.frame.Visible = true
		end)
	end
	
	-- Pokaż domyślną kategorię przy starcie
	hideAllFrames()
	
end;
task.spawn(C_3);
-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairHandler
local function C_24()
local script = G2L["24"];
	-- Parent
	local CrosshairFrame = script.Parent -- Crosshair frame containing all sliders/buttons
	local GuiParent = CrosshairFrame.Parent.Parent.Parent -- This is Main.Frame where holder should go
	
	-- ===== SETTINGS =====
	local settings = {
		Size = 0,
		Thickness = 0,
		Color = Color3.new(1,1,1),
		Dot = false,
		Outline = false,
		Rotation = 0,
		Alpha = 1,
		Spacing = 0,
	}
	
	-- ===== UTIL =====
	local function parseColor(str)
		local r,g,b = str:match("(%d+),%s*(%d+),%s*(%d+)")
		if r and g and b then
			return Color3.fromRGB(tonumber(r), tonumber(g), tonumber(b))
		end
		return Color3.new(1,1,1)
	end
	
	-- ===== CREATE CROSSHAIR =====
	local function createCrosshair()
		-- Check if crosshair is enabled
		local enabled = CrosshairFrame.CrosshairMain.Slider.State.Value
		if not enabled then
			if GuiParent:FindFirstChild("CrosshairHolder") then
				GuiParent.CrosshairHolder:Destroy()
			end
			return
		end
	
		-- Remove old holder
		if GuiParent:FindFirstChild("CrosshairHolder") then
			GuiParent.CrosshairHolder:Destroy()
		end
	
		-- Holder
		local holder = Instance.new("Frame")
		holder.Name = "CrosshairHolder"
		holder.BackgroundTransparency = 1
		holder.Size = UDim2.new(0,0,0,0)
		holder.Position = UDim2.new(0.5,0,0.5,0)
		holder.AnchorPoint = Vector2.new(0.5,0.5)
		holder.Parent = GuiParent
	
		local s = settings.Size
		local t = settings.Thickness
		local sp = settings.Spacing
	
		local function createLine(offsetX, offsetY, width, height)
			local line = Instance.new("Frame")
			line.Size = UDim2.new(0,width,0,height)
			line.Position = UDim2.new(0.5, offsetX, 0.5, offsetY)
			line.AnchorPoint = Vector2.new(0.5,0.5)
			line.BackgroundColor3 = settings.Color
			line.BackgroundTransparency = 1 - settings.Alpha
			line.BorderSizePixel = settings.Outline and 1 or 0
			line.BorderColor3 = Color3.new(0,0,0)
			line.Parent = holder
		end
	
		-- Lines
		createLine(0, -(s/2 + sp + t/2), t, s) -- Top
		createLine(0, s/2 + sp + t/2, t, s) -- Bottom
		createLine(-(s/2 + sp + t/2), 0, s, t) -- Left
		createLine(s/2 + sp + t/2, 0, s, t) -- Right
	
		-- Central dot
		if settings.Dot then
			local dot = Instance.new("Frame")
			dot.Size = UDim2.new(0,t,0,t)
			dot.Position = UDim2.new(0.5,0,0.5,0)
			dot.AnchorPoint = Vector2.new(0.5,0.5)
			dot.BackgroundColor3 = settings.Color
			dot.BackgroundTransparency = 1 - settings.Alpha
			dot.BorderSizePixel = 0
			dot.Parent = holder
		end
	
		-- Rotation
		holder.Rotation = settings.Rotation
	end
	
	-- ===== GUI CONNECTIONS =====
	-- Slider on/off
	CrosshairFrame.CrosshairMain.Slider.State:GetPropertyChangedSignal("Value"):Connect(createCrosshair)
	
	-- Size
	CrosshairFrame.CrosshairSize.Key:GetPropertyChangedSignal("Text"):Connect(function()
		local val = tonumber(CrosshairFrame.CrosshairSize.Key.Text)
		if val then
			settings.Size = val
			createCrosshair()
		end
	end)
	
	-- Thickness
	CrosshairFrame.CrosshairThickness.Key:GetPropertyChangedSignal("Text"):Connect(function()
		local val = tonumber(CrosshairFrame.CrosshairThickness.Key.Text)
		if val then
			settings.Thickness = val
			createCrosshair()
		end
	end)
	
	-- Color
	CrosshairFrame.CrosshairColor.Key:GetPropertyChangedSignal("Text"):Connect(function()
		local val = parseColor(CrosshairFrame.CrosshairColor.Key.Text)
		if val then
			settings.Color = val
			createCrosshair()
		end
	end)
	
	-- Dot toggle
	local dotTrigger = CrosshairFrame.CrosshairDot.Slider.Trigger
	if dotTrigger then
		dotTrigger.MouseButton1Click:Connect(function()
			settings.Dot = not settings.Dot
			dotTrigger.Parent.BackgroundColor3 = settings.Dot and Color3.fromRGB(79,255,66) or Color3.fromRGB(100,100,100)
			createCrosshair()
		end)
	end
	
	-- Outline toggle
	local outlineTrigger = CrosshairFrame.CrosshairOutline.Slider.Trigger
	if outlineTrigger then
		outlineTrigger.MouseButton1Click:Connect(function()
			settings.Outline = not settings.Outline
			outlineTrigger.Parent.BackgroundColor3 = settings.Outline and Color3.fromRGB(79,255,66) or Color3.fromRGB(100,100,100)
			createCrosshair()
		end)
	end
	
	-- Rotation
	CrosshairFrame.CrosshairRotation.Key:GetPropertyChangedSignal("Text"):Connect(function()
		local val = tonumber(CrosshairFrame.CrosshairRotation.Key.Text)
		if val then
			settings.Rotation = val
			createCrosshair()
		end
	end)
	
	-- Alpha
	CrosshairFrame.CrosshairAlpha.Key:GetPropertyChangedSignal("Text"):Connect(function()
		local val = tonumber(CrosshairFrame.CrosshairAlpha.Key.Text)
		if val then
			settings.Alpha = math.clamp(val/100,0,1)
			createCrosshair()
		end
	end)
	
	-- Spacing
	if CrosshairFrame:FindFirstChild("CrosshairSpacing") then
		CrosshairFrame.CrosshairSpacing.Key:GetPropertyChangedSignal("Text"):Connect(function()
			local val = tonumber(CrosshairFrame.CrosshairSpacing.Key.Text)
			if val then
				settings.Spacing = val
				createCrosshair()
			end
		end)
	end
	
	-- ===== INITIAL CREATE =====
	createCrosshair()
	
end;
task.spawn(C_24);
-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairMain.Slider.Trigger.TriggerEvent
local function C_2e()
local script = G2L["2e"];
	local stateVal = script.Parent.Parent.State
	local button = script.Parent
	local background = script.Parent.Parent
	local dot = script.Parent.Parent.Dot
	
	button.Activated:Connect(function()
		if stateVal.Value == false then
			stateVal.Value = true
			background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
			dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
		elseif stateVal.Value == true then
			stateVal.Value = false
			background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
			dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
		end
	end)
	
end;
task.spawn(C_2e);
-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairDot.Slider.Trigger.TriggerEvent
local function C_45()
local script = G2L["45"];
	local stateVal = script.Parent.Parent.State
	local button = script.Parent
	local background = script.Parent.Parent
	local dot = script.Parent.Parent.Dot
	
	button.Activated:Connect(function()
		if stateVal.Value == false then
			stateVal.Value = true
			background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
			dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
		elseif stateVal.Value == true then
			stateVal.Value = false
			background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
			dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
		end
	end)
	
end;
task.spawn(C_45);
-- StarterGui.StarterUi.Main.Frame.Crosshair.CrosshairOutline.Slider.Trigger.TriggerEvent
local function C_50()
local script = G2L["50"];
	local stateVal = script.Parent.Parent.State
	local button = script.Parent
	local background = script.Parent.Parent
	local dot = script.Parent.Parent.Dot
	
	button.Activated:Connect(function()
		if stateVal.Value == false then
			stateVal.Value = true
			background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
			dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
		elseif stateVal.Value == true then
			stateVal.Value = false
			background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
			dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
		end
	end)
	
end;
task.spawn(C_50);
-- StarterGui.StarterUi.Main.Frame.Visual.VisualHandler
local function C_61()
local script = G2L["61"];
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local Camera = workspace.CurrentCamera
	
	-- =======================
	-- CONFIGURATION
	-- =======================
	local ESPEnabled = false
	local ShowNames = false
	local ShowHealthBars = false
	local ShowHighlights = false
	local ShowDistance = false
	local ShowTools = false
	local STeams = false
	local MaxDistance = 999999999
	local BaseWidth = 4
	local BaseHeight = 5
	local BaseDistance = 50
	local MinWidth = 4
	local MinHeight = 5
	local MaxWidth = 40
	local MaxHeight = 50
	local ScaleMultiplier = 0.35
	local DefaultToolIcon = "rbxassetid://112066521964735"
	
	-- =======================
	-- STORAGE
	-- =======================
	local activeBillboards = {}
	local activeConnections = {}
	local activeHighlights = {}
	
	-- =======================
	-- HIGHLIGHT FUNCTIONS
	-- =======================
	local function createHighlights(character)
		local highlights = {}
				local h = Instance.new("Highlight")
				if STeams == true and game.Players:GetPlayerFromCharacter(character).Team == game.Players.LocalPlayer.Team then
					h.FillColor = Color3.fromRGB(0,255,0)
				else
					h.FillColor = Color3.fromRGB(255,0,0)
				end
				h.FillTransparency = 0.5
				h.OutlineTransparency = 0
				h.OutlineColor = Color3.new(0,0,0)
				h.Adornee = character
				h.Parent = character
				h.Enabled = ShowHighlights
				table.insert(highlights, h)
	end
	
	local function destroyHighlights(character)
		if activeHighlights[character] then
			for _, h in pairs(activeHighlights[character]) do
				if h then h:Destroy() end
			end
			activeHighlights[character] = nil
		end
	end
	
	-- =======================
	-- ESP FUNCTIONS
	-- =======================
	local function createESP(hrp, character)
		if not hrp or not character then return end
	
		local ESPTemplate = Instance.new("BillboardGui")
		ESPTemplate.Name = "ESP"
		ESPTemplate.Adornee = hrp
		ESPTemplate.AlwaysOnTop = true
		ESPTemplate.Active = true
		ESPTemplate.Size = UDim2.new(BaseWidth,0,BaseHeight,0)
		ESPTemplate.MaxDistance = MaxDistance
		ESPTemplate.Parent = hrp
	
		-- Outline frames
		local Left = Instance.new("Frame", ESPTemplate)
		Left.BackgroundColor3 = Color3.new(1,1,1)
		Left.BorderSizePixel = 0
		Left.Size = UDim2.new(0.05,0,1,0)
	
		local Right = Instance.new("Frame", ESPTemplate)
		Right.BackgroundColor3 = Color3.new(1,1,1)
		Right.BorderSizePixel = 0
		Right.Position = UDim2.new(0.95,0,0,0)
		Right.Size = UDim2.new(0.05,0,1,0)
	
		local Top = Instance.new("Frame", ESPTemplate)
		Top.BackgroundColor3 = Color3.new(1,1,1)
		Top.BorderSizePixel = 0
		Top.Size = UDim2.new(1,0,0.05,0)
	
		local Bottom = Instance.new("Frame", ESPTemplate)
		Bottom.BackgroundColor3 = Color3.new(1,1,1)
		Bottom.BorderSizePixel = 0
		Bottom.Position = UDim2.new(0,0,0.95,0)
		Bottom.Size = UDim2.new(1,0,0.05,0)
	
		-- Health Bar
		local HP = Instance.new("Frame", ESPTemplate)
		HP.BackgroundColor3 = Color3.new(1,0,0)
		HP.BorderSizePixel = 0
		HP.Position = UDim2.new(-0.09,0,0,0)
		HP.Size = UDim2.new(0.1,0,1,0)
		HP.Visible = ShowHealthBars
	
		local Bar = Instance.new("Frame", HP)
		Bar.AnchorPoint = Vector2.new(0,1)
		Bar.Position = UDim2.new(0,0,1,0)
		Bar.Size = UDim2.new(1,0,1,0)
		Bar.BackgroundColor3 = Color3.new(0,1,0)
		Bar.BorderSizePixel = 0
	
		local HealthText = Instance.new("TextLabel", HP)
		HealthText.BackgroundTransparency = 1
		HealthText.Position = UDim2.new(-4.5,0,0.9,0)
		HealthText.Size = UDim2.new(20,0,0.8,0)
		HealthText.Font = Enum.Font.SourceSansBold
		HealthText.TextColor3 = Color3.new(1,1,1)
		HealthText.TextScaled = true
		HealthText.TextStrokeTransparency = 0
	
		-- Username
		local Username = Instance.new("TextLabel", ESPTemplate)
		Username.BackgroundTransparency = 1
		Username.Position = UDim2.new(-1,0,-0.9,0)
		Username.Size = UDim2.new(3,0,1,0)
		Username.Font = Enum.Font.SourceSansBold
		Username.TextColor3 = Color3.new(1,1,1)
		Username.TextScaled = true
		Username.TextStrokeTransparency = 0
		Username.Visible = ShowNames
	
		-- Distance
		local DistanceLabel = Instance.new("TextLabel", ESPTemplate)
		DistanceLabel.BackgroundTransparency = 1
		DistanceLabel.Position = UDim2.new(0.1,0,0.1,0)
		DistanceLabel.Size = UDim2.new(0.8,0,0.8,0)
		DistanceLabel.Font = Enum.Font.SourceSansBold
		DistanceLabel.TextColor3 = Color3.new(1,1,1)
		DistanceLabel.TextScaled = true
		DistanceLabel.TextStrokeTransparency = 0
		DistanceLabel.Visible = ShowDistance
	
		-- Tool icon
		local ToolIcon = Instance.new("ImageLabel", ESPTemplate)
		ToolIcon.BackgroundTransparency = 1
		ToolIcon.Position = UDim2.new(.99999,0,0,0)
		ToolIcon.Size = UDim2.new(1,0,1,0)
		ToolIcon.Visible = false
	
		local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint", ToolIcon)
		UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize
		UIAspectRatioConstraint.DominantAxis = Enum.DominantAxis.Height
	
		-- Tool name
		local ToolName = Instance.new("TextLabel", ESPTemplate)
		ToolName.BackgroundTransparency = 1
		ToolName.Position = UDim2.new(.99999,0,0,0)
		ToolName.Size = UDim2.new(1,0,0.2,0)
		ToolName.Font = Enum.Font.SourceSansBold
		ToolName.TextColor3 = Color3.new(1,1,1)
		ToolName.TextScaled = true
		ToolName.TextStrokeTransparency = 0
		ToolName.Visible = false
	
		-- Highlights
		createHighlights(character)
	
		-- Update ESP each frame
		local conn = RunService.RenderStepped:Connect(function()
			if not hrp.Parent then return end
	
			-- Distance
			local distance = (Camera.CFrame.Position - hrp.Position).Magnitude
			DistanceLabel.Text = math.floor(distance).."M"
	
			-- Scale
			local scale = (distance / BaseDistance) * ScaleMultiplier
			local newWidth = math.clamp(BaseWidth * scale, MinWidth, MaxWidth)
			local newHeight = math.clamp(BaseHeight * scale, MinHeight, MaxHeight)
			ESPTemplate.Size = UDim2.new(newWidth,0,newHeight,0)
	
			-- Health
			local humanoid = character:FindFirstChild("Humanoid")
			if humanoid then
				local hpPercent = humanoid.Health / humanoid.MaxHealth
				Bar.Size = UDim2.new(1,0,hpPercent,0)
				HealthText.Text = math.floor(humanoid.Health)
			end
	
			-- Tool
			local tool = character:FindFirstChildOfClass("Tool")
			if ShowTools and tool then
				ToolIcon.Image = tool.TextureId ~= "" and tool.TextureId or DefaultToolIcon
				ToolIcon.Visible = true
				ToolName.Text = tool.Name
				ToolName.Visible = true
			else
				ToolIcon.Visible = false
				ToolName.Visible = false
			end
	
			-- Update visibility
			ESPTemplate.Enabled = ESPEnabled
			Username.Visible = ShowNames
			Username.Text = character.Name
			HP.Visible = ShowHealthBars
			DistanceLabel.Visible = ShowDistance
			for _, h in pairs(activeHighlights[character] or {}) do
				h.Enabled = ShowHighlights
			end
		end)
	
		activeBillboards[ESPTemplate] = hrp
		activeConnections[ESPTemplate] = conn
	end
	
	local function addESP(character)
		local hrp = character:FindFirstChild("HumanoidRootPart")
		if hrp then
			createESP(hrp, character)
		end
	end
	
	local function enableESP()
		if not ESPEnabled then return end
		for _, player in pairs(Players:GetPlayers()) do
			if player ~= Players.LocalPlayer and player.Character then
				addESP(player.Character)
			end
			player.CharacterAdded:Connect(addESP)
		end
		Players.PlayerAdded:Connect(function(player)
			player.CharacterAdded:Connect(addESP)
		end)
	end
	
	local function disableESP()
		for billboard, conn in pairs(activeConnections) do
			if conn then conn:Disconnect() end
			if billboard then billboard:Destroy() end
		end
		table.clear(activeConnections)
		table.clear(activeBillboards)
	
		for char, highlights in pairs(activeHighlights) do
			for _, h in pairs(highlights) do
				if h then h:Destroy() end
			end
		end
		table.clear(activeHighlights)
	end
	
	-- =======================
	-- UI CONNECTIONS
	-- =======================
	script.Parent.ESP.Slider.State:GetPropertyChangedSignal("Value"):Connect(function()
		ESPEnabled = script.Parent.ESP.Slider.State.Value
		if ESPEnabled then enableESP() else disableESP() end
	end)
	
	script.Parent.Highlight.Slider.State:GetPropertyChangedSignal("Value"):Connect(function()
		ShowHighlights = script.Parent.Highlight.Slider.State.Value
		-- toggle highlights live
		for char, highlights in pairs(activeHighlights) do
			for _, h in pairs(highlights) do
				h.Enabled = ShowHighlights
			end
		end
	end)
	
	script.Parent.Teams.Slider.State:GetPropertyChangedSignal("Value"):Connect(function()
		STeams = script.Parent.Teams.Slider.State.Value
		-- toggle highlights live
		print(STeams)
		for char, highlights in pairs(activeHighlights) do
			for _, h in pairs(highlights) do
				print(h.FillColor)
				if STeams == true and game.Players:GetPlayerFromCharacter(char).Team == game.Players.LocalPlayer.Team then
					h.FillColor = Color3.fromRGB(0,255,0)
				else
					h.FillColor = Color3.fromRGB(255,0,0)
				end			
			end
		end
	end)
	
	script.Parent.Distance.Slider.State:GetPropertyChangedSignal("Value"):Connect(function()
		ShowDistance = script.Parent.Distance.Slider.State.Value
	end)
	
	script.Parent.ShowName.Slider.State:GetPropertyChangedSignal("Value"):Connect(function()
		ShowNames = script.Parent.ShowName.Slider.State.Value
	end)
	
	script.Parent.ShowHP.Slider.State:GetPropertyChangedSignal("Value"):Connect(function()
		ShowHealthBars = script.Parent.ShowHP.Slider.State.Value
	end)
	
	script.Parent.Tool.Slider.State:GetPropertyChangedSignal("Value"):Connect(function()
		ShowTools = script.Parent.Tool.Slider.State.Value
	end)
	
	enableESP()
	
end;
task.spawn(C_61);
-- StarterGui.StarterUi.Main.Frame.Visual.ESP.Slider.Trigger.TriggerEvent
local function C_6a()
local script = G2L["6a"];
	local stateVal = script.Parent.Parent.State
	local button = script.Parent
	local background = script.Parent.Parent
	local dot = script.Parent.Parent.Dot
	
	button.Activated:Connect(function()
		if stateVal.Value == false then
			stateVal.Value = true
			background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
			dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
		elseif stateVal.Value == true then
			stateVal.Value = false
			background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
			dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
		end
	end)
	
end;
task.spawn(C_6a);
-- StarterGui.StarterUi.Main.Frame.Visual.ShowName.Slider.Trigger.TriggerEvent
local function C_75()
local script = G2L["75"];
	local stateVal = script.Parent.Parent.State
	local button = script.Parent
	local background = script.Parent.Parent
	local dot = script.Parent.Parent.Dot
	
	button.Activated:Connect(function()
		if stateVal.Value == false then
			stateVal.Value = true
			background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
			dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
		elseif stateVal.Value == true then
			stateVal.Value = false
			background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
			dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
		end
	end)
	
end;
task.spawn(C_75);
-- StarterGui.StarterUi.Main.Frame.Visual.ShowHP.Slider.Trigger.TriggerEvent
local function C_80()
local script = G2L["80"];
	local stateVal = script.Parent.Parent.State
	local button = script.Parent
	local background = script.Parent.Parent
	local dot = script.Parent.Parent.Dot
	
	button.Activated:Connect(function()
		if stateVal.Value == false then
			stateVal.Value = true
			background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
			dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
		elseif stateVal.Value == true then
			stateVal.Value = false
			background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
			dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
		end
	end)
	
end;
task.spawn(C_80);
-- StarterGui.StarterUi.Main.Frame.Visual.Highlight.Slider.Trigger.TriggerEvent
local function C_8b()
local script = G2L["8b"];
	local stateVal = script.Parent.Parent.State
	local button = script.Parent
	local background = script.Parent.Parent
	local dot = script.Parent.Parent.Dot
	
	button.Activated:Connect(function()
		if stateVal.Value == false then
			stateVal.Value = true
			background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
			dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
		elseif stateVal.Value == true then
			stateVal.Value = false
			background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
			dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
		end
	end)
	
end;
task.spawn(C_8b);
-- StarterGui.StarterUi.Main.Frame.Visual.Distance.Slider.Trigger.TriggerEvent
local function C_96()
local script = G2L["96"];
	local stateVal = script.Parent.Parent.State
	local button = script.Parent
	local background = script.Parent.Parent
	local dot = script.Parent.Parent.Dot
	
	button.Activated:Connect(function()
		if stateVal.Value == false then
			stateVal.Value = true
			background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
			dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
		elseif stateVal.Value == true then
			stateVal.Value = false
			background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
			dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
		end
	end)
	
end;
task.spawn(C_96);
-- StarterGui.StarterUi.Main.Frame.Visual.Tool.Slider.Trigger.TriggerEvent
local function C_a1()
local script = G2L["a1"];
	local stateVal = script.Parent.Parent.State
	local button = script.Parent
	local background = script.Parent.Parent
	local dot = script.Parent.Parent.Dot
	
	button.Activated:Connect(function()
		if stateVal.Value == false then
			stateVal.Value = true
			background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
			dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
		elseif stateVal.Value == true then
			stateVal.Value = false
			background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
			dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
		end
	end)
	
end;
task.spawn(C_a1);
-- StarterGui.StarterUi.Main.Frame.Visual.Teams.Slider.Trigger.TriggerEvent
local function C_ac()
local script = G2L["ac"];
	local stateVal = script.Parent.Parent.State
	local button = script.Parent
	local background = script.Parent.Parent
	local dot = script.Parent.Parent.Dot
	
	button.Activated:Connect(function()
		if stateVal.Value == false then
			stateVal.Value = true
			background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
			dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
		elseif stateVal.Value == true then
			stateVal.Value = false
			background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
			dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
		end
	end)
	
end;
task.spawn(C_ac);
-- StarterGui.StarterUi.Main.Frame.Aim.AimHandler
local function C_b0()
local script = G2L["b0"];
	--// Services
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")
	local Camera = workspace.CurrentCamera
	
	--// References
	local AimFrame = script.Parent
	local MainFrame = AimFrame.Parent.Parent.Parent
	local AimLockFrame = AimFrame:FindFirstChild("AimLock")
	local SmoothFrame = AimFrame:FindFirstChild("AimSmoothness")
	local TeamcheckFrame = AimFrame:FindFirstChild("TeamCheck")
	local FovFrame = AimFrame:FindFirstChild("FovCircle")
	local WallCheckFrame = AimFrame:FindFirstChild("WallCheck")
	local FovSizeBox = AimFrame:FindFirstChild("FovCircleSize") and AimFrame.FovCircleSize:FindFirstChild("Key")
	local TargetPartBox = AimFrame:FindFirstChild("TargetPart") and AimFrame.TargetPart:FindFirstChild("Key")
	local AimKeyBox = AimFrame:FindFirstChild("AimKey") and AimFrame.AimKey:FindFirstChild("Key")
	
	--// Config
	local config = {
		aimOn = false,
		smoothOn = false,
		fovVisual = false,
		fovRadius = 100,
		wallCheck = false,
		teamCheck = false,
		targetPart = "Head",
		aimKey = Enum.KeyCode.X
	}
	
	--// Utils
	local function getBoolFromSlider(frame)
		if frame then
			local slider = frame:FindFirstChild("Slider")
			if slider then
				local state = slider:FindFirstChild("State")
				if state and state:IsA("BoolValue") then
					return state.Value
				end
			end
		end
		return false
	end
	
	local function getNumber(textBox)
		if textBox then
			local num = tonumber(textBox.Text)
			return num or 0
		end
		return 0
	end
	
	local function parseKeyName(input)
		if not input or input == "" then return nil end
		local key = string.upper(input)
	
		-- Direct Enum mapping for common aliases
		local shortcuts = {
			-- Control keys
			["CTRL"] = Enum.KeyCode.LeftControl,
			["CONTROL"] = Enum.KeyCode.LeftControl,
			["LCTRL"] = Enum.KeyCode.LeftControl,
			["RCTRL"] = Enum.KeyCode.RightControl,
	
			-- Shift keys
			["SHIFT"] = Enum.KeyCode.LeftShift,
			["LSHIFT"] = Enum.KeyCode.LeftShift,
			["RSHIFT"] = Enum.KeyCode.RightShift,
	
			-- Alt keys
			["ALT"] = Enum.KeyCode.LeftAlt,
			["LALT"] = Enum.KeyCode.LeftAlt,
			["RALT"] = Enum.KeyCode.RightAlt,
	
			-- Letters
			["A"] = Enum.KeyCode.A,
			["B"] = Enum.KeyCode.B,
			["C"] = Enum.KeyCode.C,
			["D"] = Enum.KeyCode.D,
			["E"] = Enum.KeyCode.E,
			["F"] = Enum.KeyCode.F,
			["G"] = Enum.KeyCode.G,
			["H"] = Enum.KeyCode.H,
			["I"] = Enum.KeyCode.I,
			["J"] = Enum.KeyCode.J,
			["K"] = Enum.KeyCode.K,
			["L"] = Enum.KeyCode.L,
			["M"] = Enum.KeyCode.M,
			["N"] = Enum.KeyCode.N,
			["O"] = Enum.KeyCode.O,
			["P"] = Enum.KeyCode.P,
			["Q"] = Enum.KeyCode.Q,
			["R"] = Enum.KeyCode.R,
			["S"] = Enum.KeyCode.S,
			["T"] = Enum.KeyCode.T,
			["U"] = Enum.KeyCode.U,
			["V"] = Enum.KeyCode.V,
			["W"] = Enum.KeyCode.W,
			["X"] = Enum.KeyCode.X,
			["Y"] = Enum.KeyCode.Y,
			["Z"] = Enum.KeyCode.Z,
	
			-- Numbers
			["0"] = Enum.KeyCode.Zero,
			["1"] = Enum.KeyCode.One,
			["2"] = Enum.KeyCode.Two,
			["3"] = Enum.KeyCode.Three,
			["4"] = Enum.KeyCode.Four,
			["5"] = Enum.KeyCode.Five,
			["6"] = Enum.KeyCode.Six,
			["7"] = Enum.KeyCode.Seven,
			["8"] = Enum.KeyCode.Eight,
			["9"] = Enum.KeyCode.Nine,
	
			-- Other common special keys
			["SPACE"] = Enum.KeyCode.Space,
			["ENTER"] = Enum.KeyCode.Return,
			["BACKSPACE"] = Enum.KeyCode.Backspace,
			["TAB"] = Enum.KeyCode.Tab,
			["ESC"] = Enum.KeyCode.Escape,
			["ESCAPE"] = Enum.KeyCode.Escape,
			["CAPSLOCK"] = Enum.KeyCode.CapsLock,
			["CAPS"] = Enum.KeyCode.CapsLock,
			["INSERT"] = Enum.KeyCode.Insert,
			["DELETE"] = Enum.KeyCode.Delete,
			["HOME"] = Enum.KeyCode.Home,
			["END"] = Enum.KeyCode.End,
			["PAGEUP"] = Enum.KeyCode.PageUp,
			["PAGEDOWN"] = Enum.KeyCode.PageDown,
			["PGUP"] = Enum.KeyCode.PageUp,
			["PGDOWN"] = Enum.KeyCode.PageDown,
			["PAUSE"] = Enum.KeyCode.Pause,
			["PRINTSCREEN"] = Enum.KeyCode.Print,
	
			-- Arrow keys
			["UP"] = Enum.KeyCode.Up,
			["DOWN"] = Enum.KeyCode.Down,
			["LEFT"] = Enum.KeyCode.Left,
			["RIGHT"] = Enum.KeyCode.Right,
	
			-- Function keys
			["F1"] = Enum.KeyCode.F1,
			["F2"] = Enum.KeyCode.F2,
			["F3"] = Enum.KeyCode.F3,
			["F4"] = Enum.KeyCode.F4,
			["F5"] = Enum.KeyCode.F5,
			["F6"] = Enum.KeyCode.F6,
			["F7"] = Enum.KeyCode.F7,
			["F8"] = Enum.KeyCode.F8,
			["F9"] = Enum.KeyCode.F9,
			["F10"] = Enum.KeyCode.F10,
			["F11"] = Enum.KeyCode.F11,
			["F12"] = Enum.KeyCode.F12,
		}
			
		if shortcuts[key] then
			return shortcuts[key]
		end
	
		for _, enum in ipairs(Enum.KeyCode:GetEnumItems()) do
			if enum.Name:upper() == key then
				return enum
			end
		end
	
		if #key == 1 and key:match("%a") then
			local enumKey = Enum.KeyCode[key:upper()]
			if enumKey then
				return enumKey
			end
		end
	
		return nil
	end
	
	
	--// Update Config
	local function updateConfig()
		local newConfig = {
			aimOn = getBoolFromSlider(AimLockFrame),
			smoothOn = getBoolFromSlider(SmoothFrame),
			teamCheck = getBoolFromSlider(TeamcheckFrame),
			fovVisual = getBoolFromSlider(FovFrame),
			wallCheck = getBoolFromSlider(WallCheckFrame),
			fovRadius = getNumber(FovSizeBox),
			targetPart = TargetPartBox and (TargetPartBox.Text ~= "" and TargetPartBox.Text or "Head") or "Head"
		}
	
		local aimKeyText = AimKeyBox.Text
		local keyEnum = parseKeyName(aimKeyText)
		if keyEnum then
			newConfig.aimKey = keyEnum
		end
	
		for k, v in pairs(newConfig) do
			if config[k] ~= v then
				config[k] = v
				print("Config changed:", k, "->", v)
			end
		end
	end
	
	--// Connect sliders and textboxes
	for _, frame in pairs({AimLockFrame, SmoothFrame, FovFrame, WallCheckFrame, TeamcheckFrame}) do
		if frame then
			local slider = frame:FindFirstChild("Slider")
			if slider then
				local state = slider:FindFirstChild("State")
				if state then
					state.Changed:Connect(updateConfig)
				end
			end
		end
	end
	
	if FovSizeBox then FovSizeBox:GetPropertyChangedSignal("Text"):Connect(updateConfig) end
	if TargetPartBox then TargetPartBox:GetPropertyChangedSignal("Text"):Connect(updateConfig) end
	if AimKeyBox then AimKeyBox:GetPropertyChangedSignal("Text"):Connect(updateConfig) end
	
	updateConfig()
	
	--// FOV Circle Setup
	local fovCircle = Instance.new("Frame")
	fovCircle.Name = "FovVisual"
	fovCircle.AnchorPoint = Vector2.new(0.5, 0.5)
	fovCircle.Size = UDim2.new(0, config.fovRadius * 2, 0, config.fovRadius * 2)
	fovCircle.Position = UDim2.new(0.5, 0, 0.5, 0)
	fovCircle.BackgroundTransparency = 1
	fovCircle.BorderSizePixel = 0
	fovCircle.Parent = MainFrame
	
	local fovUICorner = Instance.new("UICorner")
	fovUICorner.CornerRadius = UDim.new(1, 0)
	fovUICorner.Parent = fovCircle
	
	local fovStroke = Instance.new("UIStroke")
	fovStroke.Thickness = 3
	fovStroke.Color = Color3.fromRGB(255, 0, 0)
	fovStroke.Parent = fovCircle
	
	--// Aim Logic
	local lockedTarget = nil
	local localPlayer = Players.LocalPlayer
	
	local function isTargetVisible(part)
		if not config.wallCheck then
			return true
		end
	
		local origin = Camera.CFrame.Position
		local direction = (part.Position - origin)
		local raycastParams = RaycastParams.new()
		raycastParams.FilterType = Enum.RaycastFilterType.Exclude
		raycastParams.FilterDescendantsInstances = {localPlayer.Character, part.Parent}
		local result = workspace:Raycast(origin, direction, raycastParams)
		return not result
	end
	
	local function getClosestPlayerTarget()
		local closestDist = config.fovRadius
		local closestPart = nil
		local center = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
	
		for _, player in ipairs(Players:GetPlayers()) do
			if player ~= localPlayer
				and player.Character
				and player.Character:FindFirstChild(config.targetPart)
				and (not config.teamCheck or player.Team ~= localPlayer.Team)
			then
				local part = player.Character[config.targetPart]
				local screenPos, onScreen = Camera:WorldToViewportPoint(part.Position)
				if onScreen then
					local dist = (Vector2.new(screenPos.X, screenPos.Y) - center).Magnitude
					if dist <= closestDist and isTargetVisible(part) then
						closestDist = dist
						closestPart = part
					end
				end
			end
		end
	
		if closestPart then
			print("Locked target:", closestPart:GetFullName())
		end
	
		return closestPart
	end
	
	--// Aim Key Handling
	local mouseDown = false
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == config.aimKey then
			mouseDown = true
			lockedTarget = nil
			print("Aim key pressed")
		end
	end)
	
	UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == config.aimKey then
			mouseDown = false
			lockedTarget = nil
			print("Aim key released")
		end
	end)
	
	--// Main Loop
	RunService.RenderStepped:Connect(function(delta)
		fovCircle.Visible = config.fovVisual
		fovCircle.Size = UDim2.new(0, config.fovRadius * 2, 0, config.fovRadius * 2)
	
		if config.aimOn and mouseDown then
			if not lockedTarget or not lockedTarget:IsDescendantOf(workspace) then
				lockedTarget = getClosestPlayerTarget()
			end
	
			if lockedTarget then
				local currentCFrame = Camera.CFrame
				local targetCFrame = CFrame.new(currentCFrame.Position, lockedTarget.Position)
				if config.smoothOn then
					Camera.CFrame = currentCFrame:Lerp(targetCFrame, 0.35)
				else
					Camera.CFrame = targetCFrame
				end
			end
		else
			lockedTarget = nil
		end
	end)
	
end;
task.spawn(C_b0);
-- StarterGui.StarterUi.Main.Frame.Aim.AimLock.Slider.Trigger.TriggerEvent
local function C_ba()
local script = G2L["ba"];
	local stateVal = script.Parent.Parent.State
	local button = script.Parent
	local background = script.Parent.Parent
	local dot = script.Parent.Parent.Dot
	
	button.Activated:Connect(function()
		if stateVal.Value == false then
			stateVal.Value = true
			background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
			dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
		elseif stateVal.Value == true then
			stateVal.Value = false
			background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
			dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
		end
	end)
	
end;
task.spawn(C_ba);
-- StarterGui.StarterUi.Main.Frame.Aim.FovCircle.Slider.Trigger.TriggerEvent
local function C_c9()
local script = G2L["c9"];
	local stateVal = script.Parent.Parent.State
	local button = script.Parent
	local background = script.Parent.Parent
	local dot = script.Parent.Parent.Dot
	
	button.Activated:Connect(function()
		if stateVal.Value == false then
			stateVal.Value = true
			background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
			dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
		elseif stateVal.Value == true then
			stateVal.Value = false
			background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
			dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
		end
	end)
	
end;
task.spawn(C_c9);
-- StarterGui.StarterUi.Main.Frame.Aim.AimSmoothness.Slider.Trigger.TriggerEvent
local function C_d9()
local script = G2L["d9"];
	local stateVal = script.Parent.Parent.State
	local button = script.Parent
	local background = script.Parent.Parent
	local dot = script.Parent.Parent.Dot
	
	button.Activated:Connect(function()
		if stateVal.Value == false then
			stateVal.Value = true
			background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
			dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
		elseif stateVal.Value == true then
			stateVal.Value = false
			background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
			dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
		end
	end)
	
end;
task.spawn(C_d9);
-- StarterGui.StarterUi.Main.Frame.Aim.WallCheck.Slider.Trigger.TriggerEvent
local function C_e8()
local script = G2L["e8"];
	local stateVal = script.Parent.Parent.State
	local button = script.Parent
	local background = script.Parent.Parent
	local dot = script.Parent.Parent.Dot
	
	button.Activated:Connect(function()
		if stateVal.Value == false then
			stateVal.Value = true
			background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
			dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
		elseif stateVal.Value == true then
			stateVal.Value = false
			background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
			dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
		end
	end)
	
end;
task.spawn(C_e8);
-- StarterGui.StarterUi.Main.Frame.Aim.TeamCheck.Slider.Trigger.TriggerEvent
local function C_f3()
local script = G2L["f3"];
	local stateVal = script.Parent.Parent.State
	local button = script.Parent
	local background = script.Parent.Parent
	local dot = script.Parent.Parent.Dot
	
	button.Activated:Connect(function()
		if stateVal.Value == false then
			stateVal.Value = true
			background.BackgroundColor3 = Color3.fromRGB(79, 255, 66)
			dot:TweenPosition(UDim2.new(.6, 0, .1, 0), "InOut", "Linear", 0.15, true)
		elseif stateVal.Value == true then
			stateVal.Value = false
			background.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
			dot:TweenPosition(UDim2.new(.05, 0, .1, 0), "InOut", "Linear", 0.15, true)
		end
	end)
	
end;
task.spawn(C_f3);

return G2L["1"], require;
