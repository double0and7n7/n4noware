local N4noware = {}

N4noware.Version = "0.1.0"

local Theme = require(script.Core.Theme)
local Window = require(script.Core.Window)
local PopoutManager = require(script.Core.PopoutManager)

local Label = require(script.Components.Label)
local Toggle = require(script.Components.Toggle)
local Dropdown = require(script.Components.Dropdown)
local FingerprintButton = require(script.Components.FingerprintButton)

N4noware.Theme = Theme

function N4noware:CreateWindow(options)
	options = options or {}

	local window = Window.new(options)

	window.Components = {
		Label = Label,
		Toggle = Toggle,
		Dropdown = Dropdown,
		FingerprintButton = FingerprintButton,
	}

	window.Popouts = PopoutManager

	return window
end

return N4noware
