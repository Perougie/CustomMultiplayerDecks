SMODS.Back({
	key = "redeemable",
	atlas = "b_decks",
	pos = { x = 2, y = 0 },
	config = {}, -- create a new thing called program_rate
	unlocked = true,
	loc_vars = function(self, info_queue, back)
		return { vars = {} }
	end,
	apply = function(back)
		G.GAME.starting_params.redeemable_deck = true
	end,
})
