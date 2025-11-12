//destroys itself if game state is not what it should be

if global.game_state != GameState.background_select {
	instance_destroy()
}