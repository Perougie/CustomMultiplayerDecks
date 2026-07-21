--Score rounds to logarithmic units (ex: score = 125 chips, two closest logarithms are 100 and 1000, closer to 100 than 1000 so score = 100 chips)
SMODS.Back({
	key = "steep",
	atlas = "b_decks",
	pos = { x = 2, y = 1 },
	config = { ante_scaling = 1.5 },
	unlocked = true,
	loc_vars = function(self, info_queue, back)
		return { vars = { self.config.ante_scaling } }
	end,
	apply = function(back)
		G.GAME.starting_params.steep_deck = true
	end,
	calculate = function(self, back, context)
		if context.final_scoring_step then
			local tot = SMODS.Scoring_Parameters.chips.current * SMODS.Scoring_Parameters.mult.current
			local newMult = (10 ^ (math.ceil(math.log10(tot))))
			SMODS.Scoring_Parameters.chips:modify(-SMODS.Scoring_Parameters.chips.current + 1)
			SMODS.Scoring_Parameters.mult:modify(-SMODS.Scoring_Parameters.mult.current + newMult)
			G.E_MANAGER:add_event(Event({
				func = function()
					local text = localize("k_multidecks_logged")
					play_sound("gong", 0.94, 0.3)
					play_sound("gong", 0.94 * 1.5, 0.2)
					play_sound("tarot1", 1.5)
					ease_colour(G.C.UI_CHIPS, { 0.75, 0.65, 0.75, 1 })
					ease_colour(G.C.UI_MULT, { 0.75, 0.65, 0.75, 1 })
					attention_text({
						scale = 1.4,
						text = text,
						hold = 2,
						align = "cm",
						offset = { x = 0, y = -2.7 },
						major = G.play,
					})
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						blockable = false,
						blocking = false,
						delay = 4.3,
						func = function()
							ease_colour(G.C.UI_CHIPS, G.C.BLUE, 2)
							ease_colour(G.C.UI_MULT, G.C.RED, 2)
							return true
						end,
					}))
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						blockable = false,
						blocking = false,
						no_delete = true,
						delay = 6.3,
						func = function()
							G.C.UI_CHIPS[1], G.C.UI_CHIPS[2], G.C.UI_CHIPS[3], G.C.UI_CHIPS[4] =
								G.C.BLUE[1], G.C.BLUE[2], G.C.BLUE[3], G.C.BLUE[4]
							G.C.UI_MULT[1], G.C.UI_MULT[2], G.C.UI_MULT[3], G.C.UI_MULT[4] =
								G.C.RED[1], G.C.RED[2], G.C.RED[3], G.C.RED[4]
							return true
						end,
					}))
					return true
				end,
			}))
		end
	end,
})
