if game.PlaceId == 9551640993 then
	local NewColor = (_G.Color == "" and "fffff") or _G.Color
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
	
        request = http_request or request or HttpPost or syn.request
        request({Url = Webhooksss, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
    end
end
