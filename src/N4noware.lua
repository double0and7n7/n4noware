local N4noware = {}

N4noware.Version = "0.1.0"

local Theme = require(script.Core.Theme)

local Label = require(script.Components.Label)
local Toggle = require(script.Components.Toggle)
local Dropdown = require(script.Components.Dropdown)
local FingerprintButton = require(script.Components.FingerprintButton)

local PopoutManager = require(script.Core.PopoutManager)

N4noware.Theme = Theme

function N4noware:CreateWindow(options)
	options = options or {}

	local Window = {}

	Window.Title = options.Title or "n4noware"
	Window.Subtitle = options.Subtitle or ""
	Window.Components = {
		Label = Label,
		Toggle = Toggle,
		Dropdown = Dropdown,
		FingerprintButton = FingerprintButton,
	}

	Window.Popouts = PopoutManager

	function Window:CreateTab(name)
		local Tab = {}

		Tab.Name = name or "Tab"

		function Tab:Label(text)
			return Label.Create(nil, text)
		end

		function Tab:Toggle(config)
			return Toggle.Create(nil, config)
		end

		function Tab:Dropdown(config)
			return Dropdown.Create(nil, config)
		end

		function Tab:FingerprintButton(config)
			return FingerprintButton.Create(nil, config)
		end

		return Tab
	end

	return Window
end

return N4noware
