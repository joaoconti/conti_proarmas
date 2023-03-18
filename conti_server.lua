local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

conti = {}
Tunnel.bindInterface("conti_proarma", conti)
inProgress = {}


RegisterServerEvent("conti_proarma:produzir")
AddEventHandler("conti_proarma:produzir",function(data)
    local src = source
    local user_id = vRP.getUserId(src)
    for k,v in pairs(Config.producao) do
        if data.arma == k then
            if vRP.hasPermission(user_id, v.permissao) then
                if not inProgress[src] then
                    if vRP.getInventoryWeight(user_id)+vRP.getItemWeight(v.arma) <= vRP.getInventoryMaxWeight(user_id) then
                        for _, i in pairs(v.itens) do
                            if vRP.getInventoryItemAmount(user_id,i.item) >= i.quantidade then
                            else
                                TriggerClientEvent("Notify",src,"Negado","Você não tem item suficiente")
                                return false
                            end
                        end
                        for _, i in pairs(v.itens) do
                            vRP.tryGetInventoryItem(user_id,i.item,i.quantidade)
                        end
                        TriggerClientEvent('cancelando',src,true)
                        TriggerClientEvent("progress",src,v.tempo_de_producao*1000,"Produzindo...")
                        vRPclient._playAnim(src,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)
                        inProgress[src] = true
                        print('teste')
                        SetTimeout(v.tempo_de_producao*1000,function()
                            vRPclient._stopAnim(src,false)
                            vRP.giveInventoryItem(user_id,v.arma,1)
                            TriggerClientEvent('cancelando',src,false)
                            TriggerClientEvent("Notify",src,"sucesso","Você fabricou uma <b>"..data.arma.."</b>")
                            inProgress[src] = false
                            TriggerClientEvent('cancelando',src,false)
                            return true
                        end)
                    end
                end
            else
                TriggerClientEvent("Notify",src,"Negado","Você não tem permissão")
            end
        end
    end
end)

function conti.permissao(p)
    local source = source
	local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, p) then
        return true
    else
        TriggerClientEvent("Notify",source,"Negado","Você não tem permissão")
        return false
    end
end