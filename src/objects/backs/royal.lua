--Entire deck is only aces
SMODS.Back({
	key = "royal",
	atlas = "b_decks",
	pos = { x = 0, y = 1 },
	config = { hand_size = -1 },
	unlocked = true,
	loc_vars = function(self, info_queue, back)
		return { vars = { self.config.hand_size } }
	end,
	apply = function(self, back)
		G.E_MANAGER:add_event(Event({
			func = function()
				local removalList = {} --Have to make custom removal list because of loop ending to early when iterating through original G.playing_cards table
				for _, playing_card in ipairs(G.playing_cards) do
					local rank = playing_card:get_id()
					if rank < 10 then
						table.insert(removalList, playing_card)
					end
				end

				for i = 1, #removalList do --Actually removing cards
					removalList[i]:remove()
				end
				return true
			end,
		}))
	end,
})
