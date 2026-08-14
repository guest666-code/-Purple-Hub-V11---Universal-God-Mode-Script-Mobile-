-- Purple Hub V-PRO | PRO EDITION
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

-- Ses Efekti Fonksiyonu (Her etkileşimde tık sesi)
local function PlayClickSound()
    local sound = Instance.new("Sound", game.SoundService)
    sound.SoundId = "rbxassetid://12221967" -- Klasik temiz tıklama sesi
    sound.Volume = 0.5
    sound:Play()
    game.Debris:AddItem(sound, 1)
end

-- Arayüzü Oluştur (Tablet dostu ayarlar)
local Window = Fluent:CreateWindow({
    Title = "Purple Hub V-PRO",
    SubTitle = "by Purpleguy",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 380), -- Tabletlerde rahat görünür boyutta
    Acrylic = true, 
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl -- Bilgisayarda gizlemek için
})

local Tabs = {
    Combat = Window:AddTab({ Title = "Combat", Icon = "sword" }),
    Visuals = Window:AddTab({ Title = "Visuals", Icon = "eye" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

-- [COMBAT] - Örnek Kullanım
Tabs.Combat:AddToggle("AutoAim", {Title = "Auto-Aim", Description = "Kilitlenmeyi aç", Default = false, Callback = function(v)
    PlayClickSound()
    print("Auto-Aim:", v)
end})

-- [VISUALS] - Örnek Kullanım
Tabs.Visuals:AddToggle("ESP", {Title = "Player ESP", Description = "Düşmanları gör", Default = false, Callback = function(v)
    PlayClickSound()
    print("ESP:", v)
end})

-- [SETTINGS] - Ses ve Bilgilendirme
Fluent:Notify({
    Title = "Purple Hub",
    Content = "Sistem hazır, Purpleguy!",
    Duration = 3
})

-- SaveManager ile ayarları kaydetmeyi aktif et
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
SaveManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
SaveManager:BuildConfig()
SaveManager:LoadAutoloadConfig()
