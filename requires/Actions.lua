local Actions = {}

function Actions.ChangeSpeed(player, speed)
	player.Character:WaitForChild("Humanoid").WalkSpeed = speed
end

return Actions