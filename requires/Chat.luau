local Chat = {}

local ChatService = game:GetService("Chat")

function Chat.DarkBubbleChat()
	local BubbleChatSettings = {
		BackgroundColor3 = Color3.fromRGB(50, 50, 50),
		TextColor3 = Color3.fromRGB(255, 255, 255)
	}

	ChatService:SetBubbleChatSettings(BubbleChatSettings)
end

function Chat.LightBubbleChat()
	local BubbleChatSettings = {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		TextColor3 = Color3.fromRGB(0, 0, 0)
	}

	ChatService:SetBubbleChatSettings(BubbleChatSettings)
end

return Chat
