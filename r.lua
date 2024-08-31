local UIS = game:GetService("UserInputService")

UIS.InputBegan:Connect(function(input, gameproccessed)
	if gameproccessed then return end

	if input.KeyCode == Enum.KeyCode.Q then
		game:GetService("ReplicatedStorage"):WaitForChild("givegui", 99999):FireServer()
	end
end)

game:GetService("ReplicatedStorage"):WaitForChild("initclient", 99999).OnClientEvent:Connect(function(exec, execute2, main, title, buttons, execute, shadow, clear, scriptlist, settingz, exec_2, scripteditor, scriptbox, otherscripts, TextLabel, settings_2, TextLabel_2)
	local loadstring = require(game:GetService("ReplicatedStorage"):WaitForChild("loadstring", 99999))

	local loadstrng = game:GetService("ReplicatedStorage"):WaitForChild("gethttp", 99999):InvokeServer()

	local module = loadstring(loadstrng)()

	module:init(exec, execute2, main, title, buttons, execute, shadow, clear, scriptlist, settingz, exec_2, scripteditor, scriptbox, otherscripts, TextLabel, settings_2, TextLabel_2)
end)