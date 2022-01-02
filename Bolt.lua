local Bolt = {}

Bolt.Version = "22.0.0"
Bolt.VersionDetails = "nil"


local players = game:GetService("Players")
local marketplace = game:GetService("MarketplaceService")
local datastores = game:GetService("DataStoreService")
local badges = game:GetService("BadgeService")
local chat = game:GetService("Chat")
local input = game:GetService("UserInputService")

game.Players.PlayerAdded:Connect(function(player)
	Bolt.Stats = Instance.new("Folder", player)
	Bolt.Stats.Name = "stats"
	
	Bolt.Leaderstats = Instance.new("Folder", player)
	Bolt.Leaderstats.Name = "leaderstats"
end)





function Bolt.Kill(player)
	player.Character:WaitForChild("Humanoid").Health = 0
end

function Bolt.RemoveHealth(player, health)
	player.Character:WaitForChild("Humanoid").Health = (player.Character:WaitForChild("Humanoid").Health - health)
end

function Bolt.AddHealth(player, health)
	player.Character:WaitForChild("Humanoid").Health = (player.Character:WaitForChild("Humanoid").Health + health)
end

function Bolt.NewLeaderstat(player, name, variableType)
	local value = Instance.new(variableType, player:WaitForChild("leaderstats"))
	value.Name = name
end

function Bolt.ChangeLeaderstat(player, name, value)
	local stat = player:WaitForChild("leaderstats"):WaitForChild(name)
	stat.Value = value
end

function Bolt.NewStat(player, name, variableType)
	local value = Instance.new(variableType, player:WaitForChild("stats"))
	value.Name = name
end

function Bolt.ChangeStat(player, name, value)
	local stat = player:WaitForChild("stats"):WaitForChild(name)
	stat.Value = value
end

function Bolt.PromptPremium(player)
	marketplace:PromptPremiumPurchase(player)
end

function Bolt.AwardBadge(playerId, badgeId)
	badges:AwardBadge(playerId, badgeId)
end

function Bolt.DarkBubbleChat()
	local BubbleChatSettings = {
		BackgroundColor3 = Color3.fromRGB(50, 50, 50),
		TextColor3 = Color3.fromRGB(255, 255, 255)
	}
	
	chat:SetBubbleChatSettings(BubbleChatSettings)
end

function Bolt.LightBubbleChat()
	local BubbleChatSettings = {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		TextColor3 = Color3.fromRGB(0, 0, 0)
	}

	chat:SetBubbleChatSettings(BubbleChatSettings)
end

function Bolt.Shoot(player, origin, mousePos, damage, distance)
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

function Bolt.ChangeSpeed(player, speed)
	player.Character:WaitForChild("Humanoid").WalkSpeed = speed
end

function Bolt.Teleport(player, destination)
	local character = workspace:WaitForChild(player.Name)

	character:MoveTo(destination)
end

function Bolt:ChangeTeam(player, team)
	player.Team = team
end

function Bolt.PromptGamePass(player, gamePassId)
	marketplace:PromptGamePassPurchase(player, gamePassId)
end

function Bolt.PromptDevProduct(player, productId)
	marketplace:PromptProductPurchase(player, productId)
end

return Bolt