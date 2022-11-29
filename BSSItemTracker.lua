-- Getting some info needed for webhook
local username = game:GetService("Players").LocalPlayer.Name
local Headers = {["content-type"] = "application/json"}
local Chat = game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame["Frame_MessageLogDisplay"].Scroller

-- The Main Function
Chat.ChildAdded:Connect(function(instance)

    -- Rare Tokens
    local ItemName
    local NewColor
    local ItemImage
    local Dontsend = false
    local TitleMessage = "A Rare Item Was Just Found!"
    if string.find(instance.TextLabel.Text, "Ticket") then
        if string.find(instance.TextLabel.Text, "printed") or string.find(instance.TextLabel.Text, "prints") then
        else
            ItemName = username .. " just found a **Ticket**!"
            NewColor = "ff9900"
        end
    ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046666450867343410/unknown.png"
    elseif string.find(instance.TextLabel.Text, "Stinger") then
        ItemName = username .. " just found a **Stinger**!"
        NewColor = "ffffff"
        ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046667094604922920/unknown.png"
    elseif string.find(instance.TextLabel.Text, "Star Jelly") then
        ItemName = username .. " just found a **Star Jelly**!"
        NewColor = "fbff00"
        ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046667410675077130/unknown.png"
    elseif string.find(instance.TextLabel.Text, "Star Treat") then
        ItemName = username .. " just found a **Star Treat**!"
        NewColor = "ab8315"
        ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046667952134569984/unknown.png"
    elseif string.find(instance.TextLabel.Text, "Atomic Treat") then
        ItemName = username .. " just found an **Atomic Treat**!"
        NewColor = "6a8a43"
        ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046668414988595200/unknown.png"
    elseif string.find(instance.TextLabel.Text, "Moon Charm") then
        ItemName = username .. " just found a **Moon Charm**!"
        NewColor = "cfd975"
        ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046668924533604372/unknown.png"
    elseif string.find(instance.TextLabel.Text, "Silver Egg") then
        if string.find(instance.TextLabel.Text, "Gifted") then
            ItemName = username .. " just found a **Gifted Silver Egg**!"
            NewColor = "ababab"
            ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046670370792546425/unknown.png"
        else
            ItemName = username .. " just found a **Silver Egg**!"
            NewColor = "ababab"
            ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046669446854492160/unknown.png"
        end
    elseif string.find(instance.TextLabel.Text, "Gold Egg") then
        if string.find(instance.TextLabel.Text, "Gifted") then
            ItemName = username .. " just found a **Gifted Gold Egg**!"
            NewColor = "ffd500"
            ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046670440917106748/unknown.png"
        else
            ItemName = username .. " just found a **Gold Egg**!"
            NewColor = "ffd500"
            ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046669732549513236/unknown.png"
        end
    elseif string.find(instance.TextLabel.Text, "Diamond Egg") then
        if string.find(instance.TextLabel.Text, "Gifted") then
            ItemName = username .. " just found a **Gifted Diamond Egg**!"
            NewColor = "00ffff"
            ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046670537482567720/unknown.png"
        else
            ItemName = username .. " just found a **Diamond Egg**!"
            NewColor = "00ffff"
            ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046670015484669982/unknown.png"
        end
    elseif string.find(instance.TextLabel.Text, "Mythic Egg") then
        if string.find(instance.TextLabel.Text, "Gifted") then
            ItemName = username .. " just found a **Gifted Mythic Egg**!"
            NewColor = "9900ff"
            ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046670927993249862/unknown.png"
        else
            ItemName = username .. " just found a **Mythic Egg**!"
            NewColor = "9900ff"
            ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046670812138176522/unknown.png"
        end
    elseif string.find(instance.TextLabel.Text, "Star Egg") then
        ItemName = username .. " just found a **Star Egg**!"
        NewColor = "ffffff"
        ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046671267882872872/unknown.png"
    elseif string.find(instance.TextLabel.Text, "Magic Bean") then
        ItemName = username .. " just found a **Magic Bean**!"
        NewColor = "00a105"
        ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046672130466664480/unknown.png"
    elseif string.find(instance.TextLabel.Text, "Glue") then
        ItemName = username .. " just found a **Glue**!"
        NewColor = "ff00e6"
        ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046672646458322965/unknown.png"
    elseif string.find(instance.TextLabel.Text, "Oil") then
        ItemName = username .. " just found an **Oil**!"
        NewColor = "fffc96"
        ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046672903095193680/unknown.png"
    elseif string.find(instance.TextLabel.Text, "Enzymes") then
        ItemName = username .. " just found an **Enzymes**!"
        NewColor = "57acc2"
        ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046673455103356978/unknown.png"
    elseif string.find(instance.TextLabel.Text, "Glitter") then
        ItemName = username .. " just found a **Glitter**!"
        NewColor = "c0f0fc"
        ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046673641867325460/unknown.png"
    elseif string.find(instance.TextLabel.Text, "Honeysuckle") then
        ItemName = username .. " just found a **Honeysuckle**!"
        NewColor = "ffdd00"
        ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046674287601393735/unknown.png"
    elseif string.find(instance.TextLabel.Text, "Red Extract") then
        ItemName = username .. " just found a **Red Extract**!"
        NewColor = "ff0000"
        ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046674630481551360/unknown.png"
    elseif string.find(instance.TextLabel.Text, "Blue Extract") then
        ItemName = username .. " just found a **Blue Extract**!"
        NewColor = "0000ff"
        ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046674881477083186/unknown.png"
    elseif string.find(instance.TextLabel.Text, "has planted a ") or string.find(instance.TextLabel.Text, "has appeared") then
        if string.find(instance.TextLabel.Text, "Sprout") then
            local username = game:GetService("Players").LocalPlayer.Name
            if username == "GuidingStarAccount1" then
            else
                if string.find(instance.TextLabel.Text, "Rare") then
                    ItemName = "🌿 A **Rare Sprout** has been summoned! 🌿"
                    NewColor = "ffffff"
                    ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046888871910199326/1249CCAE-D4CC-4C84-A383-A8BCF68C2687.png"
                    TitleMessage = "Sprout Notification"
                elseif string.find(instance.TextLabel.Text, "Epic") then
                    ItemName = "🌿 An **Epic Sprout** has been summoned! 🌿"
                    NewColor = "fff200"
                    ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046888308803911761/EB8C271D-F876-42DB-A31C-3762B205555B.png"
                    TitleMessage = "Sprout Notification"
                elseif string.find(instance.TextLabel.Text, "Legendary") then
                    ItemName = "🌿 A **Legendary Sprout** has been summoned! 🌿"
                    NewColor = "00f2ff"
                    ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046888307033903254/9C0A4B46-0E3B-4DF2-9673-66640430BC3C.png"
                    TitleMessage = "Sprout Notification"
                elseif string.find(instance.TextLabel.Text, "Supreme") then
                    ItemName = "🌿 A **Supreme Sprout** has been summoned! 🌿"
                    NewColor = "09ff00"
                    ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046888307528839279/82F1ABC2-187E-4951-80D3-B3E7EF1D9A77.png"
                    TitleMessage = "Sprout Notification"
                elseif string.find(instance.TextLabel.Text, "Moon") then
                    ItemName = "🌿 A **Moon Sprout** has been summoned! 🌿"
                    NewColor = "baf7f5"
                    ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046893289355366510/image_13.png"
                    TitleMessage = "Sprout Notification"
                elseif string.find(instance.TextLabel.Text, "Debug") then
                    ItemName = "🌿 A **Debug Sprout** has been summoned! 🌿"
                    NewColor = "000000"
                    ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046888307998605322/ED26D21D-AAFA-4284-89AD-5BE86C63543E.png"
                    TitleMessage = "Sprout Notification"
                else
                    ItemName = "🌿 A **Sprout** has been summoned! 🌿"
                    NewColor = "047800"
                    ItemImage = "https://media.discordapp.net/attachments/750156768834879488/1046865455807221810/unknown.png"
                    TitleMessage = "Sprout Notification"
                end
            end
        end
    else
        Dontsend = true
    end

    local AmountNumber
    if string.find(instance.TextLabel.Text, "has planted a ") or string.find(instance.TextLabel.Text, "has appeared") then
        if string.find(instance.TextLabel.Text, "Sprout") then
            AmountNumber = "Nil"
        end
    elseif string.find(instance.TextLabel.Text, "1") then
        if string.find(instance.TextLabel.Text, "10") then
            if string.find(instance.TextLabel.Text, "100") then
                AmountNumber = "100"
            else
                AmountNumber = "10"
            end
        elseif string.find(instance.TextLabel.Text, "11") then
            AmountNumber = "11"
        elseif string.find(instance.TextLabel.Text, "12") then
            AmountNumber = "12"
        elseif string.find(instance.TextLabel.Text, "13") then
            AmountNumber = "13"
        elseif string.find(instance.TextLabel.Text, "14") then
            AmountNumber = "14"
        elseif string.find(instance.TextLabel.Text, "15") then
            AmountNumber = "15"
        elseif string.find(instance.TextLabel.Text, "16") then
            AmountNumber = "16"
        elseif string.find(instance.TextLabel.Text, "17") then
            AmountNumber = "17"
        elseif string.find(instance.TextLabel.Text, "18") then
            AmountNumber = "18"
        elseif string.find(instance.TextLabel.Text, "19") then
            AmountNumber = "19"
        else
            AmountNumber = "1"
        end
    elseif string.find(instance.TextLabel.Text, "2") then
        if string.find(instance.TextLabel.Text, "20") then
            AmountNumber = "20"
        elseif string.find(instance.TextLabel.Text, "21") then
            AmountNumber = "21"
        elseif string.find(instance.TextLabel.Text, "22") then
            AmountNumber = "22"
        elseif string.find(instance.TextLabel.Text, "23") then
            AmountNumber = "23"
        elseif string.find(instance.TextLabel.Text, "24") then
            AmountNumber = "24"
        elseif string.find(instance.TextLabel.Text, "25") then
            AmountNumber = "25"
        elseif string.find(instance.TextLabel.Text, "26") then
            AmountNumber = "26"
        elseif string.find(instance.TextLabel.Text, "27") then
            AmountNumber = "27"
        elseif string.find(instance.TextLabel.Text, "28") then
            AmountNumber = "28"
        elseif string.find(instance.TextLabel.Text, "29") then
            AmountNumber = "29"
        else
            AmountNumber = "2"
        end
    elseif string.find(instance.TextLabel.Text, "3") then
        if string.find(instance.TextLabel.Text, "30") then
            AmountNumber = "30"
        elseif string.find(instance.TextLabel.Text, "31") then
            AmountNumber = "31"
        elseif string.find(instance.TextLabel.Text, "32") then
            AmountNumber = "32"
        elseif string.find(instance.TextLabel.Text, "33") then
            AmountNumber = "33"
        elseif string.find(instance.TextLabel.Text, "34") then
            AmountNumber = "34"
        elseif string.find(instance.TextLabel.Text, "35") then
            AmountNumber = "35"
        elseif string.find(instance.TextLabel.Text, "36") then
            AmountNumber = "36"
        elseif string.find(instance.TextLabel.Text, "37") then
            AmountNumber = "37"
        elseif string.find(instance.TextLabel.Text, "38") then
            AmountNumber = "38"
        elseif string.find(instance.TextLabel.Text, "39") then
            AmountNumber = "39"
        else
            AmountNumber = "3"
        end
    elseif string.find(instance.TextLabel.Text, "4") then
        if string.find(instance.TextLabel.Text, "40") then
            AmountNumber = "40"
        elseif string.find(instance.TextLabel.Text, "41") then
            AmountNumber = "41"
        elseif string.find(instance.TextLabel.Text, "42") then
            AmountNumber = "42"
        elseif string.find(instance.TextLabel.Text, "43") then
            AmountNumber = "43"
        elseif string.find(instance.TextLabel.Text, "44") then
            AmountNumber = "44"
        elseif string.find(instance.TextLabel.Text, "45") then
            AmountNumber = "45"
        elseif string.find(instance.TextLabel.Text, "46") then
            AmountNumber = "46"
        elseif string.find(instance.TextLabel.Text, "47") then
            AmountNumber = "47"
        elseif string.find(instance.TextLabel.Text, "48") then
            AmountNumber = "48"
        elseif string.find(instance.TextLabel.Text, "49") then
            AmountNumber = "49"
        else
            AmountNumber = "4"
        end
    elseif string.find(instance.TextLabel.Text, "5") then
        if string.find(instance.TextLabel.Text, "50") then
            AmountNumber = "50"
        elseif string.find(instance.TextLabel.Text, "51") then
            AmountNumber = "51"
        elseif string.find(instance.TextLabel.Text, "52") then
            AmountNumber = "52"
        elseif string.find(instance.TextLabel.Text, "53") then
            AmountNumber = "53"
        elseif string.find(instance.TextLabel.Text, "54") then
            AmountNumber = "54"
        elseif string.find(instance.TextLabel.Text, "55") then
            AmountNumber = "55"
        elseif string.find(instance.TextLabel.Text, "56") then
            AmountNumber = "56"
        elseif string.find(instance.TextLabel.Text, "57") then
            AmountNumber = "57"
        elseif string.find(instance.TextLabel.Text, "58") then
            AmountNumber = "58"
        elseif string.find(instance.TextLabel.Text, "59") then
            AmountNumber = "59"
        else
            AmountNumber = "5"
        end
    elseif string.find(instance.TextLabel.Text, "6") then
        if string.find(instance.TextLabel.Text, "60") then
            AmountNumber = "60"
        elseif string.find(instance.TextLabel.Text, "61") then
            AmountNumber = "61"
        elseif string.find(instance.TextLabel.Text, "62") then
            AmountNumber = "62"
        elseif string.find(instance.TextLabel.Text, "63") then
            AmountNumber = "63"
        elseif string.find(instance.TextLabel.Text, "64") then
            AmountNumber = "64"
        elseif string.find(instance.TextLabel.Text, "65") then
            AmountNumber = "65"
        elseif string.find(instance.TextLabel.Text, "66") then
            AmountNumber = "66"
        elseif string.find(instance.TextLabel.Text, "67") then
            AmountNumber = "67"
        elseif string.find(instance.TextLabel.Text, "68") then
            AmountNumber = "68"
        elseif string.find(instance.TextLabel.Text, "69") then
            AmountNumber = "69"
        else
            AmountNumber = "6"
        end
    elseif string.find(instance.TextLabel.Text, "7") then
        if string.find(instance.TextLabel.Text, "70") then
            AmountNumber = "70"
        elseif string.find(instance.TextLabel.Text, "71") then
            AmountNumber = "71"
        elseif string.find(instance.TextLabel.Text, "72") then
            AmountNumber = "72"
        elseif string.find(instance.TextLabel.Text, "73") then
            AmountNumber = "73"
        elseif string.find(instance.TextLabel.Text, "74") then
            AmountNumber = "74"
        elseif string.find(instance.TextLabel.Text, "75") then
            AmountNumber = "75"
        elseif string.find(instance.TextLabel.Text, "76") then
            AmountNumber = "76"
        elseif string.find(instance.TextLabel.Text, "77") then
            AmountNumber = "77"
        elseif string.find(instance.TextLabel.Text, "78") then
            AmountNumber = "78"
        elseif string.find(instance.TextLabel.Text, "79") then
            AmountNumber = "79"
        else
            AmountNumber = "7"
        end
    elseif string.find(instance.TextLabel.Text, "8") then
        if string.find(instance.TextLabel.Text, "80") then
            AmountNumber = "80"
        elseif string.find(instance.TextLabel.Text, "81") then
            AmountNumber = "81"
        elseif string.find(instance.TextLabel.Text, "82") then
            AmountNumber = "82"
        elseif string.find(instance.TextLabel.Text, "83") then
            AmountNumber = "83"
        elseif string.find(instance.TextLabel.Text, "84") then
            AmountNumber = "84"
        elseif string.find(instance.TextLabel.Text, "85") then
            AmountNumber = "85"
        elseif string.find(instance.TextLabel.Text, "86") then
            AmountNumber = "86"
        elseif string.find(instance.TextLabel.Text, "87") then
            AmountNumber = "87"
        elseif string.find(instance.TextLabel.Text, "88") then
            AmountNumber = "88"
        elseif string.find(instance.TextLabel.Text, "89") then
            AmountNumber = "89"
        else
            AmountNumber = "8"
        end
    elseif string.find(instance.TextLabel.Text, "9") then
        if string.find(instance.TextLabel.Text, "90") then
            AmountNumber = "90"
        elseif string.find(instance.TextLabel.Text, "91") then
            AmountNumber = "91"
        elseif string.find(instance.TextLabel.Text, "92") then
            AmountNumber = "92"
        elseif string.find(instance.TextLabel.Text, "93") then
            AmountNumber = "93"
        elseif string.find(instance.TextLabel.Text, "94") then
            AmountNumber = "94"
        elseif string.find(instance.TextLabel.Text, "95") then
            AmountNumber = "95"
        elseif string.find(instance.TextLabel.Text, "96") then
            AmountNumber = "96"
        elseif string.find(instance.TextLabel.Text, "97") then
            AmountNumber = "97"
        elseif string.find(instance.TextLabel.Text, "98") then
            AmountNumber = "98"
        elseif string.find(instance.TextLabel.Text, "99") then
            AmountNumber = "99"
        else
            AmountNumber = "9"
        end
    else
        AmountNumber = ">100"
    end
    
    local SourceOfItem
    if string.find(instance.TextLabel.Text, "has planted a") or string.find(instance.TextLabel.Text, "has appeared") then
        if string.find(instance.TextLabel.Text, "Sprout") then
            SourceOfItem = "Nil"
        end
    elseif string.find(instance.TextLabel.Text, "Wealth Clock") then
        SourceOfItem = "Wealth Clock"
    elseif string.find(instance.TextLabel.Text, "Leaves") then
        SourceOfItem = "Leaves"
    elseif string.find(instance.TextLabel.Text, "Vicious Bee") then
        SourceOfItem = "Vicious Bee"
    elseif string.find(instance.TextLabel.Text, "Sprout") then
        SourceOfItem = "Sprout"
    elseif string.find(instance.TextLabel.Text, "Aphid") then
        SourceOfItem = "Aphid"
    elseif string.find(instance.TextLabel.Text, "Ladybug") then
        SourceOfItem = "Ladybug"
    elseif string.find(instance.TextLabel.Text, "Rhino Beetle") then
        SourceOfItem = "Rhino Beetle"
    elseif string.find(instance.TextLabel.Text, "Spider") then
        SourceOfItem = "Spider"
    elseif string.find(instance.TextLabel.Text, "Mantis") then
        SourceOfItem = "Mantis"
    elseif string.find(instance.TextLabel.Text, "Scorpion") then
        SourceOfItem = "Scorpion"
    elseif string.find(instance.TextLabel.Text, "Werewolf") then
        SourceOfItem = "Werewolf"
    elseif string.find(instance.TextLabel.Text, "Tunnel Bear") then
        SourceOfItem = "Tunnel Bear"
    elseif string.find(instance.TextLabel.Text, "King Beetle") then
        SourceOfItem = "King Beetle"
    elseif string.find(instance.TextLabel.Text, "Puffshroom") then
        SourceOfItem = "Puffshroom"
    elseif string.find(instance.TextLabel.Text, "Glue Dispenser") then
        SourceOfItem = "Glue Dispenser"
    elseif string.find(instance.TextLabel.Text, "Blender") then
        SourceOfItem = "Blender"
    else
        SourceOfItem = "Other"
    end

    -- Other Features
    local OSTime = os.time()
    local Webhooksss = _G.Webhooks
    local Time = os.date('!*t', OSTime)
    
    -- The Webhook
    if Dontsend == false then
        local Info = {
            ["content"] = "",
            ["embeds"] = {
            {
                    ["description"] = ItemName,
            ["author"] = {},
            ["title"] = TitleMessage,
            ["thumbnail"] = {
                ["url"] = ItemImage
            },
            ["footer"] = {
                ["text"] = "Bee Swarm Simulator Item Tracker",
            },
            ['timestamp'] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
            ["color"] = tonumber(tostring("0x" .. NewColor)),
            ["fields"] = {},}}}
            if TitleMessage == "A Rare Item Was Just Found!" then
        		local thingy = {
                    ["name"] = "Amount",
                    ["value"] = AmountNumber,
                    ["inline"] = true
                }   
        		table.insert(Info["embeds"][1]["fields"], thingy)
                local thingy1 = {
                    ["name"] = "Source",
                    ["value"] = SourceOfItem,
                    ["inline"] = true
                }
                table.insert(Info["embeds"][1]["fields"], thingy1)
    		end
        local Info = game:GetService("HttpService"):JSONEncode(Info)
        local HttpRequest = http_request;
        if syn then HttpRequest = syn.request else HttpRequest = http_request end
            HttpRequest({Url=Webhooksss, Body=Info, Method="POST", Headers=Headers})
        end
end)

