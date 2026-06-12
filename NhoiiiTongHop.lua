local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/daucobonhi/UiRedzV5/refs/heads/main/DemoUi.lua"))()
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

-- 🌌 INTRO GUI
local gui = Instance.new("ScreenGui")
gui.Name = "NhoiiiCatIntro"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Nền tối nhẹ
local bg = Instance.new("Frame")
bg.Size = UDim2.new(1,0,1,0)
bg.BackgroundColor3 = Color3.fromRGB(0,0,0)
bg.BackgroundTransparency = 0.3
bg.Parent = gui

-- Logo Image
local logo = Instance.new("ImageLabel")
logo.Parent = gui
logo.AnchorPoint = Vector2.new(0.5,0.5)
logo.Position = UDim2.new(0.5,0,0.5,0)
logo.Size = UDim2.new(0,0,0,0)
logo.BackgroundTransparency = 1
logo.Image = "rbxassetid://128165022897683"
logo.ImageTransparency = 1

-- Zoom + fade in
TweenService:Create(logo, TweenInfo.new(1.5, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), { Size = UDim2.new(0,200,0,200), ImageTransparency = 0 }):Play()

-- Chữ bên dưới logo
local msg = Instance.new("TextLabel")
msg.Parent = gui
msg.AnchorPoint = Vector2.new(0.5,0)
msg.Position = UDim2.new(0.5,0,0.75,0)
msg.Size = UDim2.new(0,600,0,80)
msg.BackgroundTransparency = 1
msg.Text = "NhoiiiCatHub" -- original
msg.TextColor3 = Color3.fromRGB(0,255,255)
msg.Font = Enum.Font.GothamBlack
msg.TextScaled = true
msg.TextStrokeTransparency = 0
msg.TextStrokeColor3 = Color3.fromRGB(0,0,0)
msg.TextTransparency = 1

-- Intro thành NhoiiiCatHub
msg.Text = "NhoiiiCatHub"

-- Chữ fade in
TweenService:Create(msg, TweenInfo.new(1.2), {TextTransparency=0}):Play()

-- Giữ intro 4s
task.wait(4)

-- Fade out tất cả
TweenService:Create(logo, TweenInfo.new(1.2), {ImageTransparency=1}):Play()
TweenService:Create(msg, TweenInfo.new(1.2), {TextTransparency=1}):Play()
TweenService:Create(bg, TweenInfo.new(1.2), {BackgroundTransparency=1}):Play()
task.wait(1.5)
gui:Destroy()

local Windows = redzlib:MakeWindow({
    Title = "NhoiiiCatHub | [Release]",
    SubTitle = "By NhoiiiCat",
    SaveFolder = "Blox Fruits.lua"
})
Windows:AddMinimizeButton({
  Button = { Image = "rbxassetid://128165022897683", BackgroundTransparency = 0 },
  Corner = { CornerRadius = UDim.new(0, 6) }
})

local Info = Windows:MakeTab({"Tab Info","Info"})

Info:AddDiscordInvite({
    Name = "Nhoiii Community",
    Description = "Tham gia discord để nhận thông báo khi có script mới",
    Logo = "rbxassetid://118911948845852",
    Invite = "https://discord.gg/aXWW8hytgX",
})

local BloxFruit = Windows:MakeTab({"Blox Fruit","Home"})
BloxFruit:AddButton({
    Title = "AppleHub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexHerrySeek/AppleHub/refs/heads/main/loader/main.lua"))()
    end,
}) 

BloxFruit:AddButton ({
    Title = "W-Azure Premium",
    Callback = function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaAnarchist/YeuEmNhieuLam/refs/heads/main/w-azure.luau"))()
    end,
})

BloxFruit:AddButton ({
    Title = "Redz VN",
    Callback = function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/longhihilonghihi-hub/MainV1/refs/heads/main/RedVietNam.Lua"))()
    end,
})

BloxFruit:AddButton ({
    Title = "Redz Setting 2026",
    Callback = function ()
       loadstring(game:HttpGet("https://pastefy.app/AjS0TLCt/raw"))()
    end,
})

BloxFruit:AddButton ({
    Title = "Redz Bear 8/3",
    Callback = function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Huylovemy/Bearhudz/refs/heads/main/Bearhud.lua"))()
    end,
})

BloxFruit:AddButton ({
    Title = "Redz Dragon",
    Callback = function ()
       repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
       getgenv().team = "Pirates" -- Pirates hoặc Marines
       loadstring(game:HttpGet("https://raw.githubusercontent.com/dragonhubdev/dragonwitheveryone/refs/heads/main/Main-BF.lua"))()
    end,
})

BloxFruit:AddButton ({
    Title = "Redz Campuchia V5",
    Callback = function ()
       loadstring(game:HttpGet("https://luacrack.site/index.php/InfinityScript/raw/Redz999Fake/RedzHubFake.luau"))()
    end,
})

BloxFruit:AddButton ({
    Title = "Xeter V1",
    Callback = function ()
       getgenv().Version = "V1" 
       getgenv().Team = "Marines" 
       loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
    end,
})

