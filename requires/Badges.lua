local Badges = {}

local badges = game:GetService("BadgeService")

function Badges.AwardBadge(playerId, badgeId)
	badges:AwardBadge(playerId, badgeId)
end

return Badges