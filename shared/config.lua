Config = {}

Config.Items = {
    'velo_nicot',
    'pablo_nicot',
    'cuba_nicot'
}

Config.Language = 'EN' -- 'EN','CS'

Config.Locales = {
    ['CS'] = {
        ['use'] = "Používáš nikotinový sáček...",
        ['effect'] = "Účinky začnou za chvíli...",
        ['spit'] = "Vyplivnul jsi sáček.",
        ['command_hint'] = "Použij /spitpouch pro vyplivnutí sáčku",
        ['debug'] = "Testovací efekt spuštěn."
    },
    ['EN'] = {
        ['use'] = "Using nicotine pouch...",
        ['effect'] = "The effects will start shortly...",
        ['spit'] = "You have spitted out the pouch.",
        ['command_hint'] = "Use /spitpouch to remove the pouch",
        ['debug'] = "Test effect triggered."
    }
}

Config.NotificationType = 'okok' -- 'ox', 'okok'

Config.EnableSpitCommand = true
Config.SpitCommand = 'spitpouch'

Config.EnableSpitKey = true
Config.SpitKey = 'X' -- defaultní klávesa

Config.EffectType = 'high' -- 'shake' or 'high'

-- Settings shaking (ONLY EDIT IF YOU HAVE EFFECTYPE SET TO SHAKE!)
Config.Recoil = {
    intensity = 0.5,   -- Intenzity (0.1 low, 1.0 high)
    duration = 20000   -- Long effect in ms (20000 = 20s)
}