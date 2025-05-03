SMODS.Rarity {
    key = "machine",
    badge_colour = HEX("808080"),
    loc_txt = {
        name = "Machine"
    },
    default_weight = 0,

    pools = {},

    get_weight = function(self, weight, object_type)
        return weight
    end
}
SMODS.Joker {
    key = "pumpjack",
    loc_txt = {
        name = 'Oil Pumpjack',
        text = {"After defeating a blind, create 1 oil"}
    },
    atlas = "placeholder",
    rarity = "tinc_machine",
    cost = 5,
    calculate = function(self, card, context)
        if context.end_of_round and context.cardarea == G.jokers then
            SMODS.add_card{set = "resource", key = "c_tinc_oil", area = G.consumeables}
        end
    end
}