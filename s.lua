local plrs = game:GetService("Players")
local replicatedstorage = game:GetService("ReplicatedStorage")

local module = {}

module.init = function(forcingthechat, run)
	print("s stuff:", forcingthechat, run)

	local function rmspaces(s)
		return s:gsub("%s+", "") or s
	end

	local function findplayer(s)
		local s = rmspaces(s)
		for _, player in pairs(plrs:GetPlayers()) do
			if player.Name:lower():match('^'..s:lower()) then
				return player
			end
		end

		return nil
	end

    run.Parent:FindFirstChild("a"):FindFirstChild("close").MouseButton1Click:Connect(function()
        run.Parent.Parent:Destroy()
    end)

	forcingthechat.OnServerEvent:Connect(function(plr, victim, message)
		local eligible = replicatedstorage:FindFirstChild("returnwhitelistsrv"):Invoke(plr)

        if eligible == true then
            if victim == "all" then
			    replicatedstorage:FindFirstChild("fc"):FireAllClients(message)
		    else
			    local player = findplayer(victim)

			    replicatedstorage:FindFirstChild("fc"):FireClient(player, message)
		    end
        end
	end)
end

return module