

local gui = Instance.new("ScreenGui")
gui.Name = "RoundedGUI"
gui.Parent = game.CoreGui

local changeframename = Instance.new("Frame")
changeframename.Size = UDim2.new(0, 500, 0, 200)
changeframename.Position = UDim2.new(0.5, -250, 0.8, -100) 
changeframename.BackgroundColor3 = Color3.new(0, 0, 0)
changeframename.BorderColor3 = Color3.fromRGB(0, 0, 0) 
changeframename.BorderSizePixel = 3
changeframename.Active = true
changeframename.Draggable = true
changeframename.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = changeframename

local corner2 = Instance.new("UICorner")
corner2.CornerRadius = UDim.new(0, 10)
corner2.Parent = changeframename

local changeframename1 = Instance.new("ImageButton")
changeframename1.Size = UDim2.new(0, 80, 0, 80)
changeframename1.Position = UDim2.new(0, 0, 0, 0) 
changeframename1.BorderSizePixel = 0
changeframename1.Image = "rbxassetid://16253406239"
changeframename1.ScaleType = Enum.ScaleType.Stretch
changeframename1.Parent = changeframename
changeframename1.MouseButton1Click:Connect(function()
    print("Button clicked!")
end)

local corner3 = Instance.new("UICorner") 
corner3.CornerRadius = UDim.new(0, 10) 
corner3.Parent = changeframename1

local textLabel = Instance.new("TextLabel")
textLabel.Parent = changeframename
textLabel.BackgroundTransparency = 1
textLabel.Position = UDim2.new(0, 8, 0, 10)
textLabel.Size = UDim2.new(0, 480, 0, 160)
textLabel.Font = Enum.Font.SourceSans
textLabel.TextSize = 23
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.TextWrapped = true

local text = "made by TX hub I've forgot how do I do this. this script is 4 months old when I was younger and I just adjust some and change name but not the logo of something "

local speed = 0.06
local soundId = "rbxassetid://827313405"

local sound = Instance.new("Sound")
sound.Parent = textLabel
sound.SoundId = soundId
sound.Volume = 1
sound.Name = "keyboard"
sound.Looped = true

for i = 1, #text, 1 do
    textLabel.Text = string.sub(text, 1, i)
    if i == 1 then
        sound:Play()
    end
    wait(speed)
end

sound:Stop()
wait(1)
gui:Destroy()

wait(2)
game.StarterGui:SetCore("SendNotification", {
    
    Title = "preparing script";

    Text = "";

})

Wait (3)
game.StarterGui:SetCore("SendNotification", {

    Title = "script loding";

    Text = "";

})

Wait (1)
game.StarterGui:SetCore("SendNotification", {

    Title = "script loaded can be movable";

    Text = "";


  })


local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TX Hub"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local guiFrame = Instance.new("Frame")
guiFrame.Name = "TX Hub"
guiFrame.Size = UDim2.new(0.2, 0, 0.5, 0)
guiFrame.Position = UDim2.new(0.7, 0, 0.0, -guiFrame.Size.Y.Offset/2)
guiFrame.BackgroundTransparency = 1
guiFrame.BackgroundColor3 = Color3.new(1, 0, 0)
guiFrame.BorderSizePixel = 0
guiFrame.Parent = screenGui

-- i add a close button
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0, 20, 0, 20)
closeButton.Position = UDim2.new(1, -20, 0, 0)
closeButton.Text = "X"
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextColor3 = Color3.new(1, 0, 0)
closeButton.TextScaled = true
closeButton.Parent = guiFrame

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- and add a minimize button
local minimizeButton = Instance.new("TextButton")
minimizeButton.Name = "MinimizeButton"
minimizeButton.Size = UDim2.new(0, 20, 0, 20)
minimizeButton.Position = UDim2.new(0, 0, 0, 0)
minimizeButton.Text = "-"
minimizeButton.Font = Enum.Font.SourceSansBold
minimizeButton.TextColor3 = Color3.new(1, 1, 1)
minimizeButton.TextScaled = true
minimizeButton.Parent = guiFrame

local miniGuiFrame = Instance.new("Frame")
miniGuiFrame.Name = "MiniGuiFrame"
miniGuiFrame.Size = UDim2.new(0.3, 0, 0.3, 0)
miniGuiFrame.Position = UDim2.new(0, 0, 0, 20)
miniGuiFrame.BackgroundTransparency = 1
miniGuiFrame.BackgroundColor3 = Color3.new(0, 0, 0)
miniGuiFrame.BorderSizePixel = 0
miniGuiFrame.Active = true
miniGuiFrame.Draggable =true
miniGuiFrame.Parent = screenGui