BloxFruit:AddButton ({
    Title = "Xeter V2",
    Callback = function ()
       getgenv().Version = "V2"
       getgenv().Team = "Marines"
       loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
    end,
})

BloxFruit:AddButton ({
    Title = "Xeter v3",
    Callback = function ()
       getgenv().Version = "V3"
       getgenv().Team = "Marines"
       loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
    end,
})

BloxFruit:AddButton ({
    Title = "Xeter V4",
    Callback = function ()
       getgenv().Version = "V4"
       getgenv().Team = "Marines"
       loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
    end,
})

BloxFruit:AddButton ({
    Title = "King Rua Hub",
    Callback = function ()
       repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer
       loadstring(game:HttpGet("https://raw.githubusercontent.com/shinichi-dz/phucshinyeuem/refs/heads/main/KingRuaHub.lua"))()
    end,
})

BloxFruit:AddButton ({
    Title = "Ok Hub",
    Callback = function ()
       getgenv().team = "Pirates" -- Marines
       loadstring(game:HttpGet("https://raw.githubusercontent.com/fakekuri/Okhubhere/refs/heads/main/MainBloxFruit.lua"))()
    end,
})

BloxFruit:AddButton ({
    Title = "God Hub",
    Callback = function ()
       repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
       loadstring(game:HttpGet("https://raw.githubusercontent.com/shinichi-dz/phucshinsayhi/refs/heads/main/Loader.lua"))()
    end,
})

BloxFruit:AddButton ({
    Title = "3Toc Hub",
    Callback = function ()
       getgenv().Team = "Marines" --// Pirates 
       loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/245375592509cc0bcb3526982431ab18.lua"))()
    end,
})

BloxFruit:AddButton ({
    Title = "DarkSoul Hub V2",
    Callback = function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/tranduykhanh08428-web/V.V/refs/heads/main/VantablackHud.lua.txt"))()
    end,
})

BloxFruit:AddButton ({
    Title = "Teddy Hub",
    Callback = function ()
       repeat task.wait() until game:IsLoaded()
       and game:GetService("Players")
       and game.Players.LocalPlayer
       and game.Players.LocalPlayer:FindFirstChild("PlayerGui")

       loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TEDDYHUB-FREEMIUM"))()
    end,
})

BloxFruit:AddButton ({
    Title = "Tày Hub V2",
    Callback = function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/VTDROBLOX/Animehub/refs/heads/main/Tayhubbnana.lua"))()
    end,
})

BloxFruit:AddButton ({
    Title = "Tày Hub Premium",
    Callback = function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/VTDROBLOX/Animehub/refs/heads/main/Tayhub-PREMIUM.lua"))()
    end,
})

BloxFruit:AddButton ({
    Title = "Redz Hub V36",
    Callback = function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/fakekuri/idk-hub/refs/heads/main/RedzHub.luau"))()
    end,
})

BloxFruit:AddButton({
    Title = "Tron Void Hub",
     Callback = function()
        repeat task.wait() until game:IsLoaded()
        getgenv().Version = "R 6.2-1F"
        getgenv().Team = "Marines"
        getgenv().Save = false
        getgenv().Tradutor = "English"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TRon-VOid-Official/TRon-Void-Hub-VR6/refs/heads/main/TRon-Scripts/Main-Bf.lua"))()()
     end,
})

BloxFruit:AddButton({
    Title = "Meo X Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/VanHoangIOS/MeoXHub/refs/heads/main/Main.lua"))()
    end,
})

BloxFruit:AddButton({
    Title = "Quantumhub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()
    end,
})

BloxFruit:AddButton({
    Title = "HNTL Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/q8ta0e/source/main/HNTL_Hub_BF.lua"))()
    end,
})

BloxFruit:AddButton({
    Title = "Minhz Hub",
     Callback = function()
        loadstring(game:HttpGet("https://minhz-hub.vercel.app/main_ui"))()
    end,
})

BloxFruit:AddButton({
    Title = "Tung Nam Hub Redz",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/duongquangtungnam/Scripts/refs/heads/main/TungNamXRedz.lua"))()
    end,
})

BloxFruit:AddButton({
    Title = "Nana Hub Premium",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NaNaTV36/NaNaTVHubPremium/refs/heads/main/mainpremium.lua"))()
    end,
})

BloxFruit:AddButton({
    Title = "Vua Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hihiUGI/ubiquitous-octo-fortnight/refs/heads/main/vudatdz.txt"))()
    end,
})

BloxFruit:AddButton({
    Title = "Banana Purple",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ngvanduy11/Xenon-Hub/refs/heads/main/XenonHub.lua"))()
    end,
})

BloxFruit:AddButton({
    Title = "Fast Attack",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhDangNhoEm/TuanAnhIOS/refs/heads/main/koby"))()
    end,
})

BloxFruit:AddButton({
    Title =  "Orbit.cc Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Abyssal-lol/Orbit.cc/refs/heads/main/Loader.lua"))()
    end,
})

BloxFruit:AddButton({
    Title =  "Darksoul Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gamer8410/dont-see-/refs/heads/main/loader.lua"))()
    end,
})

