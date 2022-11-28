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
    else
        Dontsend = true
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
            ["fields"] = {}},}}
        local Info = game:GetService("HttpService"):JSONEncode(Info)
        local HttpRequest = http_request;
        if syn then HttpRequest = syn.request else HttpRequest = http_request end
            HttpRequest({Url=Webhooksss, Body=Info, Method="POST", Headers=Headers})
        end
end)