local plusButton = Instance.new("TextButton")
plusButton.Name = "PlusButton"
plusButton.Size = UDim2.new(0, 20, 0, 20)
plusButton.Position = UDim2.new(1, -20, 0, 0)
plusButton.Text = "+"
plusButton.Font = Enum.Font.SourceSansBold
plusButton.TextColor3 = Color3.new(1, 1, 1)
plusButton.TextScaled = true
miniGuiFrame.Visible = false
plusButton.Parent = miniGuiFrame

plusButton.MouseButton1Click:Connect(function()
    if not guiFrame.Visible then
        miniGuiFrame.Visible = false
        guiFrame.Visible = true
    end
end)

minimizeButton.MouseButton1Click:Connect(function()
    miniGuiFrame.Visible = true
    guiFrame.Visible = false
end)

local mainSection = Instance.new("Frame")
mainSection.Name = "MainSection"
mainSection.Size = UDim2.new(1, 0, 1, -50)
mainSection.BackgroundTransparency = 0.4
mainSection.Parent = guiFrame
mainSection.BackgroundColor3 = Color3.new (0, 0, 0)


local avatarLabel = Instance.new("ImageLabel")
avatarLabel.Name = "Avatar"
avatarLabel.Size = UDim2.new(0.5, 0, 0.7, 0)
avatarLabel.Position = UDim2.new(0.25, 0, 0, 0)
avatarLabel.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?userId=" .. tostring(game.Players.LocalPlayer.UserId) .. "&x=150&y=150" -- dont change 
avatarLabel.Parent = mainSection

local nameLabel = Instance.new("TextLabel")
nameLabel.Name = "Name"
nameLabel.Size = UDim2.new(1, 0, 0.1, 0)
nameLabel.Position = UDim2.new(0, 0, 0.5, 0)
nameLabel.BackgroundTransparency = 1
nameLabel.Font = Enum.Font.SourceSansBold
nameLabel.Text = "Name: " .. game.Players.LocalPlayer.Name
nameLabel.TextColor3 = Color3.new(1, 1, 1)
nameLabel.TextScaled = true
nameLabel.Parent = mainSection

local displayNameLabel = Instance.new("TextLabel")
displayNameLabel.Name = "DisplayName"
displayNameLabel.Size = UDim2.new(1, 0, 0.1, 0)
displayNameLabel.Position = UDim2.new(0, 0, 0.6, 0)
displayNameLabel.BackgroundTransparency = 1
displayNameLabel.Font = Enum.Font.SourceSansBold
displayNameLabel.Text = "Display Name: " .. game.Players.LocalPlayer.DisplayName
displayNameLabel.TextColor3 = Color3.new(1, 1, 1)
displayNameLabel.TextScaled = true
displayNameLabel.Parent = mainSection

local idLabel = Instance.new("TextLabel")
idLabel.Name = "ID"
idLabel.Size = UDim2.new(1, 0, 0.1, 0)
idLabel.Position = UDim2.new(0, 0, 0.7, 0)
idLabel.BackgroundTransparency = 1
idLabel.Font = Enum.Font.SourceSansBold
idLabel.Text = "ID: " .. game.Players.LocalPlayer.UserId
idLabel.TextColor3 = Color3.new(1, 1, 1)
idLabel.TextScaled = true
idLabel.Parent = mainSection

local fpsLabel = Instance.new("TextLabel")
fpsLabel.Name = "FPS"
fpsLabel.Size = UDim2.new(1, 0, 0.1, 0)
fpsLabel.Position = UDim2.new(0, 0, 0.8, 0)
fpsLabel.BackgroundTransparency = 1
fpsLabel.Font = Enum.Font.SourceSansBold
fpsLabel.Text = "FPS: "
fpsLabel.TextColor3 = Color3.new(1, 1, 1)
fpsLabel.TextScaled = true
fpsLabel.Parent = mainSection



local function updateFPS()
    fpsLabel.Text = "FPS: " .. math.floor(1 / game:GetService("RunService").RenderStepped:Wait())
end

game:GetService("RunService").RenderStepped:Connect(updateFPS)


