//display player gold
draw_text(0, 0, "Gold: " + string(player_gold))

if global.game_state != GameState.game_start && global.game_state != GameState.monster_select {
	draw_text(0, 10 + string_height("Gold: "), "Monster Raised: " + PlayerMonster.monster_species)
	draw_text(0, 10 + string_height("Gold: ") * 2, "Strength: " + string(PlayerMonster.str) + ", Strength Growth: " + string(PlayerMonster.str_mult))
	draw_text(0, 10 + string_height("Gold: ") * 3, "Speed: " + string(PlayerMonster.spd) + ", Speed Growth: " + string(PlayerMonster.spd_mult))
	draw_text(0, 10 + string_height("Gold: ") * 4, "Stamina: " + string(PlayerMonster.sta) + ", Stamina Growth: " + string(PlayerMonster.sta_mult))
}