BloxFruit:AddButton({
    Title =  "Wono Hub",
     Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Jadelly261/FruitBlox/refs/heads/main/Wano"))()
    end,
})

BloxFruit:AddButton({
    Title =  "Banana X Maru",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hdanhvip/hdanhhub/refs/heads/main/BananaHub.lua.txt"))()
    end,
})

BloxFruit:AddButton({
    Title =  "Draco Hub v2",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRyx/MainDraco/refs/heads/main/DracoMain.lua"))()
    end,
})

BloxFruit:AddButton({
    Title =  "RealKid Hub", 
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realkidhub/realkid/refs/heads/main/main.lua"))()
    end,
})

BloxFruit:AddButton({
    Title = "Banana Redz",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ngvanduy11/Xenon-Hub/refs/heads/main/XenonNew.lua.txt"))()
     end,
})

BloxFruit:AddButton({
    Title = "Gravity Premium",
     Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/MainPremium.lua"))()
     end,
})

BloxFruit:AddButton({
    Title = "Abacaxi Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/real33ms/BloxFruits/refs/heads/main/AbacaxiHubOfc.lua"))()
     end,
})

BloxFruit:AddButton({
    Title = "Tron Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TRon-Void-Devs/TRon-Void-Hub-R6.1/refs/heads/main/script.lua"))()
     end,
})

BloxFruit:AddButton({
    Title = "Sigma Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SigmaHubDangCap/BloxFruit/refs/heads/main/MainBloxFruit.lua"))()
     end,
})

BloxFruit:AddButton({
    Title = "Hdanh Hub v2",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hdanhvip/hdanhhub/refs/heads/main/BananaHub.lua.txt"))()
     end,
})

BloxFruit:AddButton({
    Title = "Redz Moon Light",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-Moonlight/Moonlight/refs/heads/main/Main"))()
     end,
})

BloxFruit:AddButton({
    Title = "Neverdying Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GoblinKun009/Script/refs/heads/main/Neverdying", true))()
     end,
})

BloxFruit:AddButton({
    Title = "Panda Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/nvb201112/the_real_Panda-Hub/refs/heads/main/BloxFruits.luau"))()
     end,
})

BloxFruit:AddButton({
    Title = "Nak Hub V4",
     Callback = function()
        getgenv().Team = "Marines"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Naknohack/NakHubBF/refs/heads/main/NakHubV4.lua"))()
     end,
})

BloxFruit:AddButton({
    Title = "Night Mystic Hub",
     Callback = function()
        repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
        getgenv().team = "Marines" --  Marines or Pirates 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-NightMystic/Bloxfruits/refs/heads/main/Script.lua"))()
     end,
})

BloxFruit:AddButton({
    Title = "Mixi Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/mixihubvip/mixihubvip/refs/heads/main/MixiHub"))()
     end,
})

BloxFruit:AddButton({
    Title = "Eclipse Hub",
     Callback = function()
        getgenv().ECp4 = {
    ["Team"] = "Pirates", -- Marines/Pirates
    ["Fix Lag"] = false   -- true/false
}
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Eclipse2408/Scripts/refs/heads/main/PhahattiScripts.lua"))()
     end,
})

BloxFruit:AddButton({
    Title = "Neji Hub",
     Callback = function()
        repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-NejiDepzai/Bloxfruits/refs/heads/main/Main.lua"))()
     end,
})

BloxFruit:AddButton({
    Title = "Gravity Hub V1",
     Callback = function()
        repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer 
        getgenv().Version = "V1" --V1 or V2 
        getgenv().Team = "Pirates"--Pirates or Marines 
        getgenv().AutoExecutor = false -- false or true 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
     end,
})

BloxFruit:AddButton({
    Title = "Gravity Hub V2",
     Callback = function()
        repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer 
        getgenv().Version = "V2" --V1 or V2 
        getgenv().Team = "Pirates"--Pirates or Marines 
        getgenv().AutoExecutor = false -- false or true 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
     end,
})

BloxFruit:AddButton({
    Title = "Nana Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tamdznanatv/hubpremumcomback/refs/heads/main/NaNaTVHubcomback.luau"))()
     end,
})

BloxFruit:AddButton({
    Title = "Banana Hub Fake 1",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/aloaloalo322/sssdas/refs/heads/main/cc"))()
     end,
})

BloxFruit:AddButton({
    Title = "Leo Mobile Hub",
     Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/khanghoang95130byte/LeoMobile/refs/heads/main/LeoMobilebanana.txt'))()
     end,
})

BloxFruit:AddButton({
    Title = "Tumadam Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TumadamMod/cwertyur/refs/heads/main/TumadamEng.lua"))()
     end,
})

BloxFruit:AddButton({
    Title = "Bacon Banana",
     Callback = function()
        repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
        getgenv().team = "Marines" -- Pirates or Marines 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vinh129150/hack/refs/heads/main/Bloxfruits.lua"))()
     end,
})

BloxFruit:AddButton({
    Title = "Hoho Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
     end,
})


local Pvp = Windows:MakeTab({"Pvp Blox Fruit","Swords"}) 

