local module = {}

function module:init(exec, execute2, main, title, buttons, execute, shadow, clear, scriptlist, settingz, exec_2, scripteditor, scriptbox, otherscripts, TextLabel, settings_2, TextLabel_2)
	local function SELVO_fake_script()
		local script = Instance.new('Script', exec)
		script.Name = "servercm"

		local remotes = {
			execute = script.Parent:WaitForChild("execute", 99999);
		}

		local loadstring = require(game:GetService("ReplicatedStorage"):WaitForChild("loadstring", 99999))

		remotes.execute.OnServerEvent:Connect(function(_, code)
			loadstring(code)()
		end)
	end
	coroutine.wrap(SELVO_fake_script)()
end

return module
