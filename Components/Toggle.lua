local Toggle = {}

function Toggle.Create(parent, options)
	options = options or {}

	local value = options.Default or false
	local callback = options.Callback

	local button = Instance.new("TextButton")

	button.Name = options.Name or "Toggle"
	button.Parent = parent
	button.Size = UDim2.new(1, 0, 0, 32)
	button.Text = options.Name or "Toggle"
	button.TextColor3 = Color3.fromRGB(235, 242, 237)
	button.BackgroundColor3 = Color3.fromRGB(13, 18, 15)
	button.Font = Enum.Font.Gotham
	button.TextSize = 14

	local function setValue(newValue)
		value = newValue

		if callback then
			callback(value)
		end
	end

	button.MouseButton1Click:Connect(function()
		setValue(not value)
	end)

	return {
		Get = function()
			return value
		end,

		Set = function(newValue)
			setValue(newValue)
		end,
	}
end

return Toggle
