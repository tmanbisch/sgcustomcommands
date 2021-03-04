--SG custom network commands
--Made to have easy access to anything that is on the network
--Planned updates
--  Add ability to join other servers from current server 

--Made by T-Man himself the best dev


if CLIENT then

    buttonHeight = ScrH() * 0.13
    buttonWidth = ScrW() * 0.15


    --tests the map to determin the gamemode
    local map = game.GetMap()
    local mapShort = string.sub(map, 1, 3)
    if mapShort == "ttt" then
        rule_link = "https://smithtainment.com/forums/thread-4521.html"
        apply_link = "https://smithtainment.com/forums/forum-48.html"
    elseif mapShort == "dr_" then
        apply_link = "https://smithtainment.com/forums/forum-422.html"
        rule_link = "https://smithtainment.com/forums/thread-4524.html"
    elseif mapShort == "rp_" then
        apply_link = "https://smithtainment.com/forums/forum-456.html"
        rule_link = "https://smithtainment.com/forums/forum-355.html"
    else
        apply_link = "https://smithtainment.com/forums/forum-270.html"
        rule_link = "https://smithtainment.com/forums/thread-4522.html"
    end
    
    --Open the loading screen settings
    hook.Add( "OnPlayerChat", "Loading_Screen", function( ply, text )
        if ply == LocalPlayer() and text == "!ls" then
            local frame = vgui.Create("DFrame")
            frame:SetTitle("Loading Screen Settings")
            frame:SetSize(ScrW() * 0.9, ScrH() * 0.9)
            frame:Center()
            frame:SetVisible(true)
            frame:SetDraggable(false)
            frame:ShowCloseButton(true) 
            frame:MakePopup()
            local html = vgui.Create( "DHTML" , frame )
            html:Dock( FILL )
            html:OpenURL("https://smithtainment.com/loadingscreen/")
            return true
        end
    end )
    concommand.Add("sg_loadingscreen", function( ply, cmd, args)
        if ply == LocalPlayer() then
            local frame = vgui.Create("DFrame")
            frame:SetTitle("Loading Screen Customizing")
            frame:SetSize(ScrW() * 0.9, ScrH() * 0.9)
            frame:Center()
            frame:SetVisible(true)
            frame:SetDraggable(false)
            frame:ShowCloseButton(true) 
            frame:MakePopup()
            local html = vgui.Create( "DHTML" , frame )
            html:Dock( FILL )
            html:OpenURL("https://smithtainment.com/loadingscreen/")
            return true
        end
    end )

    --Open Forums
    hook.Add( "OnPlayerChat", "Open_forums", function( ply, text )
        if ply == LocalPlayer() and text == "!forums" then
            local frame = vgui.Create("DFrame")
            frame:SetTitle("Community Forums")
            frame:SetSize(ScrW() * 0.9, ScrH() * 0.9)
            frame:Center()
            frame:SetVisible(true)
            frame:SetDraggable(false)
            frame:ShowCloseButton(true) 
            frame:MakePopup()
            local html = vgui.Create( "DHTML" , frame )
            html:Dock( FILL )
            html:OpenURL("https://smithtainment.com/forums/")
            return true
        end
    end )
    concommand.Add("sg_forums", function( ply, cmd, args)
        if ply == LocalPlayer() then
            local frame = vgui.Create("DFrame")
            frame:SetTitle("Community Forums")
            frame:SetSize(ScrW() * 0.9, ScrH() * 0.9)
            frame:Center()
            frame:SetVisible(true)
            frame:SetDraggable(false)
            frame:ShowCloseButton(true) 
            frame:MakePopup()
            local html = vgui.Create( "DHTML" , frame )
            html:Dock( FILL )
            html:OpenURL("https://smithtainment.com/forums/")
            return true
        end
    end )

    --open the rules post
    hook.Add( "OnPlayerChat", "Rules", function( ply, text )
        if ply == LocalPlayer() and text == "!rules" then
            local frame = vgui.Create("DFrame")
            frame:SetTitle("TTT Rules")
            frame:SetSize(ScrW() * 0.9, ScrH() * 0.9)
            frame:Center()
            frame:SetVisible(true)
            frame:SetDraggable(false)
            frame:ShowCloseButton(true) 
            frame:MakePopup()
            local html = vgui.Create( "DHTML" , frame )
            html:Dock( FILL )
            html:OpenURL(rule_link)
            return true
        end
    end )
    concommand.Add("sg_rules", function( ply, cmd, args)
        if ply == LocalPlayer() then
            local frame = vgui.Create("DFrame")
            frame:SetTitle("TTT Rules")
            frame:SetSize(ScrW() * 0.9, ScrH() * 0.9)
            frame:Center()
            frame:SetVisible(true)
            frame:SetDraggable(false)
            frame:ShowCloseButton(true) 
            frame:MakePopup()
            local html = vgui.Create( "DHTML" , frame )
            html:Dock( FILL )
            html:OpenURL(rule_link)
            return true
        end
    end )

    --open the application section
    hook.Add( "OnPlayerChat", "Apply", function( ply, text )
        if ply == LocalPlayer() and text == "!apply" then
            local frame = vgui.Create("DFrame")
            frame:SetTitle("Apply for TTT")
            frame:SetSize(ScrW() * 0.9, ScrH() * 0.9)
            frame:Center()
            frame:SetVisible(true)
            frame:SetDraggable(false)
            frame:ShowCloseButton(true) 
            frame:MakePopup()
            local html = vgui.Create( "DHTML" , frame )
            html:Dock( FILL )
            html:OpenURL(apply_link)
            return true
        end
    end )
    concommand.Add("sg_apply", function( ply, cmd, args)
        if ply == LocalPlayer() then
            local frame = vgui.Create("DFrame")
            frame:SetTitle("Apply for TTT")
            frame:SetSize(ScrW() * 0.9, ScrH() * 0.9)
            frame:Center()
            frame:SetVisible(true)
            frame:SetDraggable(false)
            frame:ShowCloseButton(true) 
            frame:MakePopup()
            local html = vgui.Create( "DHTML" , frame )
            html:Dock( FILL )
            html:OpenURL(apply_link)
            return true
        end
    end )

    --open appeals section
    hook.Add( "OnPlayerChat", "Appeal", function( ply, text )
        if ply == LocalPlayer() and text == "!appeal" then
            local frame = vgui.Create("DFrame")
            frame:SetTitle("Appeal your Warns")
            frame:SetSize(ScrW() * 0.9, ScrH() * 0.9)
            frame:Center()
            frame:SetVisible(true)
            frame:SetDraggable(false)
            frame:ShowCloseButton(true) 
            frame:MakePopup()
            local html = vgui.Create( "DHTML" , frame )
            html:Dock( FILL )
            html:OpenURL("https://smithtainment.com/forums/forum-445.html")
            return true
        end
    end )
    concommand.Add("sg_appeal", function( ply, cmd, args)
        if ply == LocalPlayer() then
            local frame = vgui.Create("DFrame")
            frame:SetTitle("Appeal your Warns")
            frame:SetSize(ScrW() * 0.9, ScrH() * 0.9)
            frame:Center()
            frame:SetVisible(true)
            frame:SetDraggable(false)
            frame:ShowCloseButton(true) 
            frame:MakePopup()
            local html = vgui.Create( "DHTML" , frame )
            html:Dock( FILL )
            html:OpenURL("https://smithtainment.com/forums/forum-445.html")
            return true
        end
    end )

    --opens the dev news
    hook.Add( "OnPlayerChat", "News", function( ply, text )
        if ply == LocalPlayer() and text == "!news" then
            local frame = vgui.Create("DFrame")
            frame:SetTitle("Devenlopment News")
            frame:SetSize(ScrW() * 0.9, ScrH() * 0.9)
            frame:Center()
            frame:SetVisible(true)
            frame:SetDraggable(false)
            frame:ShowCloseButton(true) 
            frame:MakePopup()
            local html = vgui.Create( "DHTML" , frame )
            html:Dock( FILL )
            html:OpenURL("https://smithtainment.com/news")
            return true
        end
    end )
    concommand.Add("sg_news", function( ply, cmd, args)
        if ply == LocalPlayer() then
            local frame = vgui.Create("DFrame")
            frame:SetTitle("Development News")
            frame:SetSize(ScrW() * 0.9, ScrH() * 0.9)
            frame:Center()
            frame:SetVisible(true)
            frame:SetDraggable(false)
            frame:ShowCloseButton(true) 
            frame:MakePopup()
            local html = vgui.Create( "DHTML" , frame )
            html:Dock( FILL )
            html:OpenURL("https://smithtainment.com/news")
            return true
        end
    end )

    --opens donation site
    hook.Add( "OnPlayerChat", "Donate", function( ply, text )
        if ply == LocalPlayer() and text == "!donate" then
            local frame = vgui.Create("DFrame")
            frame:SetTitle("Donation Site")
            frame:SetSize(ScrW() * 0.9, ScrH() * 0.9)
            frame:Center()
            frame:SetVisible(true)
            frame:SetDraggable(false)
            frame:ShowCloseButton(true) 
            frame:MakePopup()
            local html = vgui.Create( "DHTML" , frame )
            html:Dock( FILL )
            html:OpenURL("http://donate.smithtainment.com/store.php?page=server")
            return true
        end
    end )
    concommand.Add("sg_donate", function( ply, cmd, args)
        if ply == LocalPlayer() then
            local frame = vgui.Create("DFrame")
            frame:SetTitle("Donation Site")
            frame:SetSize(ScrW() * 0.9, ScrH() * 0.9)
            frame:Center()
            frame:SetVisible(true)
            frame:SetDraggable(false)
            frame:ShowCloseButton(true) 
            frame:MakePopup()
            local html = vgui.Create( "DHTML" , frame )
            html:Dock( FILL )
            html:OpenURL("http://donate.smithtainment.com/store.php?page=server")
            return true
        end
    end )

    --opens the discord link invite
    hook.Add( "OnPlayerChat", "Join Discord", function( ply, text )
        if ply == LocalPlayer() and text == "!discord" then
            local frame = vgui.Create("DFrame")
            frame:SetTitle("Discords")
            frame:SetSize(ScrW() * 0.33, ScrH() * 0.33)
            frame:Center()
            frame:SetVisible(true)
            frame:SetDraggable(false)
            frame:ShowCloseButton(true) 
            frame:MakePopup()
            local button = vgui.Create( "DButton", frame )
            button:SetSize( buttonWidth, buttonHeight)
            button:Center()
            button:AlignLeft(15) 
            button:SetText( "Join our\nPublic Discord!" )
            button.DoClick = function()
                gui.OpenURL( "http://discord.gg/vFgEvWa" )
            end
            local button = vgui.Create( "DButton", frame )
            button:SetSize(buttonWidth, buttonHeight)
            button:Center()
            button:AlignRight(15) 
            button:SetText( "Join our\nDevelopment\nDiscord!" )
            button.DoClick = function()
                gui.OpenURL( "https://discord.gg/bAKbjEQ" )
            end
            return true
        end
    end )
    concommand.Add("sg_discord", function( ply, cmd, args)
        if ply == LocalPlayer() then
            local frame = vgui.Create("DFrame")
            frame:SetTitle("Discords")
            frame:SetSize(ScrW() * 0.33, ScrH() * 0.33)
            frame:Center()
            frame:SetVisible(true)
            frame:SetDraggable(false)
            frame:ShowCloseButton(true) 
            frame:MakePopup()
            local button = vgui.Create( "DButton", frame )
            button:SetSize( buttonWidth, buttonHeight)
            button:Center()
            button:AlignLeft(15) 
            button:SetText( "Join our\nPublic Discord!" )
            button.DoClick = function()
                gui.OpenURL( "http://discord.gg/vFgEvWa" )
            end
            local button = vgui.Create( "DButton", frame )
            button:SetSize(buttonWidth, buttonHeight)
            button:Center()
            button:AlignRight(15) 
            button:SetText( "Join our\nDevelopment\nDiscord!" )
            button.DoClick = function()
                gui.OpenURL( "https://discord.gg/bAKbjEQ" )
            end
            return true
        end
    end )

    --opens the steam group
    hook.Add( "OnPlayerChat", "Steam_Group", function( ply, text )
        if ply == LocalPlayer() and text == "!steam" then
            local frame = vgui.Create("DFrame")
            frame:SetTitle("Steam Group")
            frame:SetSize(ScrW() * 0.9, ScrH() * 0.9)
            frame:Center()
            frame:SetVisible(true)
            frame:SetDraggable(false)
            frame:ShowCloseButton(true) 
            frame:MakePopup()
            local html = vgui.Create( "DHTML" , frame )
            html:Dock( FILL )
            html:OpenURL("https://steamcommunity.com/groups/Smithtainment")
            return true
        end
    end )
    concommand.Add("sg_steamgroup", function( ply, cmd, args)
        if ply == LocalPlayer() then
            local frame = vgui.Create("DFrame")
            frame:SetTitle("Steam Group")
            frame:SetSize(ScrW() * 0.9, ScrH() * 0.9)
            frame:Center()
            frame:SetVisible(true)
            frame:SetDraggable(false)
            frame:ShowCloseButton(true) 
            frame:MakePopup()
            local html = vgui.Create( "DHTML" , frame )
            html:Dock( FILL )
            html:OpenURL("https://steamcommunity.com/groups/Smithtainment")
            return true
        end
    end )

    --Opens a panel to show gmod servers and buttons to connect to them
    hook.Add( "OnPlayerChat", "Other Servers", function( ply, text )
        if ply == LocalPlayer() and text == "!servers" then
            local frame = vgui.Create("DFrame")
            frame:SetTitle("Servers")
            frame:SetSize(ScrW() * 0.5, ScrH() * 0.5)
            frame:Center()
            frame:SetVisible(true)
            frame:SetDraggable(false)
            frame:ShowCloseButton(true) 
            frame:MakePopup()
            local button = vgui.Create( "DButton", frame )
            button:SetSize( buttonWidth, buttonHeight )
            button:AlignTop(25)
            button:AlignLeft(20)
            button:SetText( "Vanilla TTT\n192.223.29.13:27015" )
            button.DoClick = function()
                LocalPlayer():ConCommand("connect 192.223.29.13:27015")
            end
            local button = vgui.Create( "DButton", frame )
            button:SetSize( buttonWidth, buttonHeight )
            button:Center()
            button:AlignTop(25) 
            button:SetText( "Semi-Vanilla TTT\n208.103.169.56:27023" )
            button.DoClick = function()
                LocalPlayer():ConCommand("connect 208.103.169.56:27023")
            end
            local button = vgui.Create( "DButton", frame )
            button:SetSize( buttonWidth, buttonHeight )
            button:AlignRight(20)
            button:AlignTop(25) 
            button:SetText( "UK Vanilla TTT\n54.37.245.82:27015" )
            button.DoClick = function()
                LocalPlayer():ConCommand("connect 54.37.245.82:27015")
            end
            local button = vgui.Create( "DButton", frame )
            button:SetSize( buttonWidth, buttonHeight )
            button:Center()
            button:AlignLeft(20)
            button:SetText( "Vanilla Prop Hunt\n208.103.169.108:27024" )
            button.DoClick = function()
                LocalPlayer():ConCommand("connect 208.103.169.108:27024")
            end
            local button = vgui.Create( "DButton", frame )
            button:SetSize( buttonWidth, buttonHeight )
            button:Center()
            button:SetText( "True Prop Hunt\n51.161.87.34:27230" )
            button.DoClick = function()
                LocalPlayer():ConCommand("connect 51.161.87.34:27230")
            end
            local button = vgui.Create( "DButton", frame )
            button:SetSize( buttonWidth, buttonHeight )
            button:Center()
            button:AlignRight(20) 
            button:SetText( "Classic Prop Hunt\n185.249.196.141:27515" )
            button.DoClick = function()
                LocalPlayer():ConCommand("connect 185.249.196.141:27515")
            end
            local button = vgui.Create( "DButton", frame )
            button:SetSize( buttonWidth, buttonHeight )
            button:AlignLeft(20)
            button:AlignBottom(20) 
            button:SetText( "Dark RP\n104.243.42.190:27085" )
            button.DoClick = function()
                LocalPlayer():ConCommand("connect 104.243.42.190:27085")
            end
            local button = vgui.Create( "DButton", frame )
            button:SetSize( buttonWidth, buttonHeight )
            button:Center()
            button:AlignBottom(20) 
            button:SetText( "Deathrun\n185.249.196.91:27015" )
            button.DoClick = function()
                LocalPlayer():ConCommand("connect 185.249.196.91:27015")
            end
            local button = vgui.Create( "DButton", frame )
            button:SetSize( buttonWidth, buttonHeight )
            button:AlignRight(20)
            button:AlignBottom(20)
            button:SetText( "GMOD Among Us\n104.243.42.187:27025" )
            button.DoClick = function()
                LocalPlayer():ConCommand("connect 104.243.42.187:27025")
            end
            return true
        end
    end )
    concommand.Add("sg_servers", function( ply, cmd, args)
        if ply == LocalPlayer() then
            local frame = vgui.Create("DFrame")
            frame:SetTitle("Servers")
            frame:SetSize(ScrW() * 0.5, ScrH() * 0.5)
            frame:Center()
            frame:SetVisible(true)
            frame:SetDraggable(false)
            frame:ShowCloseButton(true) 
            frame:MakePopup()
            local button = vgui.Create( "DButton", frame )
            button:SetSize( buttonWidth, buttonHeight )
            button:AlignTop(25)
            button:AlignLeft(20)
            button:SetText( "Vanilla TTT\n192.223.29.13:27015" )
            button.DoClick = function()
                LocalPlayer():ConCommand("connect 192.223.29.13:27015")
            end
            local button = vgui.Create( "DButton", frame )
            button:SetSize( buttonWidth, buttonHeight )
            button:Center()
            button:AlignTop(25) 
            button:SetText( "Semi-Vanilla TTT\n208.103.169.56:27023" )
            button.DoClick = function()
                LocalPlayer():ConCommand("connect 208.103.169.56:27023")
            end
            local button = vgui.Create( "DButton", frame )
            button:SetSize( buttonWidth, buttonHeight )
            button:AlignRight(20)
            button:AlignTop(25) 
            button:SetText( "UK Vanilla TTT\n54.37.245.82:27015" )
            button.DoClick = function()
                LocalPlayer():ConCommand("connect 54.37.245.82:27015")
            end
            local button = vgui.Create( "DButton", frame )
            button:SetSize( buttonWidth, buttonHeight )
            button:Center()
            button:AlignLeft(20)
            button:SetText( "Vanilla Prop Hunt\n208.103.169.108:27024" )
            button.DoClick = function()
                LocalPlayer():ConCommand("connect 208.103.169.108:27024")
            end
            local button = vgui.Create( "DButton", frame )
            button:SetSize( buttonWidth, buttonHeight )
            button:Center()
            button:SetText( "True Prop Hunt\n51.161.87.34:27230" )
            button.DoClick = function()
                LocalPlayer():ConCommand("connect 51.161.87.34:27230")
            end
            local button = vgui.Create( "DButton", frame )
            button:SetSize( buttonWidth, buttonHeight )
            button:Center()
            button:AlignRight(20) 
            button:SetText( "Classic Prop Hunt\n185.249.196.141:27515" )
            button.DoClick = function()
                LocalPlayer():ConCommand("connect 185.249.196.141:27515")
            end
            local button = vgui.Create( "DButton", frame )
            button:SetSize( buttonWidth, buttonHeight )
            button:AlignLeft(20)
            button:AlignBottom(20) 
            button:SetText( "Dark RP\n104.243.42.190:27085" )
            button.DoClick = function()
                LocalPlayer():ConCommand("connect 104.243.42.190:27085")
            end
            local button = vgui.Create( "DButton", frame )
            button:SetSize( buttonWidth, buttonHeight )
            button:Center()
            button:AlignBottom(20) 
            button:SetText( "Deathrun\n185.249.196.91:27015" )
            button.DoClick = function()
                LocalPlayer():ConCommand("connect 185.249.196.91:27015")
            end
            local button = vgui.Create( "DButton", frame )
            button:SetSize( buttonWidth, buttonHeight )
            button:AlignRight(20)
            button:AlignBottom(20)
            button:SetText( "GMOD Among Us\n104.243.42.187:27025" )
            button.DoClick = function()
                LocalPlayer():ConCommand("connect 104.243.42.187:27025")
            end
            return true
        end
    end )

    --shows every command able to be used
    hook.Add( "OnPlayerChat", "SG_Help", function( ply, text )
        if ply == LocalPlayer() and text == "!sghelp" then
            ply:ChatPrint("!sghelp - sg_help - Shows this help message")
            ply:ChatPrint("!ls - sg_loadingscreen - Open Loading Screen Settings")
            ply:ChatPrint("!forums - sg_forums - Opens the forums")
            ply:ChatPrint("!rules - sg_rules - Shows the TTT Rules")
            ply:ChatPrint("!apply - sg_apply - Opens the page to for where to apply for staff")
            ply:ChatPrint("!appeal - sg_appeal - Opens the page of where to appeal warns")
            ply:ChatPrint("!donate - sg_donate - Opens the donation page")
            ply:ChatPrint("!discord - sg_discord - Opens an invite to the SG Discord")
            ply:ChatPrint("!news - sg_news - Opens the latest updates from the development team")
            ply:ChatPrint("!steam - sg_steamgroup - Opens the steam group site.")
            ply:ChatPrint("!servers - sg_servers - Shows current servers with their IP")
            ply:ChatPrint("sg_info - shows info about this addon")
        end
    end)
    concommand.Add("sg_help", function( ply, cmd, args)
        if ply == LocalPlayer() then
            print("!sghelp - sg_help - Shows this help message")
            print("!ls - sg_loadingscreen - Open Loading Screen Settings")
            print("!forums - sg_forums - Opens the forums")
            print("!rules - sg_rules - Shows the TTT Rules")
            print("!apply - sg_apply - Opens the page to for where to apply for staff")
            print("!appeal - sg_appeal - Opens the page of where to appeal warns")
            print("!donate - sg_donate - Opens the donation page")
            print("!discord - sg_discord - Opens an invite to the SG Discord")
            print("!news - sg_news - Opens the latest updates from the development team")
            print("!steam - sg_steamgroup - Opens the steam group site.")
            print("!servers - sg_servers - Shows current servers with their IP")
            print("sg_info - shows info about this addon")
        end
    end)

    --Shows info about the addon
    concommand.Add("sg_info", function( ply, cmd, args)
        if ply == LocalPlayer() then
            print("This chat addon was made by T-Man \nNotify him if anything is broken, if anything is out of date, or if you have any suggestions")
        end
    end)
end