Pvp:AddButton({
    Title = "Hermanos'Dev|PVP",
     Callback = function()
       --[[     Credit: Hermanos-Dev, Dont Delete This. ]]--  
        getgenv().script_mode = "PVP" -- PVP, FARM 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hermanos-dev/hermanos-hub/refs/heads/main/Loader.lua"))()    
    end,
})

Pvp:AddButton({
    Title = "Onion Hub|PVP",
     Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/cc815ef92aaf3ed41a37aa4d87cd93ff.lua"))()  
    end,
})

Pvp:AddButton({
    Title = "Lonely Hub|PVP",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LongHip12/LonelyHub/refs/heads/main/LonelyHub-PVP.lua"))()
    end,
})

local FixLag = Windows:MakeTab({"Fix Lag","gem"})
FixLag:AddButton({
    Title = "TurboLite",
     Callback =function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
     end,
})

local HopServer = Windows:MakeTab({"Hop Server Blox Fruit","server"})
HopServer:AddButton({
    Title = "Hop Server Vip 1",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/anuragaming1/Meow_gaming/refs/heads/main/Servervip.lua.txt"))()
     end,
})

HopServer:AddButton({
    Title = "Hop Server Vip 2",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/traurobloxdeptrai/traukhoaito/refs/heads/main/hoplow.lua"))()
     end,
})

HopServer:AddButton({
    Title = "Hop Boss",
     Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/01f0b1186a4c799992e4fa2a74a5f3d0.lua"))()
     end,
})

HopServer:AddButton({
    Title = "Gravity Hub Find Fruit",
     Callback = function()
        getgenv().Team = "Marines" 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/FindFruit.lua"))()
     end,
})

HopServer:AddButton({
    Title = "BlueX Find Fruit",
    Callback = function()
        getgenv().Config = {
            ["Setting"] = {
                ["Team"] = "Pirates",
                ["Black Screen"] = false,
                ["Remove Notification"] = false,
                ["Random Fruits"] = false,
                ["Delay Hop"] = 4,
                ["Method Collect Fruits"] = "Teleport"
            },

            ["Webhook"] = {
                ["Url Webhook"] = "",
                ["Enable"] = false
            }
        }

        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/FindFruits.lua"))()
    end,
})

HopServer:AddButton({
    Title = "Hnc Find Fruit",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hnc-roblox/HNC_Roblox/refs/heads/main/AutoCollectFruit.lua"))()
     end,
})

HopServer:AddButton({
    Title = "Night Hop Boss",
     Callback = function()
        getgenv().Team = "Pirates" -- Marnies 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/HopScript.luau"))()
     end,
})

HopServer:AddButton({
    Title = "Night Find Fruit",
     Callback = function()
                getgenv().Config = {
            Team = "Pirates",
            Settings = {
                BlacklistFruits = {
                    "Rocket Fruit",
                    "Blade Fruit",
                    "Smoke Fruit"
                },

                WebhookStoreFruit = {
                    Enabled = true,
                    Url = "" -- Webhook URL
                }
            }
        }

        loadstring(game:HttpGet(
            "https://api.luarmor.net/files/v4/loaders/290b11f6d622446241703db34703dea3.lua"
        ))()
    end,
})
    
local AutoBounty = Windows:MakeTab({"Auto Bounty Blox Fruit","Rocket"})

AutoBounty:AddButton({
    Title = "PhantomAutobounty",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Phantom12131/PhantomHub/refs/heads/main/PhantomAutobounty.lua"))()
     end,
})

AutoBounty:AddButton({
    Title = "Tzuan Autobounty",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tzuanyeuban/TzuanHub/refs/heads/main/Autobountynew.lua"))()
     end,
})

AutoBounty:AddButton({
    Title = "Night Auto Bounty M1 Fruit",
    Callback = function()
        getgenv().Config = {
            Team = "Pirates",
            HideUI = true,

            HuntConfig = {
                ["Earned Notification Enabled"] = true,
                ["Reset Farm (New)"] = false,
                ["Chat"] = false,
                ["Farm Delay"] = 0.22,

                ["Webhook"] = {
                    Enabled = false,
                    Url = ""
                }
            }
        }

        loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/2ffcdb62773f587bfb9eb0d52bb35b0c.lua"))()
    end,
})

AutoBounty:AddButton({
    Title = "Selene Auto Bounty",
     Callback = function()
        repeat task.wait() until
        game:IsLoaded() and
        game:GetService("Players") and
        game.Players.LocalPlayer and
        game.Players.LocalPlayer:FindFirstChild("PlayerGui")

       _G.SeleneCFG = {
        Team = "Pirates", -- "Pirates" hoặc "Marines"
        Region = "oregon",
        WebhookURL = "",
        DiscordID = "",
        SuperBoostFps = false,
    }

        loadstring(game:HttpGet("https://raw.githubusercontent.com/Idontknowbrodontstalk/selene/refs/heads/main/S%20ELENE-obfuscated.lua"))()
    end,
})

