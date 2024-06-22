local Visible = false
local open = false
local armasP = {}
local cats = {}

function OpenShop(sid, armas, categories)
    local shopid = sid
    if not open then
        SetTimecycleModifier("hud_def_blur")
        SetNuiFocus(true, true)
        for k, v in pairs(categories) do
            SendNUIMessage({
                action = "openShop",
                label = v.label,
                name = v.name,
                shop = shopid
            })
        end
        open = true
        armasP = armas
        cats = categories
    end
end

RegisterNUICallback("RequestWeapons", function(data, cb)
    for k, v in pairs(armasP) do
        if v.category == data.cat then
            SendNUIMessage({
                action = "weaponlist",
                name = v.name,
                label = v.label,
                price = v.price,
                number = k
            })
        end
    end
end)

RegisterNuiCallback("RequestStats", function(data, cb)
    local _, hudDamage, hudSpeed, hudCapacity, hudAccuracy, hudRange = GetWeaponStats(GetHashKey(data.arma))
    SendNUIMessage({
        action = "showStats",
        damage = hudDamage,
        speed = hudSpeed,
        capacity = hudCapacity,
        accuracy = hudAccuracy,
        range = hudRange
    })
end)

SetVisible = function(visible)
    if visible then
        SetNuiFocus(true, true)
        SendNUIMessage({
            visible = true
        })
        Visible = true
    end
end

RegisterCommand("weaponshop", function()
    SetVisible(true)
end)

-- RegisterNUICallback("close", function(_, cb)
--     cb('ok')
--     CloseMenu()
-- end)


local function GetIntFromBlob(b, s, o)
    r = 0
    for i = 1, s, 1 do
        r = r | (string.byte(b, o + i) << (i - 1) * 8)
    end
    return r
end

function GetWeaponStats(weaponHash, none)
    blob = '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'
    retval = Citizen.InvokeNative(0xD92C739EE34C9EBA, weaponHash, blob, Citizen.ReturnResultAnyway())
    hudDamage = GetIntFromBlob(blob, 8, 0)
    hudSpeed = GetIntFromBlob(blob, 8, 8)
    hudCapacity = GetIntFromBlob(blob, 8, 16)
    hudAccuracy = GetIntFromBlob(blob, 8, 24)
    hudRange = GetIntFromBlob(blob, 8, 32)
    return retval, hudDamage, hudSpeed, hudCapacity, hudAccuracy, hudRange
end
