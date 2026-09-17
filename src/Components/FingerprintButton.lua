local FingerprintButton = {}

function FingerprintButton.Create(parent, options)
	options = options or {}

	local button = Instance.new("TextButton")

	button.Name = options.Name or "FingerprintButton"
	button.Parent = parent
	button.Size = UDim2.new(1, 0, 0, 32)
	button.Text = options.Name or "Fingerprint"
	button.TextColor3 = Color3.fromRGB(235, 242, 237)
	button.BackgroundColor3 = Color3.fromRGB(13, 18, 15)
	button.Font = Enum.Font.Gotham
	button.TextSize = 14

	button.MouseButton1Click:Connect(function()
		if options.Callback then
			options.Callback()
		end
	end)

	return button
end

return FingerprintButton
