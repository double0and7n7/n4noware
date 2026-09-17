local PopoutManager = {}

PopoutManager.Popouts = {}

function PopoutManager:Create(id, title, description, width, height)
	if self.Popouts[id] then
		warn("Popout already exists:", id)
		return self.Popouts[id]
	end

	local popout = {
		Id = id,
		Title = title or "Popout",
		Description = description or "",
		Width = width or 300,
		Height = height or 200,
		Detached = false,
		Side = "right",
		Frame = nil,
	}

	self.Popouts[id] = popout

	return popout
end

function PopoutManager:Get(id)
	return self.Popouts[id]
end

function PopoutManager:Remove(id)
	self.Popouts[id] = nil
end

function PopoutManager:Show(id)
	local popout = self.Popouts[id]

	if not popout then
		warn("Popout not found:", id)
		return
	end

	if popout.Frame then
		popout.Frame.Visible = true
	end
end

function PopoutManager:Hide(id)
	local popout = self.Popouts[id]

	if not popout then
		warn("Popout not found:", id)
		return
	end

	if popout.Frame then
		popout.Frame.Visible = false
	end
end

return PopoutManager
