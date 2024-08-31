local module = {}

function module:init(exec, execute2, main, title, buttons, execute, shadow, clear, scriptlist, settingz, exec_2, scripteditor, scriptbox, otherscripts, TextLabel, settings_2, TextLabel_2)
	local function FNCGF_fake_script() --coremodule
		local script = Instance.new("ModuleScript")
		script.Name = "coremodule"
		script.Parent = exec

		buttons = {
			execute = script.Parent:WaitForChild("main", 99999).buttons:FindFirstChild("execute");
			clear = script.Parent:WaitForChild("main", 99999).buttons:FindFirstChild("clear");
			scripts = script.Parent:WaitForChild("main", 99999).buttons:FindFirstChild("scriptlist");
			settings = script.Parent:WaitForChild("main", 99999).buttons:FindFirstChild("settings");
		}

		menus = {
			main = script.Parent:WaitForChild("main", 99999).exec;
			scripts = script.Parent:WaitForChild("main", 99999).otherscripts;
			settings = script.Parent:WaitForChild("main", 99999).settings;
		}

		remotes = {
			execute = script.Parent:WaitForChild("execute", 99999)
		}

		ratelimit = false -- if you execute code too fast it will rate limit you to calm down
		ratelimitamount = 8
		runspersecond = 0

		function togglemenu(menu)
			if menus[menu].Visible == true then
				for _,v in pairs(menus) do
					v.Visible = false
				end

				menus.main.Visible = true
			else
				for _,v in pairs(menus) do
					v.Visible = false
				end

				menus[menu].Visible = true
			end
		end

		function clearscript()
			menus.main.scripteditor.scriptbox.Text = ""
		end


		function executescript(code)
		    execute2:FireServer(code)
		end

		function ratecooldown()
			task.wait(6)
			runspersecond = 0
			ratelimit = false
		end

		function init()
			while true do
				if runspersecond >= ratelimitamount and ratelimit == false then
					ratelimit = true
					ratecooldown()
				elseif runspersecond < ratelimitamount and ratelimit == false then
					runspersecond = 0
				end
				task.wait(2)
			end
		end

		buttons.execute.Activated:Connect(function()
			if menus.main.scripteditor.scriptbox.Text ~= "" then
				executescript(menus.main.scripteditor.scriptbox.Text)
			end
		end)

		buttons.clear.Activated:Connect(function()
			menus.main.scripteditor.scriptbox.Text = ""
		end)

		buttons.scripts.Activated:Connect(function()
			togglemenu("scripts")
		end)

		buttons.settings.Activated:Connect(function()
			togglemenu("settings")
		end)
	end
    coroutine.wrap(FNCGF_fake_script)()


	local function SDOON_fake_script() -- title.drag 
		local script = Instance.new('LocalScript', title)
		script.Name = "drag"

		-- drag script thing

		local UIS = game:GetService('UserInputService')
		local frame = main
		local dragthing = title
		local dragToggle = nil
		local dragSpeed = 0
		local dragStart = nil
		local startPos = nil

		local function updateInput(input)
			local delta = input.Position - dragStart
			local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
		end

		dragthing.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
				dragToggle = true
				dragStart = input.Position
				startPos = frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)

		UIS.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if dragToggle then
					updateInput(input)
				end
			end
		end)

	end
	coroutine.wrap(SDOON_fake_script)()
end

return module
    