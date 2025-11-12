//I am beyong positive there must be a better way of doing a state check than this awful if checklist,
//but that's what I've come up with for now

if global.game_state = GameState.zombie_selected {
	player_monster = "Zombie"
	monster_str_mult = 1.0
	monster_spd_mult = .5
	monster_sta_mult = .5
	global.game_state = GameState.background_select
}

if global.game_state = GameState.skeleton_selected{
	player_monster = "Skeleton"
	monster_str_mult = .5
	monster_spd_mult = 1.0
	monster_sta_mult = .5
	global.game_state = GameState.background_select
}

if global.game_state = GameState.slime_selected{
	player_monster = "Slime"
	monster_str_mult = .5
	monster_spd_mult = .5
	monster_sta_mult = 1.0
	global.game_state = GameState.background_select
}

if global.game_state = GameState.wealthy_background{
	player_gold += 300
	global.game_state = GameState.continue
}

if global.game_state = GameState.trainer_background{
	player_gold += 50
	monster_spd_mult += .1
	monster_sta_mult += .1
	monster_str_mult += .1
	global.game_state = GameState.continue	
}

if global.game_state = GameState.nothing_background{
	global.game_state = GameState.continue
}