local Kaitun = Windows:MakeTab({"Kaitun Blox Fruit","Target"})
Kaitun:AddButton({
    Title = "tày Kaitun",
    Callback = function()
        getgenv().Config = {
            Team = "Pirates",

            FarmConfig = {
                ["Out game when done all"] = true,
                ["Bypass Teleport"] = true,
                ["Double Quest(RISK)"] = true
            },

            Items = {
                ["Saber"] = true,
                ["Pole (1st form)"] = true,
                ["Skull Guitar"] = true,
                ["Cursed Dual Katana"] = true,
                ["Godhuman"] = true
            },

            Webhook = {
                Enabled = false,
                Url = ""
            }
        }

        loadstring(game:HttpGet(
            "https://raw.githubusercontent.com/VTDROBLOX/Animehub/refs/heads/main/tayhubkaitun.lua"
        ))()
    end,
})
 
Kaitun:AddButton({
    Title = "Night Hub Kaitun",
    Callback = function()
        getgenv().Config = {
    Team = "Pirates",
    FarmConfig = {
        ["Out game when done all"] = true,
        ["Bypass Teleport"] = true,
        ["Double Quest(RISK)"] = true
    },
    Items = {
        ["Saber"] = true,
        ["Pole (1st form)"] = true,
        ["Skull Guitar"] = true,
        ["Cursed Dual Katana"] = true,
        ["Godhuman"] = true
    },
    Webhook = {
        Enabled = false,
        Url = ""
    }
}

     loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/d6c7959dcc94cd24467080d82a56dcf9.lua"))()
     end,  
})  

Kaitun:AddButton({
    Title = "Hinishi Hub kaitun",
     Callback = function()
       _G.Hinishi_Hub_Kaitun_Blox_Fruits = {
    ["Misc"] = {
        ["Hop If Admin Join"] = true,
        ["Unlock Dough Chip"] = true,
        ["Auto Aura RGB"] = true,
        ["Auto Pull Lever"] = true,
        ["Big Hitbox"] = true
    },
    ["Upgrade Race"] = {
        ["Race"] = {"Human","Fishman","Skypiea","Mink"},
        ["Upgrade Race V3"] = true,
        ["Lock Race Select"] = true
    },
    ["Fighting Styles"] = {
        ["Melee V2"] = true,
        ["Godhuman"] = true
    },
    ["Swords"] = {
        ["True Triple Katana"] = true,
        ["Cursed Dual Katana"] = true,
        ["Shark Anchor"] = true,
        ["Saber"] = true,
        ["Midnight Blade"] = true,
        ["Shisui"] = true,
        ["Saddi"] = true,
        ["Wando"] = true,
        ["Yama"] = true,
        ["Koko"] = false,
        ["Rengoku"] = true,
        ["Canvander"] = true,
        ["Buddy Sword"] = true,
        ["Twin Hooks"] = true,
        ["Spikey Trident"] = true,
        ["Hallow Scryte"] = true,
        ["Dark Dagger"] = true,
        ["Tushita"] = true
    },
    ["Guns"] = {
        ["Soul Guitar"] = true,
        ["Kabucha"] = true,
        ["Acidum Rifle"] = true,
        ["Serpent Bow"] = true
    },
    ["BloxFruits"] = {
        ["Sub Fruits"] = {"Rocket-Rocket","Spin-Spin"},
        ["Safe Fruits"] = {"Dragon-Dragon","T-Rex-T-Rex","Kitsune-Kitsune"}
    },
    ["Mastery"] = {
        ["Blox Fruit"] = true,
        ["Fighting Styles"] = true,
        ["Swords"] = true
    },
    ["Settings"] = {
        ["Tween Speed"] = 300,
        ["Fix Lag"] = true,
        ["Safe Mode"] = false
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-Hinishi/Hinishi-Hub/refs/heads/main/Kaitun"))()
end, 
})

Kaitun:AddButton({
    Title = "Orange KaiTun",
     Callback = function()
        repeat task.wait()
until game:IsLoaded() and game.Players.LocalPlayer

getgenv().Config = {
    ["Auto Farm"] = true,

    ["Settings"] = {
        ["FPS Boost"] = true,
    },

    ["Melee"] = {
        ["All Melee V1"] = true,
        ["Super Human"] = true,
        ["Dragon Talon"] = true,
        ["Sharkman Karate"] = true,
        ["Electric Claw"] = true,
        ["GodHuman"] = true,
    },

    ["Sword"] = {
        ["All Sword"] = true,
        ["Saber"] = true,
        ["Pole"] = true,
        ["Rengoku"] = true,
        ["Midnight Blade"] = true,
        ["Soul Cane"] = true,
        ["Gravity Cane"] = true,
        ["Dragon Trident"] = true,
        ["Legendary Sword"] = true,
        ["True Triple Katana"] = true,
        ["Twin Hooks"] = true,
        ["Canvander"] = true,
        ["Buddy Sword"] = true,
        ["Hallow Scythe"] = true,
        ["Yama"] = true,
        ["Tushita"] = true,
        ["Cursed Dual Katana"] = true,
    },

    ["Gun"] = {
        ["All Gun"] = true,
        ["Acidum Rifle"] = true,
        ["Kabucha"] = true,
        ["Serpent Bow"] = true,
        ["Soul Guitar"] = true,
    },

    ["Race"] = {
        ["Auto V2"] = true,
        ["Auto V3"] = true,
    },
}

loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/HieuDepTrai-Z/Dev_OrangeVip/refs/heads/main/OrangeKaitun.lua"
))()
     end,
})

