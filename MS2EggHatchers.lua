wait(60)
if game.PlaceId == 9551640993 then
	local NewColor = (_G.Color == "" and "fffff") or _G.Color
	-- Starting Egg Value
	local OnlyCount1 = {"buddy25112","buddy25113","AJ_GamingYYTT","BuddyHatchAlt1","BuddyHatchAlt4","BuddyHatchAlt5","BuddyHatchAlt6","BuddyHatchAlt7","BuddyHatchAlt8","BuddyHatchAlt9"}
	
	local Eggs3 = 0
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        for n,b in pairs(OnlyCount1) do
            if string.find(v.Name, b) then
                Eggs3 = Eggs3 + v.leaderstats["Eggs"].Value
            end
        end
    end

    while wait(1800) do
        -- Number 1 Eggs
        local nr1user = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["1"].Username.text
        local nr1count = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["1"].Number.text

        -- Number 2 Eggs
        local nr2user = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["2"].Username.text
        local nr2count = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["2"].Number.text

        -- Number 3 Eggs
        local nr3user = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["3"].Username.text
        local nr3count = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["3"].Number.text
    
        -- Number 4 Eggs
        local nr4user = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["4"].Username.text
        local nr4count = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["4"].Number.text

        -- Number 5 Eggs
        local nr5user = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["5"].Username.text
        local nr5count = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["5"].Number.text

        -- Number 6 Eggs
        local nr6user = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["6"].Username.text
        local nr6count = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["6"].Number.text
    
        -- Number 7 Eggs
        local nr7user = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["7"].Username.text
        local nr7count = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["7"].Number.text

        -- Number 8 Eggs
        local nr8user = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["8"].Username.text
        local nr8count = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["8"].Number.text

        -- Number 9 Eggs
        local nr9user = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["9"].Username.text
        local nr9count = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["9"].Number.text

        -- Number 10 Eggs
        local nr10user = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["10"].Username.text
        local nr10count = game:GetService("Workspace").Leaderboards.Eggs.Board.SurfaceGui.Content.Frame["10"].Number.text
        
        -- Estimated Time Counter
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
        if Eggs1 > 9000000 and Eggs1 < 10000000 then 
            Goal = 10000000
            Goal2 = "10 Million"
        elseif Eggs1 > 10000000 and Eggs1 < 15000000 then
            Goal = 15000000
            Goal2 = "15 Million"
        elseif Eggs1 > 15000000 and Eggs1 < 20000000 then
            Goal = 20000000
            Goal2 = "20 Million"
        elseif Eggs1 > 20000000 and Eggs1 < 25000000 then
            Goal = 25000000
            Goal2 = "25 Million"
        elseif Eggs1 > 25000000 and Eggs1 < 30000000 then
            Goal = 30000000
            Goal2 = "30 Million"
	    elseif Eggs1 > 30000000 and Eggs1 < 35000000 then
            Goal = 35000000
            Goal2 = "35 Million"
        elseif Eggs1 > 35000000 and Eggs1 < 40000000 then
            Goal = 40000000
            Goal2 = "40 Million"
        elseif Eggs1 > 40000000 and Eggs1 < 45000000 then
            Goal = 45000000
            Goal2 = "45 Million"
        elseif Eggs1 > 45000000 and Eggs1 < 50000000 then
            Goal = 50000000
            Goal2 = "50 Million"
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
        
        -- Total Account Hatches
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
        
        local Eggs2 = 0
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
            for n,b in pairs(OnlyCount1) do
                if string.find(v.Name, b) then
                    Eggs2 = Eggs2 + v.leaderstats["Eggs"].Value
                end
            end
        end
        local EggsHatchedPer1 = Eggs2 - Eggs3
        Eggs3 = Eggs3 + EggsHatchedPer1
        
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
            
            local Number4PlayerEmbed = {
	            ["name"] = "#4 Hatcher: " .. nr4user,
				["value"] = "Count: " .. nr4count,
				["inline"] = false
	            }
	            table.insert(msg["embeds"][1]["fields"], Number4PlayerEmbed)
            
            local Number5PlayerEmbed = {
	            ["name"] = "#5 Hatcher: " .. nr5user,
				["value"] = "Count: " .. nr5count,
				["inline"] = false
	            }
	            table.insert(msg["embeds"][1]["fields"], Number5PlayerEmbed)
            
            local Number6PlayerEmbed = {
	            ["name"] = "#6 Hatcher: " .. nr6user,
				["value"] = "Count: " .. nr6count,
				["inline"] = false
	            }
	            table.insert(msg["embeds"][1]["fields"], Number6PlayerEmbed)
            
            local Number7PlayerEmbed = {
	            ["name"] = "#7 Hatcher: " .. nr7user,
				["value"] = "Count: " .. nr7count,
				["inline"] = false
	            }
	            table.insert(msg["embeds"][1]["fields"], Number7PlayerEmbed)
            
            local Number8PlayerEmbed = {
	            ["name"] = "#8 Hatcher: " .. nr8user,
				["value"] = "Count: " .. nr8count,
				["inline"] = false
	            }
	            table.insert(msg["embeds"][1]["fields"], Number8PlayerEmbed)
            
            local Number9PlayerEmbed = {
	            ["name"] = "#9 Hatcher: " .. nr9user,
				["value"] = "Count: " .. nr9count,
				["inline"] = false
	            }
	            table.insert(msg["embeds"][1]["fields"], Number9PlayerEmbed)
            
            local Number10PlayerEmbed = {
	            ["name"] = "#10 Hatcher: " .. nr10user,
				["value"] = "Count: " .. nr10count,
				["inline"] = false
	            }
	            table.insert(msg["embeds"][1]["fields"], Number10PlayerEmbed)
	            
	        local EstCount = {
	            ["name"] = "Estimated Time Until " .. Goal2 .. " Eggs:",
				["value"] = TimeNumber,
				["inline"] = false
	            }
	            table.insert(msg["embeds"][1]["fields"], EstCount)
	            
	        local TotalHatches = {
	            ["name"] = "Total Eggs Hatched:",
				["value"] = "Count: " .. abb(Eggs2) .. " | *+" .. abb(EggsHatchedPer1) .. " in the last 30 Minutes*",
				["inline"] = false
	            }
	            table.insert(msg["embeds"][1]["fields"], TotalHatches)
	
        request = http_request or request or HttpPost or syn.request
        request({Url = Webhooksss, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
    end
end
