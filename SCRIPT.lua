wait(5)
local TeleportService = game:GetService("TeleportService")


local sound = Instance.new("Sound")


local Player = game.Players.LocalPlayer    
local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"
local tablevar = {"[ NULL ]",
	"[ CORRUPTION ]",
	"[ HELL ]",
	"[ SANDSTORM ]",
	"[ RAINY ]",
	"[ SNOWY ]",
	"[ WINDY ]",
	"[ GRAVEYARD ]",
	"[ PUMPKIN MOON ]",
	"[ STARFALL ]",
}

local plr = game.Players.LocalPlayer
local Main = plr.PlayerGui.MainInterface

local instanceDAYORNIGHT = nil
local BIOMEINST = nil
sound.Volume = 9
sound.Parent = Main 
sound.SoundId = "rbxassetid://12221984"

for i,v in pairs(Main:GetDescendants()) do
	print(v)
	if v.Name == "TextLabel" then
		if v.Text == "DAYTIME" or v.Text == "NIGHTTIME" then
			instanceDAYORNIGHT = v

		end
	end
end

wait(.5)

for i,v in pairs(instanceDAYORNIGHT:GetDescendants()) do
	print(v)
	if v.ZIndex == 2 then
		BIOMEINST = v

	end
end
wait(.5)
if table.find(tablevar,BIOMEINST.Text) then
plr:Kick()

end

BIOMEINST.Changed:Connect(function()
	if table.find(tablevar,BIOMEINST.Text) then
		plr:Kick()
		
		
		

elseif BIOMEINST.Text ~= "[ NORMAL ]" then
	sound:Play()

   end
end)