local TSB = Windows:MakeTab({"TSB","user"})
TSB:AddButton({
    Title = "Senpai Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Senpai1997/Scripts/refs/heads/main/SenpaihubTheStrongestBattlegroundsAimlockAutoblock.lua"))()
     end,
})

TSB:AddButton({
    Title = "Ns Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/TSBG/main/Solara"))()
     end,
})

TSB:AddButton({
    Title = "Star hub",
     Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/bc25e1f8ef8aa59092de8f8f4c4fb95c.lua"))()
     end,
})

TSB:AddButton({
    Title = "Tam Hub",
     Callback = function()
       loadstring(game:HttpGet"https://raw.githubusercontent.com/tamarixr/tamhub/main/bettertamhub.lua")() 
     end,
})

TSB:AddButton({
    Title = "Forge hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
     end,
})

TSB:AddButton({
    Title = "Cheate hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/sandwichk/RobloxScripts/main/Scripts/BadWare/Hub/Load.lua",true))()
     end,
})

TSB:AddButton({
    Title = "Terminator1 Hub",
     Callback = function()
       loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/52276846a0d8e73f3208d9206b7be7c8ea031f62e5707d45d0ec9abfdca35467/download"))()
     end,
})

TSB:AddButton({
    Title = "Moondiety Hub",
     Callback = function()
        loadstring(game:HttpGet("https://moondiety.com/loader"))()
     end,
})

TSB:AddButton({
    Title = "Nicuse Hub",
     Callback = function()
        loadstring(game:HttpGet("https://loader.nicuse.xyz"))()
     end,
})

local Evade = Windows:MakeTab({"Evade","star"})
Evade:AddButton({
    Title = "Elderwyrm Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Vraigos/Elderwyrm-Hub-X/refs/heads/main/Scripts/Evade/Overhaul.lua"))()
     end,
})

Evade:AddButton({
    Title = "ModMap",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Catwljzdyh/Scripts/refs/heads/main/loadmap.wljz"))()
     end,
})

Evade:AddButton({
    Title = "Draconic Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Unknownproooolucky/Draconic-Hub-X/refs/heads/main/files/Evade/Overhaul.lua"))()
     end,
})
local King = Windows:MakeTab({"King Legacy","crown"})
King:AddButton({
    Title = "Vector Hub",
     Callback = function()
        loadstring(game:HttpGet("https://vectorhub.space"))()
     end,
})

King:AddButton({
    Title = "Omg Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
     end,
})

King:AddButton({
    Title = "Wukong Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/duymanhm6-cyber/wukonghud/refs/heads/main/wukonghud"))()
     end,
})

King:AddButton({
    Title = "Zee Hub",
     Callback = function()
        loadstring(game:HttpGet('https://zuwz.me/Ls-Zee-Hub-KL'))()
     end,
})

King:AddButton({
    Title = "Spectrum X Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/spectrumxx/mainfarm/refs/heads/main/loader.lua"))()
     end,
})

King:AddButton({
    Title = "NTT Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NTT-HUB/Script/refs/heads/main/main"))()
     end,
})

King:AddButton({
    Title = "Axel Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lostinnowheres/Loader/refs/heads/main/Loader.Lua"))()
     end,
})

local SailorPiece = Windows:MakeTab({"Sailor Piece","anchor"})
SailorPiece:AddButton({
    Title = "Imp Hub x",
     Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/34824c86db1eba5e5e39c7c2d6d7fdfe.lua"))()
     end,
})

SailorPiece:AddButton({
    Title = "Aoenic hub",
     Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/cc4273e26a8c95d581c0632de0ac3ba9.lua"))()
     end,
})

SailorPiece:AddButton({
    Title = "Trigon Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Sindex-Saliii/TrigonEvoHub/refs/heads/main/Main.luau"))()
     end,
})

SailorPiece:AddButton({
    Title = "CanHongSon Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/canhongson/CanHongSon/refs/heads/main/loader.lua"))()
     end,
})

SailorPiece:AddButton({
    Title = "RC Hub",
     Callback = function()
        loadstring(game:HttpGet("https://vss.pandadevelopment.net/virtual/file/2768ea6419cb4d73"))()
     end,
})

SailorPiece:AddButton({
    Title = "Lume Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dusadeephenginx-sudo/roblox/main/uploads/sailor.lua"))()
     end,
})

SailorPiece:AddButton({
    Title = "Solix Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/meobeo8/a/a/a"))()
     end,
})

SailorPiece:AddButton({
    Title = "Axel Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lostinnowheres/Loader/refs/heads/main/Loader.Lua"))()
     end,
})

SailorPiece:AddButton({
    Title = "Nemesis Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/x2zu/loader/main/freeloader.lua",true))()
     end,
})

SailorPiece:AddButton({
    Title = "Express Hub",
     Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d8824b23a4d9f2e0d62b4e69397d206b.lua"))()
     end,
})
 
SailorPiece:AddButton({
    Title = "Lucid Hub",
     Callback = function()
        loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/b7fcc785d0e8ed057192db5f7827f773dac5022059958fe6c503bf95cc8e76ff/download"))()
     end,
})

