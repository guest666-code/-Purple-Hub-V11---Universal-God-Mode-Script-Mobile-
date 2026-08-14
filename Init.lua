-- Purple Hub V-PRO | Rivals Edition
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()

-- Arayüzü Oluştur
local Window = Fluent:CreateWindow({
    Title = "Purple Hub V-PRO | Rivals",
    SubTitle = "by Purpleguy",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- Modern blur efekti
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- Sekmeler
local Tabs = {
    Combat = Window:AddTab({ Title = "Combat", Icon = "sword" }),
    Visuals = Window:AddTab({ Title = "Visuals", Icon = "eye" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

-- [COMBAT] Modülü
Tabs.Combat:AddToggle("AutoAim", {Title = "Auto-Aim", Description = "Rivals için hassas hedefleme", Default = false, Callback = function(Value)
    print("Auto-Aim açıldı: " .. tostring(Value))
    -- Buraya kendi Auto-Aim fonksiyonunu bağlayabilirsin
end})

Tabs.Combat:AddToggle("NoRecoil", {Title = "No-Recoil", Description = "Silah sekmesini kapatır", Default = false, Callback = function(Value)
    print("No-Recoil açıldı: " .. tostring(Value))
end})

-- [VISUALS] Modülü
Tabs.Visuals:AddToggle("ESP", {Title = "Player ESP", Description = "Düşmanları duvar arkasından görme", Default = false, Callback = function(Value)
    print("ESP açıldı: " .. tostring(Value))
end})

-- [SETTINGS] Modülü
Tabs.Settings:AddButton({
    Title = "Discord Sunucumuza Katıl",
    Description = "Güncellemeler için tıkla",
    Callback = function()
        print("Discord linki açılıyor...")
    end
})

-- Hoş geldin Bildirimi
Fluent:Notify({
    Title = "Purple Hub",
    Content = "Rivals Edition başarıyla yüklendi, Purpleguy!",
    Duration = 5
})
