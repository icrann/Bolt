local Teams = {}

function Teams:ChangeTeam(player, team)
	player.Team = team
end

return Teams