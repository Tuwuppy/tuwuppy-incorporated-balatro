SMODS.ConsumableType {
    key = "technology",
    primary_colour = HEX("0096FF"),
    secondary_colour = HEX("63C5DA"),
    loc_txt = {
        name = "Technology",
        collection = "Technology",
        undiscovered = {
            name = "Undiscovered Technology",
            text = {"Discover this technology in game to reveal it in the collection!"},
        }
    }
}
-- if you forget: outside of calculate you do "ease_chips(5)" rather than "chips = 5"
SMODS.Consumable {
    key = "technologyoilprice",
    set = "technology",
    loc_txt = {
        name = "Oil Pipeline",
        text = {"Adds 1$ of sell value to all your oil, permanently"}
    },
    atlas = "placeholder",
    cost = 5,
    config = {},
    use = function(self, card, area, copier)
        
    end,
    can_use = function(self, card)
        return true
    end
}