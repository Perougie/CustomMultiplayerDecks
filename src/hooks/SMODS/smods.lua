local REF_smods_showman = SMODS.showman
function SMODS.showman(card_key, ...)
	if G.GAME.starting_params.showman_deck == true then
		return true
	end
	return REF_smods_showman(card_key, ...)
end
