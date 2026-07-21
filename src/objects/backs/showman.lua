--All Joker and Consumable cards can always be found in shops
SMODS.Back({
	key = "showman",
	atlas = "b_decks",
	pos = { x = 1, y = 0 },
	config = { dollars = 9999 }, -- create a new thing called program_rate
	unlocked = true,
	loc_vars = function(self, info_queue, back)
		return { vars = { self.config.dollars } }
	end,
	apply = function(self, back)
		G.GAME.starting_params.showman_deck = true
	end,
})
