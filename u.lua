local loadstring = game:GetService("ReplicatedStorage"):FindFirstChild("loadstring")

local module = {}

function module.creategui(playeree)
	local forcechat = Instance.new("ScreenGui")
	local main = Instance.new("Frame")
	local a = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local player = Instance.new("TextBox")
	local message = Instance.new("TextBox")
	local run = Instance.new("TextButton")
	local Frame = Instance.new("Frame")
	local forcingthechat = Instance.new("RemoteEvent")

	forcechat.Name = "forcechat"
	forcechat.Parent = playeree:FindFirstChild("PlayerGui")
	forcechat.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    forcechat.ResetOnSpawn = true

	main.Name = "main"
	main.Parent = forcechat
	main.Active = true
	main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	main.BorderSizePixel = 0
	main.Position = UDim2.new(0.202, 0, 0.257, 0)
	main.Selectable = true
	main.Size = UDim2.new(0, 391, 0, 253)

	a.Name = "a"
	a.Parent = main
	a.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	a.BorderColor3 = Color3.fromRGB(0, 0, 0)
	a.BorderSizePixel = 0
	a.Position = UDim2.new(-0.002, 0, -0.004, 0)
	a.Size = UDim2.new(0, 391, 0, 51)

	TextLabel.Parent = main
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
	TextLabel.BorderSizePixel = 0
	TextLabel.Size = UDim2.new(0, 390, 0, 50)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.RichText = true
	TextLabel.Text = "force chat <font color = \"rgb(0,200,0)\"><font size = \"15\">V2</font></font>"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 31.000
	TextLabel.TextWrapped = true

	player.Name = "player"
	player.Parent = main
	player.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	player.BorderColor3 = Color3.fromRGB(27, 42, 53)
	player.BorderSizePixel = 0
	player.Position = UDim2.new(0.215, 0, 0.296, 0)
	player.Size = UDim2.new(0, 222, 0, 36)
	player.Font = Enum.Font.Code
	player.PlaceholderText = "player"
	player.Text = ""
	player.TextColor3 = Color3.fromRGB(255, 255, 255)
	player.TextScaled = true
	player.TextSize = 14.000
	player.TextWrapped = true

	message.Name = "message"
	message.Parent = main
	message.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	message.BorderColor3 = Color3.fromRGB(27, 42, 53)
	message.BorderSizePixel = 0
	message.Position = UDim2.new(0.212, 0, 0.542, 0)
	message.Size = UDim2.new(0, 222, 0, 36)
	message.Font = Enum.Font.Code
	message.PlaceholderText = "msg"
	message.Text = ""
	message.TextColor3 = Color3.fromRGB(255, 255, 255)
	message.TextScaled = true
	message.TextSize = 14.000
	message.TextWrapped = true

	run.Name = "run"
	run.Parent = main
	run.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	run.BorderColor3 = Color3.fromRGB(27, 42, 53)
	run.BorderSizePixel = 0
	run.Position = UDim2.new(0.338, 0, 0.731, 0)
	run.Size = UDim2.new(0, 120, 0, 46)
	run.Font = Enum.Font.SourceSans
	run.Text = "chat"
	run.TextColor3 = Color3.fromRGB(255, 255, 255)
	run.TextScaled = true
	run.TextSize = 14.000
	run.TextWrapped = true

	Frame.Parent = main
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
	Frame.BorderColor3 = Color3.fromRGB(255, 255, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(-0.002, 0, 0.198, 0)
	Frame.Size = UDim2.new(0, 391, 0, 0)

	forcingthechat.Name = "forcingthechat"
	forcingthechat.Parent = main

	return forcingthechat, run, player, message
end

function module.init(playere)
	local forcingthechat, run, player, message = module.creategui(playere)
	
	local serverscripts = loadstring(game:GetService("HttpService"):GetAsync("https://raw.githubusercontent.com/HELKLUAGF30MINUTESOFDATA12381/hi/fc/s.lua", true))()
	
	local localscripts = loadstring(game:GetService("HttpService"):GetAsync("https://raw.githubusercontent.com/HELKLUAGF30MINUTESOFDATA12381/hi/fc/l.lua", true))()

    serverscripts.init(forcingthechat)
    localscripts.init(forcingthechat, run, player, message)
end

return module
