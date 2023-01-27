if game.PlaceId == 9551640993 then
	local username = game:GetService("Players").LocalPlayer.Name
	local userid = game:GetService("Players").LocalPlayer.UserId
	local icon = "https://media.discordapp.net/attachments/750156768834879488/1068448911628439582/mining-simulator-2-codes-2.png?width=740&height=671"
	local NewColor = (_G.SettingsTable.Color == "None" and "fffff") or _G.SettingsTable.Color
	local number = 1
	local number2 = 1
	local number3 = 1
	
    	game.StarterGui:SetCore(
               	"SendNotification",
                {
			Title = "MS2 Stats Tracker",
			Text = "Version 1.0.0, Updated and Maintained by PetSimulatorXPlayer#5011",
			Duration = 5
		}
	)
	
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
	
    local plr = game.Players.LocalPlayer
    local OnlyCount = {plr.Name}
    
    local count = 0 
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        for n,b in pairs(OnlyCount) do
            if string.find(v.Name, b) then
                count = v.leaderstats["Eggs"].Value    
            end
        end
    end
    
    local count2 = 0
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        for n,b in pairs(OnlyCount) do
            if string.find(v.Name, b) then
                count2 = v.leaderstats["Rebirths"].Value    
            end
        end
    end
    
    local count3 = 0
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        for n,b in pairs(OnlyCount) do
            if string.find(v.Name, b) then
                count3 = v.leaderstats["Blocks"].Value    
            end
        end
    end
   
    print("MS2 Stats Tracker V1.0.0, Maintained and Updated by PetSimulatorXPlayer#5011")
    
    task.spawn(function() while task.wait(_G.SettingsTable.Intervals) do
        
        -- Eggs
        count1 = 0
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
            for n,b in pairs(OnlyCount) do
                if string.find(v.Name, b) then
                    count1 = v.leaderstats["Eggs"].Value    
                end
            end
        end
        local EggsHatchedPer1 = count1 - count
        count = count + EggsHatchedPer1

		
		-- Rebirths
		local count22 = 0
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
            for n,b in pairs(OnlyCount) do
                if string.find(v.Name, b) then
                    count22 = v.leaderstats["Rebirths"].Value    
                end
            end
        end
		local RebirthsPer1 = count22 - count2
		count2 = count2 + RebirthsPer1
		
		-- Blocks
		local count33 = 0
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
            for n,b in pairs(OnlyCount) do
                if string.find(v.Name, b) then
                    count33 = v.leaderstats["Blocks"].Value    
                end
            end
        end
		local BlocksPer1 = count33 - count3
		count3 = count3 + BlocksPer1
		
        local Webhooksss = _G.SettingsTable.Webhookssss
        local OSTime = os.time();
        local Time = os.date('!*t', OSTime);
        timestamp = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec);
        local msg = {
            ["embeds"] = {
                {
                    ["title"] = username .. "'s MS2 Stat Data",
                    ["color"] = tonumber(tostring("0x" .. NewColor)),
                    ["description"] = "Some of these stats wont be exact. Some are just estimates",
                    ["thumbnail"] = {
                        ["url"] = icon
                    },
                    ["fields"] = {},
                    ["footer"] = {
                        ["text"] = "Updates every " .. _G.SettingsTable.Intervals .. " Seconds | Mining Simulator 2"
                    },
                    ['timestamp'] = timestamp,
                }
            }
        }
        if _G.SettingsTable.EggCount == true then
            local EggsCountEmbed = {
            	["name"] = "Egg Count Data",
            	["value"] = abb(count1) .. " Eggs have been hatched! | *+" .. abb(EggsHatchedPer1) .. " in the last " .. _G.SettingsTable.Intervals .. " seconds*",
            	["inline"] = false
        	    }
            	table.insert(msg["embeds"][1]["fields"], EggsCountEmbed)
        end
	    if _G.SettingsTable.RebirthCount == true then
	        local RebirthsCountEmbed = {
	            ["name"] = "Rebirth Count Data",
				["value"] = abb(count22) .. " Rebirths have been counted! | *+" .. abb(RebirthsPer1) .. " in the last " .. _G.SettingsTable.Intervals .. " seconds*",
				["inline"] = false
	            }
	            table.insert(msg["embeds"][1]["fields"], RebirthsCountEmbed)
	    end
	    if _G.SettingsTable.BlocksCount == true then
	        local BlocksCountEmbed = {
	            ["name"] = "Block Count Data",
				["value"] = abb(count33) .. " Blocks have been mined! | *+" .. abb(BlocksPer1) .. " in the last " .. _G.SettingsTable.Intervals .. " seconds*",
				["inline"] = false
	            }
	            table.insert(msg["embeds"][1]["fields"], BlocksCountEmbed)
	    end
        request = http_request or request or HttpPost or syn.request
        request({Url = Webhooksss, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
	end
    end)
end
