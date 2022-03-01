QBCore = exports['qb-core']:GetCoreObject()
PlayerData = QBCore.Functions.GetPlayerData()

RegisterNetEvent('qb-policejob:client:extras', function(data)
    --local string = data.id
    --local replace = string:gsub("extra", "")
    local extra = data.id
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped)
    if veh ~= nil then
        if GetPedInVehicleSeat(veh, -1) == ped then
            SetVehicleAutoRepairDisabled(veh, true) -- Forces Auto Repair off when Toggling Extra [GTA 5 Niche Issue]
            if DoesExtraExist(veh, extra) then
                if IsVehicleExtraTurnedOn(veh, extra) then
                    SetVehicleExtra(veh, extra, 1)
                    QBCore.Functions.Notify(Lang:t("error.extra_deactivated", {extra = extra}), 'error', 2500)
                else
                    SetVehicleExtra(veh, extra, 0)
                    QBCore.Functions.Notify(Lang:t("success.extra_activated", {extra = extra}), 'success', 2500)
                end
            else
                QBCore.Functions.Notify(Lang:t("error.extra_not_present", {extra = extra}), 'error', 2500)
            end
        else
            QBCore.Functions.Notify(Lang:t("error.not_driver"), 'error', 2500)
        end
    end
end)

function extrasmenu()
    ExtrasMenu = {
        {
            isHeader = true,
            header = ' 🚓 | Veh Extras Controls'
        },
        {
            header = "Extra 1",
			txt = "Toggle Extra 1",
			params = {
                isServer = false,
                event = "qb-policejob:client:extras",
                args = {
                    id = 1
                }
            }
        },
        {
            header = "Extra 2",
			txt = "Toggle Extra 2",
			params = {
                isServer = false,
                event = "qb-policejob:client:extras",
                args = {
                    id = 2
                }
            }
        },
        {
            header = "Extra 3",
			txt = "Toggle Extra 3",
			params = {
                isServer = false,
                event = "qb-policejob:client:extras",
                args = {
                    id = 3
                }
            }
        },
        {
            header = "Extra 4",
			txt = "Toggle Extra 4",
			params = {
                isServer = false,
                event = "qb-policejob:client:extras",
                args = {
                    id = 4
                }
            }
        },
        {
            header = "Extra 5",
			txt = "Toggle Extra 5",
			params = {
                isServer = false,
                event = "qb-policejob:client:extras",
                args = {
                    id = 5
                }
            }
        },
        {
            header = "Extra 6",
			txt = "Toggle Extra 6",
			params = {
                isServer = false,
                event = "qb-policejob:client:extras",
                args = {
                    id = 6
                }
            }
        },
        {
            header = "Extra 7",
			txt = "Toggle Extra 7",
			params = {
                isServer = false,
                event = "qb-policejob:client:extras",
                args = {
                    id = 7
                }
            }
        },
        {
            header = "Extra 8",
			txt = "Toggle Extra 8",
			params = {
                isServer = false,
                event = "qb-policejob:client:extras",
                args = {
                    id = 8
                }
            }
        },
        {
            header = "Extra 9",
			txt = "Toggle Extra 9",
			params = {
                isServer = false,
                event = "qb-policejob:client:extras",
                args = {
                    id = 9
                }
            }
        },
        {
            header = "Extra 10",
			txt = "Toggle Extra 10",
			params = {
                isServer = false,
                event = "qb-policejob:client:extras",
                args = {
                    id = 10
                }
            }
        },
        {
            header = "Extra 11",
			txt = "Toggle Extra 11",
			params = {
                isServer = false,
                event = "qb-policejob:client:extras",
                args = {
                    id = 11
                }
            }
        },
        {
            header = "Extra 12",
			txt = "Toggle Extra 12",
			params = {
                isServer = false,
                event = "qb-policejob:client:extras",
                args = {
                    id = 12
                }
            }
        },
        {
            header = "Extra 13",
			txt = "Toggle Extra 13",
			params = {
                isServer = false,
                event = "qb-policejob:client:extras",
                args = {
                    id = 13
                }
            }
        },
        {
            header = '🔙 | Back',
            txt = 'Go Back to Police Extras Menu',
            params = {
                isServer = false,
                event = 'qb-policejob:extrasmainmenu',
            }
        },
    }
    exports['qb-menu']:openMenu(ExtrasMenu)
end
RegisterNetEvent('qb-policejob:extras')
AddEventHandler('qb-policejob:extras', function ()
    exports['qb-menu']:openMenu({
        {
            header = "🚓 | Extras",
            isMenuHeader = true
        },
        {
            header = "Extra 1",
            params = {
                event = 'qb-policejob:client:extras',
                args = {
                    id = 1,
                    data = 1
                }
            }
        }
    })
end)

Citizen.CreateThread(function ()
    while true do
        Wait(10)
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local extras = vector3(449.66, -976.4, 25.25)
        local dis = #(pos - extras)
        if PlayerData.job.name == 'police' then
            if dis <= 5 then
                exports['qb-drawtext']:DrawText('[E] Extras & Liveries','left')
                if IsControlJustReleased(1, 38) then
                    extrasmenu()
                    exports['qb-drawtext']:HideText()
                end
            else
                exports['qb-drawtext']:HideText()
            end
        end
    end
end)