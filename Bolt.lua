local Bolt = {}

Bolt.Version = "21.0.1"


function Bolt.Kill(player)
	player.Character:WaitForChild("Humanoid").Health = 0
end

function Bolt.RemoveHealth(player, health)
	player.Character:WaitForChild("Humanoid").Health = (player.Character:WaitForChild("Humanoid").Health - health)
end

return Bolt
