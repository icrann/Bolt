local Actions = {}

function Actions.Speed(player, speed)
	player.Character:WaitForChild("Humanoid").WalkSpeed = speed
end

return Actions