SailorPiece:AddButton({
    Title = "Dead Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DeadScripter/Deadhub/refs/heads/main/DeadLoader.lua"))()
     end,
})

SailorPiece:AddButton({
    Title = "Blue X Hub",
     Callback = function()
        _G.AutoTranslate = true 
        _G.SaveConfig = true 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
     end,
})

SailorPiece:AddButton({
    Title = "Speed Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua",true))()
     end,
})

SailorPiece:AddButton({
    Title = "Copernix Hub",
     Callback = function()
        loadstring(game:HttpGet("https://gitlab.com/phantomreal1/CopernixHub/-/raw/main/api.lua?ref_type=heads"))()
     end,
})

SailorPiece:AddButton({
    Title = "NS Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/TSBG/main/Solara"))()
     end,
})

SailorPiece:AddButton({
    Title = "OMG Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
     end,
})

SailorPiece:AddButton({
    Title = "Chiyo Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"))()
     end,
})

SailorPiece:AddButton({
    Title = "Wis Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dy1zn4t/WisHubX/refs/heads/main/loader"))()
     end,
})

SailorPiece:AddButton({
    Title = "Airflow Hub",
     Callback = function()
        loadstring(game:HttpGet("https://airflowscript.com/loader"))()
     end,
})

SailorPiece:AddButton({
    Title = "Aichemy Hub",
     Callback = function()
        loadstring(game:HttpGet("https://getalchemy.net/r"))()
     end,
})

SailorPiece:AddButton({
    Title = "Twvz Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ZhangJunZ84/twvzyyds/refs/heads/main/sailorpiece.lua"))()
     end,
})

SailorPiece:AddButton({
    Title = "CatHub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realcath/lab/refs/heads/main/src/main/loader.lua"))()
     end,
})

SailorPiece:AddButton({
    Title = "Lumin Hub",
     Callback = function()
        loadstring(game:HttpGet("http://luminon.top/loader.lua"))()
     end,
})

SailorPiece:AddButton({
    Title = "Spectrum Hub",
     Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/xZPUHigh/Spectrum-Cloud/main/Loader.lua'))()
     end,
})

SailorPiece:AddButton({
    Title = "Black Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Skibidiking123/Fisch1/refs/heads/main/FischMain"))()
     end,
})

SailorPiece:AddButton({
    Title = "Nicuse Hub",
     Callback = function()
        loadstring(game:HttpGet("https://loader.nicuse.xyz"))()
     end,
})

SailorPiece:AddButton({
    Title = "Rift Hub",
     Callback = function()
        loadstring(game:HttpGet("https://rifton.top/loader.lua"))()
     end,
})

SailorPiece:AddButton({
    Title = "Zen Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Itz-Npg/Roblox-Script/main/mainloader.lua",true))()
     end,
})

SailorPiece:AddButton({
    Title = "Vora Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Andrazx23/vorahub/refs/heads/main/SailorPiece.lua"))()
     end,
})

SailorPiece:AddButton({
    Title = "Glua Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gevriel66/Gev/refs/heads/main/GTrial.lua"))()
     end,
})

SailorPiece:AddButton({
    Title = "Arvyn Hub",
     Callback = function()
        loadstring(game:HttpGet("https://api.arvynscripts.cloud/api/files/loader.lua"))()
     end,
})

SailorPiece:AddButton({
    Title = "Void X Hub",
     Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/VoidDeveloper67/Void-Hub/refs/heads/main/VoidHub.lua",true))()
     end,
})

SailorPiece:AddButton({
    Title = "Vector Hub",
     Callback = function()
        loadstring(game:HttpGet("https://vectorhub.space"))()
     end,
})

local Gagv1 = Windows:MakeTab({"Grow a Garden 1","cherry"})
Gagv1:AddButton({
    Title ="Speed Hub",
     Callback = function ()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua",true))()
     end,
})

Gagv1:AddButton({
    Title = "OMG Hub",
     Callback = function ()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
     end,
})

Gagv1:AddButton({
    Title = "Wis Hub",
     Callback = function ()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dy1zn4t/WisHubX/refs/heads/main/loader"))()
     end,
})

Gagv1:AddButton({
    Title = "Lumin Hub",
     Callback = function ()
        loadstring(game:HttpGet("http://luminon.top/loader.lua"))()
     end,
})

Gagv1:AddButton({
    Title = "Thunderz Hub",
     Callback = function ()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/GaG/Main.lua'))()
     end,
})

local Sza = Windows:MakeTab({"Survive Zombie Arena","Shield"})
Sza:AddButton ({
    Title = "Aoenic Hub",
     Callback = function ()
       loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/cc4273e26a8c95d581c0632de0ac3ba9.lua"))()
     end,
})

Sza:AddButton ({
    Title = "Chiyo Hub",
    Callback = function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"))()
    end,
})

Sza:AddButton ({
    Title = "Miyu Hub",
    Callback = function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/KAISER2M/Survive-Zombie-Arena/refs/heads/main/MIYU_HUBZTA.lua"))()
    end,
})

