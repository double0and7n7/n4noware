local N4 = require("../src/N4noware")

print("=== N4noware Stage 1 Test ===")

assert(N4.Version == "0.1.0", "Version check failed")

local Window = N4:CreateWindow({
	Title = "Test Window",
	Subtitle = "Stage 1 Test"
})

assert(Window ~= nil, "Window was not created")
assert(Window.Title == "Test Window", "Window title check failed")
assert(Window.Subtitle == "Stage 1 Test", "Window subtitle check failed")

local Tab = Window:CreateTab("Controls")

assert(Tab ~= nil, "Tab was not created")
assert(Tab.Name == "Controls", "Tab name check failed")

print("Version: PASS")
print("CreateWindow: PASS")
print("Window properties: PASS")
print("CreateTab: PASS")
print("Tab properties: PASS")
print("=== N4noware Stage 1 Test PASSED ===")
