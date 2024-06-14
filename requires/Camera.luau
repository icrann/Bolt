local Camera = {}

local camera = workspace:WaitForChild("Camera")

function Camera.Move(CFrame)
	camera.CFrame = CFrame
end

return Camera
