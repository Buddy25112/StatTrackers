if game.PlaceId == 6284583030 or game.PlaceId == 7722306047 then
	local username = game:GetService("Players").LocalPlayer.Name
	local userid = game:GetService("Players").LocalPlayer.UserId
	local icon = "https://www.roblox.com/headshot-thumbnail/image?userId="..userid.."&width=420&height=420&format=png"
	local NewColor = (_G.Color == "" and "fffff") or _G.Color
	local number = 1
	
	if _G.SendNotifications == true then
    	game.StarterGui:SetCore(
               	"SendNotification",
                {
			Title = "PSX Stats Tracker",
			Text = "Version 1.0.0, Updated and Maintained by PetSimulatorXPlayer#5011",
			Duration = 5
		}
	)
	elseif _G.SendNotifications == false then
        end
	
	function abb(Value)
		local Number
		local Formatted = Value
		while true do
        		Formatted, Number = string.gsub(Formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
        		if (Number == 0) then
            			break
        		end
    		end
    		return Formatted
	end
    	
    local Lib = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
    local EggsHatched1 = 0
            
    for i,v in pairs(Lib.Save.Get().EggsOpened) do
        EggsHatched1 = EggsHatched1 + v
    end
    
    print("PSX Stats Tracker V1.0.0, Maintained and Updated by PetSimulatorXPlayer#5011")
    
    while wait(_G.Intervals) do 
        local Lib1 = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
        local EggsHatched = 0
            
        for i,v in pairs(Lib1.Save.Get().EggsOpened) do
            EggsHatched = EggsHatched + v
        end 
        local NewEggsHatched = EggsHatched - EggsHatched1
		number = (number == 1 and 1) or number
        local EggsPer = NewEggsHatched / number
        local EggsPer1 = math.round(EggsPer)
		number = number + 1
        local Webhook = _G.Webhookss
        local OSTime = os.time();
        local Time = os.date('!*t', OSTime);
        timestamp = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec);
        local msg = {
            ["embeds"] = {
                {
                    ["title"] = username .. "'s PSX Stat Data",
                    ["color"] = tonumber(tostring("0x" .. NewColor)),
                    ["description"] = abb(EggsHatched) .. " Total eggs have been hatched!",
                    ["thumbnail"] = {
                        ["url"] = icon
                    },
                    ["fields"] = {},
                    ["footer"] = {
                        ["text"] = "Updates every " .. _G.Intervals .. " Seconds | Pet Simulator X"
                    },
                    ['timestamp'] = timestamp,
                }
            }
        }
        if _G.EggsPerUpdate == true then
            local EggsPerUpdateEmbed = {
            	["name"] = "Eggs Hatched Per " .. _G.Intervals .. " Seconds (Average)",
            	["value"] = abb(EggsPer1) .. " eggs have been hatched per " .. _G.Intervals .. " seconds",
            	["inline"] = true
        	    }
            	table.insert(msg["embeds"][1]["fields"], EggsPerUpdateEmbed)
        end
	    if _G.EggsSinceExecution == true then
	        local EggsSinceExecutionEmbed = {
	            ["name"] = "Eggs Hatched Since Execution",
				["value"] = abb(NewEggsHatched) .. " eggs have been hatched since execution",
				["inline"] = true
	            }
	            table.insert(msg["embeds"][1]["fields"], EggsSinceExecutionEmbed)
	    end
        request = http_request or request or HttpPost or syn.request
        request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
    end
end
