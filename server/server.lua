local ESX = exports["es_extended"]:getSharedObject()


local function registerNicotineItem(itemName)
    ESX.RegisterUsableItem(itemName, function(source, item)
        local xPlayer = ESX.GetPlayerFromId(source)
        if xPlayer then

            xPlayer.removeInventoryItem(itemName, 1)


            TriggerClientEvent('stn_nicotine:usePouch', source, itemName)
        end
    end)
end

registerNicotineItem('velo_nicot')
registerNicotineItem('pablo_nicot')
registerNicotineItem('cuba_nicot')