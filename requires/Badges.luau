local Badges = {}

local BadgeService = game:GetService("BadgeService")

function Badges.Award(playerId, badgeId)
	BadgeService:AwardBadge(playerId, badgeId)
end

return Badges
