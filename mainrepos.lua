local me = {}

local SoundService = game:GetService("SoundService")
local StarterGui = game:GetService("StarterGui")

local function me:playsound(id)
	local snd = Instance.new("Sound", SoundService)
	snd.SoundId = id
	snd.PlayOnRemove = true
	snd:Destroy()
end

local function me:notify(title,text,soundid,iconid)
	local currentIconFormat
	if soundid then
		playsound(soundid)
	end
	if iconid then
		currentIconFormat = "rbxassetid://"..iconid
	else
		currentIconFormat = nil
	end
	StarterGui:SetCore("SendNotification",{
		Title = title,
		Text = text,
		Icon = currentIconFormat
	})
end
