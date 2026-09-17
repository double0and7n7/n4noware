local N4 = require("../src/N4noware")

print("N4noware version:", N4.Version)

local Window = N4:CreateWindow({
	Title = "Test Window",
	Subtitle = "Stage 1 Test"
})

print("Window title:", Window.Title)
print("Window subtitle:", Window.Subtitle)

local Tab = Window:CreateTab("Controls")

print("Tab name:", Tab.Name)

print("N4noware API test complete!")
