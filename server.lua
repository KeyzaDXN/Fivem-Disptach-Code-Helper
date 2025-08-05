ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Config = Config or {}

local policeJobs = {
    "police",
    "swat"
}

local function hasPoliceJob(xPlayer)
    for _, job in pairs(policeJobs) do
        if xPlayer.job.name == job then
            return true
        end
    end
    return false
end

local function SendNotify(source, title, message, type, duration)
    if not Config.NotifySystem then
        print("DEBUG NotifySystem: nil")
        print("NotifySystem not set properly, falling back to axNotify")
        Config.NotifySystem = "ax"
    else
        print("DEBUG NotifySystem: " .. tostring(Config.NotifySystem))
    end

    if Config.NotifySystem == "ax" then
        TriggerClientEvent('axNotify:Alert', source, title, message, type, duration)
    elseif Config.NotifySystem == "ox_lib" then
        TriggerClientEvent('ox_lib:notify', source, {
            title = title,
            description = message,
            type = type,
            duration = duration
        })
    elseif Config.NotifySystem == "okok" then
        TriggerClientEvent('okokNotify:Alert', source, {
            text = message,
            type = type,
            duration = duration,
            layout = 'topRight'
        })
    else
        TriggerClientEvent('axNotify:Alert', source, title, message, type, duration)
    end
end

RegisterCommand("10", function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    if not xPlayer then return end

    if not hasPoliceJob(xPlayer) then
        SendNotify(source, 'Error', Config.GetText("error_no_permission"), 'error', 5000)
        return
    end

    local code = args[1]
    if not code then
        SendNotify(source, 'Error', Config.GetText("error_no_code"), 'error', 5000)
        return
    end

    local fullCode = Config.GetText("ten_code_prefix") .. code
    local message = Config.GetTenCode(fullCode)

    if message then
        SendNotify(source, fullCode, message, 'success', 5000)
    else
        SendNotify(source, 'Unknown code', Config.GetText("error_unknown_code"), 'error', 5000)
    end
end, false)

RegisterCommand("code", function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    if not xPlayer then return end

    if not hasPoliceJob(xPlayer) then
        SendNotify(source, 'Error', Config.GetText("error_no_permission"), 'error', 5000)
        return
    end

    local code = args[1]
    if not code then
        SendNotify(source, 'Error', Config.GetText("error_no_code"), 'error', 5000)
        return
    end

    local message = Config.GetCodeList(code)

    if message then
        SendNotify(source, Config.GetText("code_prefix") .. code, message, 'success', 5000)
    else
        SendNotify(source, 'Unknown code', Config.GetText("error_unknown_code"), 'error', 5000)
    end
end, false)