Sza:AddButton ({
    Title = "Gumanba Hub",
    Callback = function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/SurviveZombieArena"))()
    end,
})

Sza:AddButton ({
    Title = "Script No Key",
    Callback = function ()
       loadstring(game:HttpGet("https://rawscripts.net/raw/Survive-Zombie-Arena-No-Key-Free-212308"))()
    end,
})

Sza:AddButton ({
    Title = "FoxName Hub",
    Callback = function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Foxname_SZA.lua"))()
    end,
})

Sza:AddButton ({
    Title = "No Key 1",
    Callback = function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/raphaelmaboi/wayout/refs/heads/main/loader.lua"))()
    end,
})

Sza:AddButton ({
    Title = "Wellwex HUB",
    Callback = function ()
       loadstring(game:HttpGet("https://pastefy.app/w8IENhHI/raw"))()
    end,
})

local Aotr = Windows:MakeTab({"Attack On Titan Revolution","swords"})
Aotr:AddButton ({
    Title = "Eclipse Hub",
    Callback = function ()
       loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/1f179b0ee06c80b8ce8fdc93ccc55d16.lua"))()
    end,
})

Aotr:AddButton ({
    Title = "Kaitun AOTR",
    Callback = function ()
    repeat wait() until game:IsLoaded()

getgenv().Hide_UI = false -- true = ẩn GUI
getgenv().LowCPU = true -- Xóa map để tăng FPS

getgenv().Studio = {
    ["Aotr"] = {
        ["One Click"] = {
            ["Map"] = {
                ["Mode"] = "Missions", -- Missions / Raids

                ["Missions"] = "Shiganshina",
                -- Shiganshina, Trost, Outskirts, Giant Forest,
                -- Utgard, Loading Docks, Stohess

                ["Raids"] = "Attack Titan",
                -- Attack Titan, Armored Titan,
                -- Female Titan, Colossus Titan

                ["Settings"] = {
                    ["Difficulty"] = "Easy",
                    -- Easy, Normal, Hard, Severe, Aberrant

                    ["Objective"] = "Skirmish"
                    -- Skirmish, Breach, Protect,
                    -- Escort, Defend, Stall,
                    -- Guard, Random, Chapel
                }
            }
        },

        ["Misc"] = {
            ["Refresh"] = 10,
            ["Retry"] = true,
            ["Lock Fps"] = 60
        }
    }
}

 loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/Dex-Bear/VxezeHubLoader/refs/heads/main/AotrFree.lua"
))()
    end,
})

Aotr:AddButton ({
    Title = "Airflowscript",
    Callback = function ()
       loadstring(game:HttpGet("https://airflowscript.com/loader"))()
    end,
})

Aotr:AddButton ({
    Title = "Kira Hub",
    Callback = function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Bubu2k/script/refs/heads/main/kira"))()
    end,
})

Aotr:AddButton ({
    Title = "Long AOTR Hub",
    Callback = function ()
       loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/4d931547b21c9b02dbd0a03bd066f4b8.lua"))()
    end,
})

Aotr:AddButton ({
    Title = "Lix Hub",
    Callback = function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Lixtron/Hub/refs/heads/main/loader"))()
    end,
})

Aotr:AddButton ({
    Title = "Vector Hub",
    Callback = function ()
       loadstring(game:HttpGet("https://vectorhub.space"))() 
    end,
})

Aotr:AddButton ({
    Title = "Xyphor Hub",
    Callback = function ()
       loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/d61868e4b6f1b26e1e5904c7a2768e8c.lua"))()
    end,
})

Aotr:AddButton ({
    Title = "H4xscripts",
    Callback = function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Bubu2k/script/refs/heads/main/h4xaot.lua",true))()
    end,
})

local slime = Windows:MakeTab({"Slime RNG","cloud"})  
slime:AddButton({
    Title = "QuantumHub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()
    end,
})

slime:AddButton ({
    Title = "Chiyo Hub",
    Callback = function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"))()
    end,
})

slime:AddButton ({
    Title = "Speed Hub",
    Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua",true))()
    end,
})

slime:AddButton ({
    Title = "Multi Hub",
    Callback = function ()
       loadstring(game:HttpGet("https://pastefy.app/3bX8mKqE/raw"))()
    end,
})

slime:AddButton ({
    Title = "Vaen Hub",
    Callback = function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/vaenzz/Loader/refs/heads/main/Games"))()
    end,
})

local Broken = Windows:MakeTab({"Broken Blade","sword"}) 
Broken:AddButton ({
    Title = "Axel Hub",
    Callback = function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/lostinnowheres/Loader/refs/heads/main/Loader.Lua"))()
    end,
})

Broken:AddButton ({
    Title = "ApelHub",
    Callback = function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/ApelsinkaFr/ApelHub/refs/heads/main/ApelHub"))()
    end,
})

Broken:AddButton ({
    Title = "Free Cript",
    Callback = function ()
       loadstring(game:HttpGet("https://lololopink.me/free_script"))()
    end,
})

Broken:AddButton ({
    Title = "Contirblx",
    Callback = function ()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/contirblx/probability/refs/heads/main/acbcxc"))()
    end,
})

