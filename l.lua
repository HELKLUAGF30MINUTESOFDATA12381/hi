local module = {}

module.init = function(forcingthechat, run, player, message)
    run.MouseButton1Click:Connect(function()
        forcingthechat:FireServer(player.Text, message.Text)
    end)
end

return module
