local Stats = {}

function Stats.Change(player, name, value)
	local stat = player:WaitForChild("stats"):WaitForChild(name)
	stat.Value = value
end

function Stats.New(player, name, variableType)
	local value = Instance.new(variableType, player:WaitForChild("stats"))
	value.Name = name
end

return Stats
