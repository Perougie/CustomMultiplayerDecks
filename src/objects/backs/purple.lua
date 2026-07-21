SMODS.Back({
	key = "purple",
	atlas = "b_decks",
	pos = { x = 0, y = 0 },
	config = { discards = 1, hands = 1 }, -- create a new thing called program_rate
	unlocked = true,
	loc_vars = function(self, info_queue, back)
		return { vars = { self.config.discards, self.config.hands } }
	end,
})
