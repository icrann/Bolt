local Combat = {}

function Combat.Shoot(player, origin, mousePos, damage, distance)
	local RayCastParams = RaycastParams.new()
	RayCastParams.FilterDescendantsInstances = {player.Character}
	RayCastParams.FilterType = Enum.RaycastFilterType.Blacklist

	local RayCastResults = workspace:Raycast(origin, (mousePos - origin) * distance, RayCastParams)

	if RayCastResults then
		local HitPart = RayCastResults.Instance
		local Model = HitPart:FindFirstAncestorOfClass("Model")

		if Model then
			if Model:FindFirstChild("Humanoid") then
				Model.Humanoid.Health -= damage
			end
		end
	end
end

function Combat.RayCast(origin, destination, damage, distance ,blacklist)
	local RayCastParams = RaycastParams.new()
	RayCastParams.FilterDescendantsInstances = blacklist
	RayCastParams.FilterType = Enum.RaycastFilterType.Blacklist

	local RayCastResults = workspace:Raycast(origin, (destination - origin) * distance, RayCastParams)

	if RayCastResults then
		return RayCastResults
	end
end

return Combat
