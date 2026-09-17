local Dropdown = {}

function Dropdown.Create(parent, options)
	options = options or {}

	local choices = options.Options or {}
	local value = options.Default or choices[1]
	local callback = options.Callback

	local button = Instance.new("TextButton")

	button.Name = options.Name or "Dropdown"
	button.Parent = parent
	button.Size = UDim2.new(1, 0, 0, 32)
	button.Text = (options.Name or "Dropdown") .. ": " .. tostring(value or "")
	button.TextColor3 = Color3.fromRGB(235, 242, 237)
	button.BackgroundColor3 = Color3.fromRGB(13, 18, 15)
	button.Font = Enum.Font.Gotham
	button.TextSize = 14

	local function setValue(newValue)
		value = newValue
		button.Text = (options.Name or "Dropdown") .. ": " .. tostring(value)

		if callback then
			callback(value)
		end
	end

	return {
		Get = function()
			return value
		end,

		Set = function(_, newValue)
	setValue(newValue)
end,
	}
end

return Dropdown
