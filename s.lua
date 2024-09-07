local plrs = game:GetService("Players")
local replicatedstorage = game:GetService("ReplicatedStorage")

local module = {}

module.init = function(forcingthechat)
	local function rmspaces(s)
		return s:gsub("%s+", "") or s
	end

	local function findplayer(s)
		local s = rmspaces(s)
		for _, player in pairs(plrs:GetPlayers()) do
			if string.match(string.lower(player.Name), ('^'..string.lower(s))) then
				return player
			end
		end

		return nil
	end

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