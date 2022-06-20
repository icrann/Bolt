local Marketplace = {}

local marketplace = game:GetService("MarketplaceService")

function Marketplace.PromptGamePass(player, gamePassId)
	marketplace:PromptGamePassPurchase(player, gamePassId)

	marketplace.PromptGamePassPurchaseFinished:Connect(function(player, purchasedPassID, purchaseSuccess)
		if purchaseSuccess == true and purchasedPassID == gamePassId then
			return true
		end
	end)
end

function Marketplace.OwnsGamePass(player, gamePassId)
	local hasPass = false

	local success = pcall(function()
		hasPass = marketplace:UserOwnsGamePassAsync(player.UserId, gamePassId)
	end)

	if hasPass == true then
		return true
	else
		return false
	end
end

return Marketplace