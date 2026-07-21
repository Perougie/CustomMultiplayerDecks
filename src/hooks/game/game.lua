local function apply_perishable(joker)
	if joker.ability.set == "Joker" then
		joker:set_perishable()
	end
end

local REF_init_game_object = Game.init_game_object
function Game:init_game_object()
	local returnValue = REF_init_game_object(self)
	returnValue.starting_params.showman_deck = false
	returnValue.starting_params.perishable_deck = false
	returnValue.starting_params.redeemable_deck = false
	returnValue.starting_params.steep_deck = false
	return returnValue
end

local REF_update_shop = Game.update_shop
function Game:update_shop(dt)
	REF_update_shop(self, dt)
	if G.GAME.starting_params.perishable_deck == true then
		for i, joker in ipairs(G.shop_jokers.cards) do
			apply_perishable(joker)
		end
	end
	if G.GAME.starting_params.redeemable_deck == true then
		for i, voucher in ipairs(G.shop_vouchers.cards) do
			voucher.cost = 0
		end
	end
end

--[[
function PleaseDontBreak()
	--if G.GAME.starting_params.perishable_deck == true then
	print(G.load_shop_jokers)
	if G.load_shop_jokers then
		for i, joker in ipairs(G.load_shop_jokers.cards) do
            if joker.config.center.perishable_compat and not joker.ability.eternal then 
                joker.ability.perishable = true
                joker.ability.perish_tally = G.GAME.perishable_rounds
            end
			--joker:set_edition("e_foil", true)
			--joker:add_sticker("perishable")
		end
	end
end
]]