local playerCountLabel = Instance.new("TextLabel")
playerCountLabel.Name = "PlayerCount"
playerCountLabel.Size = UDim2.new(1, 0, 0.1, 0)
playerCountLabel.Position = UDim2.new(0, 0, 0.9, 0)
playerCountLabel.BackgroundTransparency = 1
playerCountLabel.Font = Enum.Font.SourceSansBold
playerCountLabel.Text = "Players: " .. #game.Players:GetPlayers()
playerCountLabel.TextColor3 = Color3.new(1, 1, 1)
playerCountLabel.TextScaled = true
playerCountLabel.Parent = mainSection

local function updatePlayerCount()
    playerCountLabel.Text = "Players: " .. #game.Players:GetPlayers()
end


game.Players.PlayerAdded:Connect(updatePlayerCount)
game.Players.PlayerRemoving:Connect(updatePlayerCount)



Wait (1)
game.StarterGui:SetCore("SendNotification", {

    Title = "preparing gui";

    Text = "";


})

Wait (1)
game.StarterGui:SetCore("SendNotification", {

    Title = "gui loading";

    Text = "";


})


Wait (1.4)
game.StarterGui:SetCore("SendNotification", {

    Title = "pls wait 1.5 sec";

    Text = "";

})


Wait (1.5)
game.StarterGui:SetCore("SendNotification", {

    Title = "hi";

    Text = "script loaded";

  })

Wait (0.1)
game.StarterGui:SetCore("SendNotification", {

    Title =  "the script is currently loading wait 12 sec for all the section and your bottom i mean botton >:) ";

    Text = "";


})

wait(0.8)
local function callback(Text)
 if Text == "yes" then
  screenGui.Enabled = false
elseif Text == ("no") then
 print ("ok")
 end
end

local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
--
game.StarterGui:SetCore("SendNotification", {
 Title = "hi";
 Text = "do you want to delete the display gui";
 Icon = "";
 Duration = 5;
 Button1 = "yes";
 Button2 = "no";
 Callback = NotificationBindable;
})

wait (0.4)
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("TX hub", "Synapse")

wait(1.9)
local Home = Window:NewTab("Home")
local HomeSection = Home:NewSection("Home")

local Player = game.Players.LocalPlayer

local playerNameLabel = HomeSection:NewLabel("hello: " .. Player.Name)
local displayNameLabel = HomeSection:NewLabel("Display Name: " .. Player.DisplayName)
local playerIdLabel = HomeSection:NewLabel("Player ID: " .. Player.UserId)

game:GetService("RunService").Heartbeat:Connect(updatePlayerInfo)

wait(2.4)
local Script= Window:NewTab("Script")
local ScriptSection = Script:NewSection("Script")

local games = Window:NewTab("games")
local gamesSection = games:NewSection("A")

gamesSection:NewButton("altitorture by f hub99", "ButtonInfo", function()
-- Altitorture Script 
loadstring(game:HttpGet("https://raw.githubusercontent.com/memejames/Hide/main/Test"))()
end)

wait(1.9)
gamesSection:NewButton("Ability Wars", "", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/guest433/Smth/main/Yes'))()
end)

print(successfullylodedthescript)

local gamesSectionB = games:NewSection("B")

gamesSectionB:NewButton("f hub99 break in 2", "", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/memejames/Hide/main/Break%20in%202"))()
end)

gamesSectionB:NewButton("Blox Fruit HOHO Hub", "", function()
    _G.HohoVersion = "v3"
    loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
end)
wait(3.8)
gamesSectionB:NewButton("redz hub", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
end)

gamesSectionB:NewButton("Uranium Hub", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Augustzyzx/UraniumMobile/main/UraniumKak.lua"))()
end)
wait(3.8)
gamesSectionB:NewButton("Pado Hub", "", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/REWzaKunGz1/premium/main/PadoHub'))()
end)
wait(1.8)
gamesSectionB:NewButton("IDK", "", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/AXCScript/KayMobile/main/Script-Loader'))()
end)

wait(1.6)
local gamesSectionC = games:NewSection("C")

local gamesSectionD = games:NewSection("D")
gamesSectionD:NewButton("Da Hood", "", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SwagModeV002'))()
end)

local gamesSectionE = games:NewSection("E")

local gamesSectionF = games:NewSection("F")

local gamesSectionG = games:NewSection("G")

local gamesSectionH = games:NewSection("H")

local gamesSectionI = games:NewSection("I")

local gamesSectionJ = games:NewSection("J")

local gamesSectionK = games:NewSection("K")

