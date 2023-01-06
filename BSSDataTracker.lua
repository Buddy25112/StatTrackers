if game.PlaceId == 1537690962 then
            local username = game:GetService("Players").LocalPlayer.Name
            
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
            
            local playerstatsevent = game:GetService("ReplicatedStorage").Events.RetrievePlayerStats
            local statstable = playerstatsevent:InvokeServer()
            getgenv().temptable = {
                honeystart = 0,
                honeycurrent = statstable.Totals.Honey,
            }
            
            if temptable.honeystart == 0 then temptable.honeystart = statstable.Totals.Honey end
            function statsget() local StatCache = require(game.ReplicatedStorage.ClientStatCache) local stats = StatCache:Get() return stats end
            
            local NewHoney1 = statsget().Totals.Honey
            local NewHoney2 = statsget().Totals.Honey
                
            task.spawn(function() while task.wait(10) do
                temptable.honeycurrent = statsget().Totals.Honey
                local Honey = temptable.honeycurrent
                local NewHoney = Honey - NewHoney1
                local HoneyPerHour = Honey - NewHoney2
                NewHoney2 = HoneyPerHour + Honey
                local WebhookDataTracker = Webhook
                local OSTime = os.time();
                local Time = os.date('!*t', OSTime);
                timestamp = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec);
                local msg = {
                    ["embeds"] = {
                        {
                            ["title"] = username .. "'s Hourly Honey Data",
                            ["color"] = 0xfcec03,
                            ["description"] = "Honey Data will be displayed below",
                            ["thumbnail"] = {
                                ["url"] = "https://media.discordapp.net/attachments/750156768834879488/976345069688864778/unknown.png"
                            },
                            ["fields"] = {},
                            ["footer"] = {
                                ["text"] = "Updates every hour!"
                            },
                            ['timestamp'] = timestamp,
                        }
                    }
                }
                local thingy = {
                    ["name"] = "Total Honey",
                    ["value"] = "Count:" .. abb(Honey) .. " | +" .. abb(HoneyPerHour) .. " *in the last Hour*",
                    ["inline"] = true
                }   
                table.insert(Info["embeds"][1]["fields"], thingy)
                local thingy1 = {
                    ["name"] = "Honey Made Since Rejoin",
                    ["value"] = "Count:" .. abb(NewHoney),
                    ["inline"] = true
                }
                table.insert(Info["embeds"][1]["fields"], thingy1)
                local thingy2 = {
                    ["name"] = "Eggs Left",
                    ["value"] = abb(eggsleftPOS),
                    ["inline"] = true
                }
                table.insert(Info["embeds"][1]["fields"], thingy2)
                request = http_request or request or HttpPost or syn.request
                request({Url = WebhookDataTracker, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
            end
        end)
        end
        print("Has been enabled successfully")
