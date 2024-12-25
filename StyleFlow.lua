local replicated_storage = game:GetService("ReplicatedStorage")
local players = game:GetService("Players")
local teams = game:GetService("Teams")
local user_input_service = game:GetService("UserInputService")
local run_service = game:GetService("RunService")
local player = players.LocalPlayer
local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local Window = Library:NewWindow("Arbix hub | Flow and styles")

local function set_style(desired_style)
    if player:FindFirstChild("PlayerStats") then
        local playerStats = player.PlayerStats
        if playerStats:FindFirstChild("Style") then
            playerStats.Style.Value = desired_style
        end
    end
end

local function set_flow(desired_flow)
    if player:FindFirstChild("PlayerStats") then
        local playerStats = player.PlayerStats
        if playerStats:FindFirstChild("Flow") then
            playerStats.Flow.Value = desired_flow
        end
    end
end

local Section = Window:NewSection("Styles")
 
Section:CreateButton("Get Aiku", function()
set_style("Aiku")
end)

Section:CreateButton("Get Shiou", function()
set_style("Rin")
end)

Section:CreateTextbox("Custom Style", function(custom_style)
        if custom_style ~= "" then
            set_style(custom_style)
        end
end)

local Section = Window:NewSection("Flows")

Section:CreateButton("Get Snake", function()
set_flow("Snake")
end)
Section:CreateButton("Get Awk genuis", function()
set_flow("Awakened Genius")
end)

Section:CreateTextbox("Custom flow", function(custom_flow)
        if custom_flow ~= "" then
            set_flow(custom_flow)
        end
end)
