local Label = {}

function Label.Create(parent, text)
	local label = Instance.new("TextLabel")

	label.Name = "Label"
	label.Parent = parent
	label.BackgroundTransparency = 1
	label.Size = UDim2.new(1, 0, 0, 24)
	label.Text = text or ""
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.TextColor3 = Color3.fromRGB(235, 242, 237)
	label.Font = Enum.Font.Gotham
	label.TextSize = 14

	return label
end

return Label
