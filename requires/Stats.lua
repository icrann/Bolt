local Stats = {}

function Stats.ChangeLeaderstat(player, name, value)
	local stat = player:WaitForChild("leaderstats"):WaitForChild(name)
	stat.Value = value
end

function Stats.NewStat(player, name, variableType)
	local value = Instance.new(variableType, player:WaitForChild("stats"))
	value.Name = name
end

return Stats