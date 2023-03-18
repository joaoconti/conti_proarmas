local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

conti = Tunnel.getInterface("conti_proarma")

local onNui = false

local idle = 1000

CreateThread(function()
    while true do
        Wait(idle)
        if not HasStreamedTextureDictLoaded("marker") then
			RequestStreamedTextureDict("marker", true)
			while not HasStreamedTextureDictLoaded("marker") do
				Wait(1)
			end
		else
            for k, v in pairs(Config.blips) do
                if #(GetEntityCoords(PlayerPedId()) - vec3(v.blip.x,v.blip.y,v.blip.z)) < 5 then
                    idle = 5
                    DrawMarker(9, v.blip.x,v.blip.y,v.blip.z, 0.0, 0.0, 0.0, 0.0, 90.0, 0.0, 1.0, 1.0, 1.0, 255, 255, 255, 255,false, false, 2, true, "marker", "marker", false)
                    if IsControlJustPressed(0, 38) then
                        if conti.permissao(v.permissao) then
                            SetNuiFocus(true, true)
                            SendNUIMessage({
                                action = "show"
                            })
                        end
                    end
                end
            end
		end
    end
end)

RegisterNUICallback("botao", function(data, cb) -- Quando o botão for clicado ele vai executar esse código
    SendNUIMessage({
        action = "hide" -- Enviar para nui que não está visivel
    })
    SetNuiFocus(false, false)
    TriggerServerEvent("conti_proarma:produzir", data)
end)

RegisterNUICallback("focusFalse", function(data, cb)
    SetNuiFocus(false, false)
end)
