local TeleportService = game:GetService("TeleportService")
local sound = Instance.new("Sound")

wait(1)
local PlaceId = game.PlaceId

local JobId = game.JobId

local LocalPlayer = game:GetService("Players").LocalPlayer
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
sound:Play()

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


	TeleportService:TeleportToPlaceInstance(PlaceId, JobId, LocalPlayer)
end

BIOMEINST.Changed:Connect(function()
	wait(.5)
	if table.find(tablevar,BIOMEINST.Text) then
		TeleportService:TeleportToPlaceInstance(PlaceId, JobId, LocalPlayer)
	elseif BIOMEINST == "[ NORMAL ]" then

	else

		sound:Play()
	end
end)
