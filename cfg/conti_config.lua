Config = {}

Config.blips = {
    [1] = {
        blip = {x= 1494.51, y= 1108.63, z= 114.35},     -- Blip coordenada.
        permissao = 'medellin.permissao',               -- Permissão para abrir.
    } 
}

Config.producao = {
    ["ak47"] = {                                        -- Nome que será enviado para nui, tem que ser igual do html em "button".
        tempo_de_producao = 60,                         -- Tempo para produzir (segundos).
        arma = 'wbodyWEAPON_ASSAULTRIFLE_MK2',          -- Arma que vai ser produzido.
        permissao = 'medellin.permissao',               -- Permissão para produzir arma.
        itens = {                                       -- Aqui você bota os itens necessário para fabricar.
            {item = 'corpo-ak47', quantidade = 1},      -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
            {item = 'gatilho', quantidade = 1},         -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
            {item = 'molas', quantidade = 1},           -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
            {item = 'placa-metal', quantidade = 1},     -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
        },
    },
    ["ak74"] = {                                        -- Nome que será enviado para nui, tem que ser igual do html em "button".
        tempo_de_producao = 60,                         -- Tempo para produzir (segundos).
        arma = 'wbodyWEAPON_ASSAULTRIFLE',          -- Arma que vai ser produzido.
        permissao = 'medellin.permissao',               -- Permissão para produzir arma.
        itens = {                                       -- Aqui você bota os itens necessário para fabricar.
            {item = 'corpo-ak74', quantidade = 1},      -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
            {item = 'gatilho', quantidade = 1},         -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
            {item = 'molas', quantidade = 1},           -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
            {item = 'placa-metal', quantidade = 1},     -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
        },
    },
    ["mp5"] = {                                         -- Nome que será enviado para nui, tem que ser igual do html em "button".
        tempo_de_producao = 60,                         -- Tempo para produzir (segundos).
        arma = 'wbodyWEAPON_SMG',          -- Arma que vai ser produzido.
        permissao = 'medellin.permissao',               -- Permissão para produzir arma.
        itens = {                                       -- Aqui você bota os itens necessário para fabricar.
            {item = 'corpo-mp5', quantidade = 1},      -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
            {item = 'gatilho', quantidade = 1},         -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
            {item = 'molas', quantidade = 1},           -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
            {item = 'placa-metal', quantidade = 1},     -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
        },
    },
    ["desert-eagle"] = {                                -- Nome que será enviado para nui, tem que ser igual do html em "button".
        tempo_de_producao = 60,                         -- Tempo para produzir (segundos).
        arma = 'wbodyWEAPON_PISTOL50',          -- Arma que vai ser produzido.
        permissao = 'medellin.permissao',               -- Permissão para produzir arma.
        itens = {                                       -- Aqui você bota os itens necessário para fabricar.
            {item = 'corpo-deserteagle', quantidade = 1},      -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
            {item = 'gatilho', quantidade = 1},         -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
            {item = 'molas', quantidade = 1},           -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
            {item = 'placa-metal', quantidade = 1},     -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
        },
    },
    ["m1911"] = {                                       -- Nome que será enviado para nui, tem que ser igual do html em "button".
        tempo_de_producao = 60,                         -- Tempo para produzir (segundos).
        arma = 'wbodyweapon_pistol_mk2',          -- Arma que vai ser produzido.
        permissao = 'medellin.permissao',               -- Permissão para produzir arma.
        itens = {                                       -- Aqui você bota os itens necessário para fabricar.
            {item = 'corpo-m1911', quantidade = 1},      -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
            {item = 'gatilho', quantidade = 1},         -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
            {item = 'molas', quantidade = 1},           -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
            {item = 'placa-metal', quantidade = 1},     -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
        },
    },
    ["tec9"] = {                                        -- Nome que será enviado para nui, tem que ser igual do html em "button".
        tempo_de_producao = 60,                         -- Tempo para produzir (segundos).
        arma = 'wbodyweapon_machinepistol',          -- Arma que vai ser produzido.
        permissao = 'medellin.permissao',               -- Permissão para produzir arma.
        itens = {                                       -- Aqui você bota os itens necessário para fabricar.
            {item = 'corpo-tec9', quantidade = 1},      -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
            {item = 'gatilho', quantidade = 1},         -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
            {item = 'molas', quantidade = 1},           -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
            {item = 'placa-metal', quantidade = 1},     -- Item = nome do item | quantidade = quantidade que precisa para fabricar.
        },
    },
}