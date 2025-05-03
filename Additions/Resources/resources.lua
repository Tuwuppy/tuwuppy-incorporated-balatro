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
SMODS.Consumable {
    key = "oil",
    set = 'resource',
    loc_txt = {
        name = "Oil",
        text = {"A basic resource."}
    },
    atlas = "oil",
    cost = 3,
    set_ability = function(self, card, initial, delay_sprites)
        card:set_edition("e_negative", true, true)
    end
    
}