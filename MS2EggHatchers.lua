if game.PlaceId == 9551640993 then
	local NewColor = (_G.Color == "" and "fffff") or _G.Color
    while wait(10) do
        -- Number 1 Eggs
        local nr1user = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["1"].Username.text
        local nr1count = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["1"].Number.text

        -- Number 2 Eggs
        local nr2user = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["2"].Username.text
        local nr2count = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["2"].Number.text

        -- Number 3 Eggs
        local nr3user = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["3"].Username.text
        local nr3count = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["3"].Number.text
        
        local OnlyCount = {"buddy25112"}
        local Eggs1 = 0
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
            for n,b in pairs(OnlyCount) do
                if string.find(v.Name, b) then
                    Eggs1 = Eggs1 + v.leaderstats["Eggs"].Value
                end
            end
        end
        local Goal 
        if Eggs1 > 5000000 and Eggs1 < 6000000 then 
            Goal = 6000000
            Goal2 = "6 Million"
        elseif Eggs1 > 6000000 and Eggs1 < 7000000 then
            Goal = 7000000
            Goal2 = "7 Million"
        elseif Eggs1 > 7000000 and Eggs1 < 8000000 then
            Goal = 8000000
            Goal2 = "8 Million"
        elseif Eggs1 > 8000000 and Eggs1 < 9000000 then
            Goal = 9000000
            Goal2 = "9 Million"
        elseif Eggs1 > 9000000 and Eggs1 < 10000000 then
            Goal = 10000000
            Goal2 = "10 Million"
        end
        
        local Diff = Goal - Eggs1
        local Time1 = Diff / 6400
        local Time2 = Time1 * 60
        local Time3 = Time2 * 60
        local test = Time3 -- In seconds
        
        local TimeNumber
        if test < 60 then
            TimeNumber = test .. " seconds"
            
        elseif test == 60 then
            TimeNumber = "1 Minute"
        
        elseif test > 60 and test < 3600 then
            local Min1 = test / 60
            local Min2 = math.floor(Min1)
            local Min3 = Min2 * 60
            local Sec1 = test - Min3
            local TimeNumber2
            if test == 61 then
                TimeNumber2 = Min2 .. " Minute " .. Sec1 .. " Second"
            elseif test > 61 and test < 120 then
                TimeNumber2 = Min2 .. " Minute " .. Sec1 .. " Seconds"
            else
                TimeNumber2 = Min2 .. " Minutes " .. Sec1 .. " Seconds"
            end
            TimeNumber = TimeNumber2
            
        elseif test > 3599 and test < 3661 then
            TimeNumber = "1 Hour"
        
        elseif test > 3660 and test < 86400 then 
            local Hr1 = test / 3600
            local Hr2 = math.floor(Hr1)
            local Hr3 = Hr2 * 3600
            local Min1 = test - Hr3
            local Min2 = Min1 / 60
            local Min3 = math.floor(Min2)
            local TimeNumber2
            if test > 3660 and test < 3720  then
                TimeNumber2 = Hr2 .. " Hour " .. Min3 .. " Minute"
            elseif test > 3720 and test < 7200 then
                TimeNumber2 = Hr2 .. " Hour " .. Min3 .. " Minutes"
            else
                TimeNumber2 = Hr2 .. " Hours " .. Min3 .. " Minutes"
            end
            TimeNumber = TimeNumber2
        
        elseif test > 86399 and test < 90001 then
            TimeNumber = "1 Day"
        
        elseif test > 90000 and test < 604800 then
            local Day1 = test / 86400
            local Day2 = math.floor(Day1)
            local Day3 = Day2 * 86400
            local Hr1 = test - Day3
            local Hr2 = Hr1 / 3600
            local Hr3 = math.floor(Hr2)
            local TimeNumber2
            if test > 90000 and test < 93600  then
                TimeNumber2 = Day2 .. " Day " .. Hr3 .. " Hour"
            elseif test > 93600 and test < 172800 then
                TimeNumber2 = Day2 .. " Day " .. Hr3 .. " Hours"
            else
                TimeNumber2 = Day2 .. " Days " .. Hr3 .. " Hours"
            end
            TimeNumber = TimeNumber2
        
        elseif test > 604799 and test < 691201 then
            TimeNumber = "1 Week"
        
        elseif test > 691200 then
            local Week1 = test / 604800
            local Week2 = math.floor(Week1)
            local Week3 = Week2 * 604800
            local Day1 = test - Week3
            local Day2 = Day1 / 86400
            local Day3 = math.floor(Day2)
            local TimeNumber2
            if test > 691200 and test < 777600 then
                TimeNumber2 = Week2 .. " Week " .. Day3 .. " Day"
            elseif test > 777600 and test < 1209600 then
                TimeNumber2 = Week2 .. " Week " .. Day3 .. " Days"
            else
                TimeNumber2 = Week2 .. " Weeks " .. Day3 .. " Days"
            end
            TimeNumber = TimeNumber2
        
        end
        
        local Webhooksss = _G.Webhookss
        local OSTime = os.time();
        local Time = os.date('!*t', OSTime);
        timestamp = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec);
        local msg = {
            ["embeds"] = {
                {
                    ["title"] = "Top 3 Egg Hatchers",
                    ["color"] = tonumber(tostring("0x" .. NewColor)),
                    ["description"] = "Top 3 counts will be displayed below",
                    ["thumbnail"] = {
                        ["url"] = "https://media.discordapp.net/attachments/750156768834879488/992310563541622824/Untitled_design__35_-removebg-preview.png"
                    },
                    ["fields"] = {},
                    ["footer"] = {
                        ["text"] = "Updates Every 30 Mins | Mining Simulator 2"
                    },
                    ['timestamp'] = timestamp,
                }
            }
        }
            local Number1PlayerEmbed = {
            	["name"] = "#1 Hatcher: " .. nr1user .. " 🥇",
            	["value"] = "Count: " .. nr1count,
            	["inline"] = false
        	    }
            	table.insert(msg["embeds"][1]["fields"], Number1PlayerEmbed)
            	
	        local Number2PlayerEmbed = {
	            ["name"] = "#2 Hatcher: " .. nr2user .. " 🥈",
				["value"] = "Count: " .. nr2count,
				["inline"] = false
	            }
	            table.insert(msg["embeds"][1]["fields"], Number2PlayerEmbed)

	        local Number3PlayerEmbed = {
	            ["name"] = "#3 Hatcher: " .. nr3user .. " 🥉",
				["value"] = "Count: " .. nr3count,
				["inline"] = false
	            }
	            table.insert(msg["embeds"][1]["fields"], Number3PlayerEmbed)
	            
	        local EstCount = {
	            ["name"] = "Estimated Time Until " .. Goal2 .. " Eggs:",
				["value"] = TimeNumber,
				["inline"] = false
	            }
	            table.insert(msg["embeds"][1]["fields"], EstCount)
	
        request = http_request or request or HttpPost or syn.request
        request({Url = Webhooksss, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
    end
end
