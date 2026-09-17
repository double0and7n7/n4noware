local Window = {}
Window.__index = Window

function Window.new(options)
	options = options or {}

	local self = setmetatable({}, Window)

	self.Title = options.Title or "n4noware"
	self.Subtitle = options.Subtitle or ""
	self.Tabs = {}

	return self
end

function Window:CreateTab(name)
	local Tab = {
		Name = name or "Tab",
		Components = {},
	}

	table.insert(self.Tabs, Tab)

	return Tab
end

function Window:GetTabs()
	return self.Tabs
end

function Window:Destroy()
	self.Tabs = {}
end

return Window