local gamesSectionL = games:NewSection("L")

local gamesSectionM = games:NewSection("M")

local gamesSectionN = games:NewSection("N")

local gamesSectionO = games:NewSection("O")

local gamesSectionP = games:NewSection("P")
gamesSectionP:NewButton("Prison Life", "", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/H17S32/Tiger_Admin/main/Script'))() 
end)

local gamesSectionQ = games:NewSection("Q")

local gamesSectionR = games:NewSection("R")

local gamesSectionS = games:NewSection("S")
gamesSectionS:NewButton("stand awakening", "", function()
loadstring(Game:HttpGet("https://pastebin.com/raw/p2LPDjzf",true))()
end)

gamesSectionS:NewButton("Slap Battles Not Verified", "", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/dizyhvh/slap_battles_gui/main/0.lua"))()
end)

gamesSectionS:NewButton("Slap Battles Second Script", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles"))()
end)

print("Code has been executed successfully!")

local gamesSection = games:NewSection("U")
local gamesSection = games:NewSection("V")
local gamesSection = games:NewSection("W") 
local gamesSection = games:NewSection("X")
local gamesSection = games:NewSection("Y")
local gamesSection = games:NewSection("Z")

local Script2= Window:NewTab("Script hubs")
local Script2Section = Script2:NewSection("hubs")

Script2Section:NewButton("gigachad hub", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LolPrivate/Side/main/Moonsec%20V3"))()
end)
wait(2.4)
Script2Section:NewButton("version hub", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/wKc5r6CM"))()
end)
wait(2.3)
local Script3= Window:NewTab("player")
local Script3Section = Script3:NewSection("player")

Script3Section:NewSlider("walkspeed", "", 500, 16, function(s)   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Script3Section:NewSlider("JumpPower", "", 500, 50, function(s)  game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

local function rejoinPlayer(player)
    local success, errorMessage = pcall(function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, player)
    end)

    if not success then
        warn("Failed to rejoin player:", errorMessage)
    end
end
Script3Section:NewButton("Rejoin", "Rejoins the game", function()
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.UserId > 0 then
            rejoinPlayer(player)
        end
    end
end)

Script3Section:NewButton("Serverhop", "", function()
    
    local module = loadstring(game:HttpGet("https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua"))()
    module:Teleport(game.PlaceId)
end)
Script3Section:NewButton("Less Server", "", function()
    local Http = game:GetService("HttpService")
    local TPS = game:GetService("TeleportService")
    local Api = "https://games.roblox.com/v1/games/"

    local _place = game.PlaceId
    local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
    
    local function ListServers(cursor)
        local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
        return Http:JSONDecode(Raw)
    end
    
    local Server, Next
    repeat
        local Servers = ListServers(Next)
        Server = Servers.data[1]
        Next = Servers.nextPageCursor
    until Server
    
    TPS:TeleportToPlaceInstance(_place, Server.id, game.Players.LocalPlayer)
end)


local playerToTeleport
ScriptSection:NewTextBox("PlayerName", "Enter player name full name tho", function(name)
    playerToTeleport = name
end)

ScriptSection:NewButton("Teleport", "Teleports to the entered player", function()
    local targetPlayer = game.Players:FindFirstChild(playerToTeleport)
    if targetPlayer then
        local player = game.Players.LocalPlayer
        local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
        if humanoid then
            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            wait(0.1)
            player.Character:SetPrimaryPartCFrame(targetPlayer.Character.HumanoidRootPart.CFrame)
        end
    else
        print("Player not found!")
    end
end)

wait(3.5)
Script3Section:NewButton("noclip made by tx", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/guest433/Idkhello/main/noclip.lua"))()
  end)

-- tab

local Script7= Window:NewTab("make your own script")
local Script7Section= Script7:NewSection("")

Script7Section:NewButton("darkdexv3", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end)

Script7Section:NewButton("simple spy", "", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
end)

Script7Section:NewButton("mobile simple spy", "mobile simple spy not working I think ", function()
    
end)


Script7Section:NewButton("gui maker", "you can make gui in mobile I'm patrick", function()
    loadstring(game:HttpGet(('https://pastefy.app/EOgPqinS/raw'),true))() --Requires 30% Experience creating scripts" 
end)

wait(10.9)
local Script9= Window:NewTab("credit")
local Script9Section= Script9:NewSection("credit by tx")

error ("your account is gonna get hack if you don't change your password by tx jk stay protected")
warning ("10 sec be fast")
