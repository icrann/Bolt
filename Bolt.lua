local Bolt = {}

Bolt.Version = "21.0.11"
Bolt.VersionDetails = "Bolt 21.0.11: Added Bolt.NewLeaderstat for adding leaderstats easily to the game. Also Bolt.Leaderstat for accessing the leaderstat folder"


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

function Bolt.NewLeaderstat(player, name, variableType)
	local value = Instance.new(variableType, player:WaitForChild("leaderstats"))
	value.Name = name
end


return Bolt