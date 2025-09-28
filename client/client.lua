local ESX = exports["es_extended"]:getSharedObject()
local hasPouch = false
local lang = Config.Locales[Config.Language]

RegisterNetEvent('stn_nicotine:usePouch', function(itemName)
    exports.ox_lib:progressBar({
        duration = 4000,
        label = lang['use'],
        useWhileDead = false,
        canCancel = false,
        disable = { car = true, move = true, combat = true },
        anim = { dict = 'mp_player_int_uppersmoke', clip = 'mp_player_int_smoke' }
    })

    sendNotify(lang['effect'], 'info')
    hasPouch = true

    Wait(5000)
    TriggerScreenShake()
end)

if Config.EnableSpitCommand then
    RegisterCommand(Config.SpitCommand, function()
        spitOutPouch()
    end)
end

if Config.EnableSpitKey then
    RegisterKeyMapping('spitpouch_key', 'Spit nicotine pouch', 'keyboard', Config.SpitKey)
    RegisterCommand('spitpouch_key', function()
        spitOutPouch()
    end)
end

function spitOutPouch()
    if hasPouch then
        hasPouch = false

        exports.ox_lib:progressBar({
            duration = 3000,
            label = lang['spit'],
            useWhileDead = false,
            canCancel = false,
            disable = { car = true, move = true, combat = true },
            anim = { dict = 'timetable@gardener@smoking_joint', clip = 'idle_cough' }
        })

        ClearTimecycleModifier()
        ShakeGameplayCam("DRUNK_SHAKE", 0.0)
        sendNotify(lang['spit'], 'error')
    else
        sendNotify(lang['command_hint'], 'info')
    end
end

function TriggerScreenShake()
    local intensity = Config.Recoil.intensity
    local duration = Config.Recoil.duration

    if Config.EffectType == 'shake' then
        ShakeGameplayCam("DRUNK_SHAKE", intensity)
        Wait(duration)
        ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    elseif Config.EffectType == 'high' then
        SetTimecycleModifier("spectator5")
        ShakeGameplayCam("DRUNK_SHAKE", intensity)
        Wait(duration)
        ClearTimecycleModifier()
        ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    end
end

function sendNotify(text, type)
    if Config.NotificationType == 'ox' then
        exports.ox_lib:notify({ description = text, type = type })
    elseif Config.NotificationType == 'okok' then
        exports['okokNotify']:Alert("Nikotin", text, 5000, type)
    end
end