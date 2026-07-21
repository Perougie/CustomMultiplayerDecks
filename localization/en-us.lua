return {
	descriptions = {
		--Custom Decks
		Back = {
			b_multidecks_purple = {
				name = "Purple Deck",
				text = {
					"+{C:red}1{} discard and",
					"+{C:blue}1{} hand",
					"every round",
				},
				--[[unlock = {
					"Win a run with",
					"{C:attention}#1#{}",
					"on any difficulty",
				},]]
			},
			b_multidecks_showman = {
				name = "Theater Deck",
				text = {
					"Applies the effects",
					"of the {C:attention}Showman{}",
				},
				--[[unlock = {
					"Win a run with",
					"{C:attention}#1#{}",
					"on any difficulty",
				},]]
			},
			b_multidecks_royal = {
				name = "Royal Deck",
				text = {
					"Start with only",
					"royal flush cards",
					"{C:red}-1{} hand size",
					"every round",
				},
				--[[unlock = {
					"Win a run with",
					"{C:attention}#1#{}",
					"on any difficulty",
				},]]
			},
			b_multidecks_perishable = {
				name = "Rotton Deck",
				text = {
					"All {C:attention}Jokers{} found",
					"in shops are {C:attention}Perishable{}",
					"Starts with {C:attention}Overstock{}",
					"and {C:attention}Overstock+{} Vouchers",
				},
				--[[unlock = {
					"Win a run with",
					"{C:attention}#1#{}",
					"on any difficulty",
				},]]
			},
			b_multidecks_redeemable = {
				name = "Redeemable Deck",
				text = {
					"All {C:attention}Vouchers{} in",
					"shops are free",
				},
				--[[unlock = {
					"Win a run with",
					"{C:attention}#1#{}",
					"on any difficulty",
				},]]
			},
			b_multidecks_lucky = {
				name = "(Broken) Lottery Deck",
				text = {
					"1 in 7 chance to",
					"gain {C:attention}x2{} cash at",
					"the end of each round",
					"{C:inactive}(Guaranteed at least once each ante){}",
					"Gain no intrest",
				},
			},
			b_multidecks_steep = {
				name = "Steep Deck",
				text = {
					"Score is rounded",
					"to the highest",
					"single unit number",
					"{C:red}x1.5{} ante scaling",
				},
			},
		},
	},

	misc = {
		dictionary = {
			k_multidecks_logged = "Limited",
		},
	},
}
