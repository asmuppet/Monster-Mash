persistent = true

//Huge enum containing many various gamestates. It is likely that I will eventually split it
//into multiple enums, but for now this is it

enum GameState {
	game_start,
	monster_select,
	zombie_selected,
	skeleton_selected,
	slime_selected,
	background_select,
	wealthy_background,
	trainer_background,
	nothing_background,
	tbc
}

global.game_state = GameState.game_start