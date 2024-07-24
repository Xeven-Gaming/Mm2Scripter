local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "MM2 Script",
   LoadingTitle = "Murder Mystery 2",
   LoadingSubtitle = "by Xylo",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Xylo Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key | Xylo Hub",
      Subtitle = "Key System",
      Note = "In Youtube Description",
      FileName = "Feettickler3819", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/0U1XA5qi"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("🏠 Home", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "You executed the script",
   Content = "skibidi",
   Duration = 5,
   Image = 13047715178,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Button = MainTab:CreateButton({
   Name = "Infinite Jump Toggle",
   Callback = function()
       --Toggles the infinite jump between on or off on every script run
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	--Ensures this only runs once to save resources
	_G.infinJumpStarted = true
	
	--Notifies readiness
	game.StarterGui:SetCore("SendNotification", {Title="Youtube Hub"; Text="Infinite Jump Activated!"; Duration=5;})

	--The actual infinite jump
	local plr = game:GetService('Players').LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
			humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
			humanoid:ChangeState('Jumping')
			wait()
			humanoid:ChangeState('Seated')
			end
		end
	end)
end
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Button = MainTab:CreateButton({
   Name = "Dupe (Godlies Only)",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Xeven-Gaming/MM2SCRIPTS/main/MM2%20SCRIPT.txt"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Trade Scam",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Xeven-Gaming/MM2SCRIPTS/main/MM2%20SCRIPT.txt"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Noclip",
   Callback = function()
        local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local Plr = Players.LocalPlayer
local Clipon = true 

local function ToggleNoclip()
    for a, b in pairs(Workspace:GetChildren()) do
        if b.Name == Plr.Name then
            for i, v in pairs(b:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = not Clipon
                end
            end
        end
    end
end

function SetNoclip(enabled)
    Clipon = enabled
    ToggleNoclip()
end

SetNoclip(true)
   end,
})