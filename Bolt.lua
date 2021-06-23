local Bolt = {}

Bolt.Version = "21.0.12"
Bolt.VersionDetails = "Bolt 21.0.12: Added Bolt.ChangeLeaderstat for changing leaderstats easily in the game."


game.Players.PlayerAdded:Connect(function(player)
	Bolt.Leaderstats = Instance.new("Folder", player)
	Bolt.Leaderstats.Name = "leaderstats"
end)


function Bolt.Kill(player)
	player.Character:WaitForChild("Humanoid").Health = 0
end

function Bolt.RemoveHealth(player, health)
	player.Character:WaitForChild("Humanoid").Health = (player.Character:WaitForChild("Humanoid").Health - health)
end

function Bolt.NewLeaderstat(player, name, variableType, value)
	local value = Instance.new(variableType, player:WaitForChild("leaderstats"))
	value.Name = name
	value.Value = value
end

function Bolt.ChangeLeaderstat(player, name, value)
	local stat = player:WaitForChild("leaderstats"):WaitForChild(name)
	stat.Value = value
end


return Bolt