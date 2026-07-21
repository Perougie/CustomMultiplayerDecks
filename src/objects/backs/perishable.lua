SMODS.Back({
	key = "perishable",
	atlas = "b_decks",
	pos = { x = 3, y = 0 },
	config = {},
	unlocked = true,
	loc_vars = function(self, info_queue, back)
		return { vars = {} }
	end,
	apply = function(back)
		G.GAME.starting_params.perishable_deck = true
		G.GAME.used_vouchers["v_overstock_norm"] = true
		G.GAME.used_vouchers["v_overstock_plus"] = true
		G.GAME.starting_voucher_count = (G.GAME.starting_voucher_count or 0) + 2
		G.E_MANAGER:add_event(Event({ -- Adding back objects of any type from a deck MUST be done within an event
			func = function()
				Card.apply_to_run(nil, G.P_CENTERS["v_overstock_norm"])
				Card.apply_to_run(nil, G.P_CENTERS["v_overstock_plus"])
				return true
			end,
		}))
	end,
})
