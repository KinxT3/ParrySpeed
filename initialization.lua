local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Blade Ball Initialization",
    SubTitle = "by Quangkiet/ezzz",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Options = Window:AddTab({ Title = "Options", Icon = "loader" }),
}

local ScriptOptions = Tabs.Options

local PingParry = ScriptOptions:AddButton({
    Title = "Ping-Based Distance Parry",
    Description = "Load Ping-Based Parry Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KinxT3/ParrySpeed/main/autoparry-automatic.lua", true))()
        Window:Destroy()
    end,
})

local ManualParry = ScriptOptions:AddButton({
    Title = "Adjustable Distance Parry",
    Description = "Load Adjustable Parry Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KinxT3/ParrySpeed/main/autoparry.lua", true))()
        Window:Destroy() 
    end,
})


SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)


Window:SelectTab(1)

Fluent:Notify({
    Title = "Blade Ball Initialization",
    Content = "Choose a option.",
    Duration = 8
})

SaveManager:LoadAutoloadConfig()
