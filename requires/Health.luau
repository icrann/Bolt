local Health = {}

function Health.Kill(player)
	player.Character:WaitForChild("Humanoid").Health = 0
end

function Health.Remove(player, health)
	player.Character:WaitForChild("Humanoid").Health = (player.Character:WaitForChild("Humanoid").Health - health)
end

function Health.Add(player, health)
	player.Character:WaitForChild("Humanoid").Health = (player.Character:WaitForChild("Humanoid").Health + health)
end

return Health
