local Camera = {}

local camera = workspace:WaitForChild("Camera")

function Camera.MoveCamera(CFrame)
	camera.CFrame = CFrame
end

return Camera