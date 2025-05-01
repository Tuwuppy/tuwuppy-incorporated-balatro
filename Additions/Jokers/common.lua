SMODS.Joker {
    key = 'test',
    loc_txt = {
        name = "Test Jonkler",
        text = {
            "{X:mult,C:white}X#1#{} Mult, Increases by the amount of times you've played a hand each time you play a hand."
        }
    },
	atlas = "Placeholders",
	rarity = 3,
	cost = 5,
	config = {extra={xmult=2,xmult_change=1}},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.xmult,
				card.ability.extra.xmult_change
			}
		}
	end,
    calculate = function(self, card, context)
		if context.joker_main then
			card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_change
			card.ability.extra.xmult_change = card.ability.extra.xmult_change + 1
			return {
				xmult = card.ability.extra.xmult
			}
		end
	end
}