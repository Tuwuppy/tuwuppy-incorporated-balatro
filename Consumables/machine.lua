-- if you forget: outside of calculate you do "ease_chips(5)" rather than "chips = 5"

SMODS.Consumable {
    key = "machinetest",
    set = "machine",
    loc_txt = {
        name = "Machine Test",
        text = {"Testing the custom consumable"}
    },
    atlas = "Placeholders",
    cost = 3,
    config = {extra={dollar_gain=5}},
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.dollar_gain
            }
        }
    end,
    use = function(self, card, area, copier)
        ease_dollars(5)
    end,
    can_use = function(self, card)
        return true
    end
}