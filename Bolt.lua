local Bolt = {}

local players = game:GetService("Players")
local marketplace = game:GetService("MarketplaceService")
local datastores = game:GetService("DataStoreService")
local badges = game:GetService("BadgeService")
local chat = game:GetService("Chat")

Bolt.Version = "21.0.14"
Bolt.VersionDetails = "Bolt 21.0.14: Added Dark and Light Bubble Chat. Using Bolt.Dark/LightBubbleChat. Also Bolt.AwardBadge was added."


game.Players.PlayerAdded:Connect(function(player)
	Bolt.Leaderstats = Instance.new("Folder", player)
	Bolt.Leaderstats.Name = "leaderstats"
end)


function Bolt.Kill(player)
	player.Character:WaitForChild("Humanoid").Health = 0
end

function Bolt.RemoveHealth(player, health)
	player.Character:WaitForChild("Humanoid").Health = (player.Character:WaitForChild("Humanoid").Health - health)
end

function Bolt.NewLeaderstat(player, name, variableType, value)
	local value = Instance.new(variableType, player:WaitForChild("leaderstats"))
	value.Name = name
	value.Value = value
end

function Bolt.ChangeLeaderstat(player, name, value)
	local stat = player:WaitForChild("leaderstats"):WaitForChild(name)
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


return Bolt