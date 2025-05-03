SMODS.ConsumableType {
    key = "resource",
    primary_colour = HEX("3C280D"),
    secondary_colour = HEX("4B371C"),
    loc_txt = {
        name = "Resource",
        collection = "Resources"
        
    },
    shop_rate = 0
}
SMODS.Edition {
    key = "resource_edition",
    shader = false,
    loc_txt = {
        name = "Resource",
        text = {"A resource card,", "does not count", "toward consumable limit."},
        label = {"Resource 2:", "Electric Boogaloo"}
    },
    extra_cost = 0,
    in_shop = false,
    on_apply = function(card)
        G.consumeables.config.card_limit = G.consumeables.config.card_limit + 1
    end
}

SMODS.Consumable {
    key = "oil",
    set = 'resource',
    loc_txt = {
        name = "Oil",
        text = {"A basic resource."}
    },
    atlas = "oil",
    cost = 7,
    set_ability = function(self, card, initial, delay_sprites)
        card:set_edition("e_tinc_resource_edition", true, true)
    end
    
}