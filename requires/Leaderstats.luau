local Leaderstats = {}

function Leaderstats.New(player, name, variableType)
	local value = Instance.new(variableType, player:WaitForChild("leaderstats"))
	value.Name = name
end

function Leaderstats.Change(player, name, value)
	local stat = player:WaitForChild("leaderstats"):WaitForChild(name)
	stat.Value = value
end

return Leaderstats
