local module = {}

module.init = function(Player)
	local Char = Player.Character
	local Event = Char:WaitForChild("UserInput_Event")
	local Event2 = Char:WaitForChild("UserInputBegan_Event")
	local Event3 = Char:WaitForChild("UserDoTrackThing_Event")
	local Event4 = Char:WaitForChild("UserMouseMove_Event")
	local Event5 = Char:WaitForChild("UserMouseButton1_Event")
	local Event6 = Char:WaitForChild("UserFocusLost_Event")
	local Event7 = Char:WaitForChild("V4Initialize_Event")

	local UIS = game:GetService("UserInputService")

    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Char:WaitForChild("grab", 10)

	local pathree = nil
	local raybeam = nil

	local input = function(io,a)
		if a then return end
		local io = {KeyCode=io.KeyCode,UserInputType=io.UserInputType,UserInputState=io.UserInputState}
		Event:FireServer(io)
	end
	UIS.InputBegan:Connect(input)
	UIS.InputEnded:Connect(input)
	UIS.InputBegan:Connect(function(io,a)
		if a then return end
		local io = {KeyCode=io.KeyCode,UserInputType=io.UserInputType,UserInputState=io.UserInputState}
		Event2:FireServer(io)
	end)
	Event3.OnClientEvent:Connect(function(typea, part)
	--[[
	pcall(function()
		raybeam:Destroy()
	end)
	pcall(function()
		pathree:Destroy()
	end)
	task.wait(0.2)
	--]]
		if typea == "pathfinding" then
			local PathfindingService = game:GetService("PathfindingService")
			local start = Player.Character.Torso
			local finish = part
			local pathreee = Instance.new('Folder',workspace.CurrentCamera)
			pathree = pathreee
			local path = PathfindingService:FindPathAsync(start.Position, finish.Position)
			local waypoints = path:GetWaypoints()
			for i = 2, #waypoints do
				local lastWaypoint = waypoints[i - 1]
				local currentWaypoint = waypoints[i]
				local lastPosition = lastWaypoint.Position + Vector3.new(0, 0.5, 0)
				local currentPosition = currentWaypoint.Position + Vector3.new(0, 0.5, 0)
				local toCurrent = currentPosition - lastPosition
				local distance = toCurrent.Magnitude
				local beam = Instance.new("Part", pathreee)
				local waypointType = currentWaypoint.Action
				if waypointType == Enum.PathWaypointAction.Jump then
					beam.Color = Color3.new(1, 1, 0)
				else
					beam.Color = Color3.new(0, 1, 0)
				end
				beam.FormFactor = "Custom"
				beam.Material = "Neon"
				beam.Anchored = true
				beam.Locked = true
				beam.CanCollide = false
				local distance = (lastPosition - currentPosition).magnitude
				beam.Size = Vector3.new(0.3, 0.3, distance)
				beam.CFrame = CFrame.new(lastPosition, currentPosition) * CFrame.new(0, 0, -distance / 2)
			end
			game:GetService("Debris"):AddItem(pathree, 0.2)
		elseif typea == "linetracking" then
			local beam = Instance.new("Part", workspace.CurrentCamera)
			beam.BrickColor = BrickColor.new("Bright red")
			beam.FormFactor = "Custom"
			beam.Material = "Neon"
			beam.Transparency = 0
			beam.Anchored = true
			beam.Locked = true
			beam.CanCollide = false
			local distance = (Player.Character.Torso.Position - part.position).magnitude
			beam.Size = Vector3.new(0.3, 0.3, distance)
			beam.CFrame = CFrame.new(Player.Character.Torso.Position, part.Position) * CFrame.new(0, 0, -distance / 2)
			raybeam = beam
			game:GetService("Debris"):AddItem(raybeam, 0.2)
		end
	end)
	local Changed = false
	local Mouse = Player:GetMouse()
	local h,t = Mouse.Hit,Mouse.Target
	local mouseMove = function()
		Event4:FireServer(Mouse.X, Mouse.Y)
	end
	local focusLost = function(gui)
		for _,guiElement in pairs(gui:GetDescendants()) do
			if guiElement:IsA("TextBox") then
				guiElement.FocusLost:Connect(function()
					Event6:FireServer(guiElement, guiElement.Text)
				end)
			end
		end
	end
	Mouse.Move:Connect(mouseMove)
	Mouse.Button1Down:Connect(function()
		Event5:FireServer("down")
	end)
	Mouse.Button1Up:Connect(function()
		Event5:FireServer("up")
	end)
	Event7.OnClientEvent:Connect(function(gui)
		focusLost(gui)

		local fps = nil
		for i,v in pairs(gui:GetDescendants()) do if v.Name == "fps" then fps = v end end
		local avgs = {}
		game:GetService('RunService').Heartbeat:connect(function(step)
			local ofps = 1/game:GetService("RunService").PreRender:wait()
			if #avgs > 100 then
				table.remove(avgs,1)
			end
			table.insert(avgs,#avgs+1,ofps)
			--table.insert(avgs,ofps)
			local fpsa = 0
			for i,v in pairs(avgs) do
				fpsa = fpsa+v
			end
			fpsa = math.floor(fpsa/#avgs)
			fps.Text = 'FPS: '..tostring(fpsa)
		end)
	end)
	while wait(1/30) do
		if h~=Mouse.Hit or t~=Mouse.Target then
			Event:FireServer({isMouse=true,Target=Mouse.Target,Hit=Mouse.Hit})
			h,t=Mouse.Hit,Mouse.Target
		end
	end
end

return module
