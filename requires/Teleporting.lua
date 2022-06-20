local Teleporting = {}

function Teleporting.Teleport(player, destination)
	local character = workspace:WaitForChild(player.Name)

	character:MoveTo(destination)
end

return Teleporting