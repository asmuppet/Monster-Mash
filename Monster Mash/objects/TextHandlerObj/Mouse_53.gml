//Start the game if the mouse clicks the text at the beginning of the game

if center_textx < mouse_x && mouse_x < (center_textx + text_width) && center_texty < mouse_y && mouse_y < (center_texty + text_height) && global.game_state = GameState.game_start{
	global.game_state = GameState.monster_select
}