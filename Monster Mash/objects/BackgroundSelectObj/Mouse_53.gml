//checks mouse position and selects choice accordingly

if mouse_x > text1_xpos1 && mouse_x < text1_xpos2 && mouse_y > text1_ypos1 && mouse_y < text1_ypos2 {
	global.game_state = GameState.wealthy_background
}

else if mouse_x > text1_xpos1 && mouse_x < text1_xpos2 && mouse_y > text2_ypos1 && mouse_y < text2_ypos2 {
	global.game_state = GameState.trainer_background
}

else if mouse_x > text1_xpos1 && mouse_x < text1_xpos2 && mouse_y > text3_ypos1 && mouse_y < text3_ypos2 {
	global.game_state = GameState.nothing_background
}

