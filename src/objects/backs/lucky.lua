--All card with a probability retrigger

--[[
SMODS.Back({
	key = "lucky",
	atlas = "b_decks",
	pos = { x = 1, y = 1 },
	config = { discards = 1, hands = 1 }, -- create a new thing called program_rate
	unlocked = true,
	loc_vars = function(self, info_queue, back)
		return { vars = { self.config.discards, self.config.hands } }
	end,
})
]]
