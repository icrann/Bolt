local Premium = {}

local MarketplaceService = game:GetService("MarketplaceService")

function Premium.PromptPremium(player)
	MarketplaceService:PromptPremiumPurchase(player)
end

return Premium
