local N4 = require(game.ReplicatedStorage.N4noware)

local Window = N4:CreateWindow({
	Title = "My Interface",
	Subtitle = "Powered by N4noware"
})

local Controls = Window:CreateTab("Controls")

print("N4noware version:", N4.Version)
print("Window:", Window.Title)
print("Tab:", Controls.Name)
