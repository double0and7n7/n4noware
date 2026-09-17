local N4noware = {}

N4noware.Version = "0.1.0"

local Window = require(script.Core.Window)
local Theme = require(script.Core.Theme)
local PopoutManager = require(script.Core.PopoutManager)

N4noware.Theme = Theme
N4noware.PopoutManager = PopoutManager

function N4noware:CreateWindow(options)
	return Window.new(options)
end

return N4noware
