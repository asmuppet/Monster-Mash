//display player gold
draw_text(0, 0, "Gold: " + string(player_gold))

if global.game_state != GameState.game_start && global.game_state != GameState.monster_select {
	draw_text(0, 10 + string_height("Gold: "), "Monster Raised: " + PlayerMonster.monster_species)
}