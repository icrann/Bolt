local Bolt = {
	["Leaderstats"] = require(script.Leaderstats),
	["Health"] = require(script.Health),
	["Badges"] = require(script.Badges),
	["Chat"] = require(script.Chat),
	["Combat"] = require(script.Combat),
	["Actions"] = require(script.Actions),
	["Camera"] = require(script.Camera),
	["Teams"] = require(script.Teams),
	["Teleporting"] = require(script.Teleporting),
	["Premium"] = require(script.Premium),
	["Stats"] = require(script.Stats),
	["Marketplace"] = require(script.Marketplace),
}


Bolt.Version = "22.2.1"
Bolt.VersionDetails = "Bolt now uses a dictionary system. Example: Bolt.Stats.NewStat()"


game.Players.PlayerAdded:Connect(function(player)
	local tempValS = Instance.new("Folder", player)
	tempValS.Name = "stats"

	local tempValLS = Instance.new("Folder", player)
	tempValLS.Name = "leaderstats"
end)

return Bolt