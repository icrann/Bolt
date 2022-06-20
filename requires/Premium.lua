local Premium = {}

local marketplace = game:GetService("MarketplaceService")

function Premium.PromptPremium(player)
	marketplace:PromptPremiumPurchase(player)
end

return Premium