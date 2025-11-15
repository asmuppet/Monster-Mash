//I am beyong positive there must be a better way of doing a state check than this awful if checklist,
//but that's what I've come up with for now

if global.game_state = GameState.zombie_selected {
	player_monster = "Zombie"
	rival_monster1 = "Skeleton"
	rival_monster2 = "Slime"
	instance_create_layer(0, 0, "Instances", PlayerMonster)
	instance_create_layer(0, 0, "Instances", RivalMonster1)
	instance_create_layer(0, 0, "Instances", RivalMonster2)

	global.game_state = GameState.background_select
}

if global.game_state = GameState.skeleton_selected{
	player_monster = "Skeleton"
	rival_monster1 = "Zombie"
	rival_monster2 = "Slime"
	instance_create_layer(0, 0, "Instances", PlayerMonster)
	instance_create_layer(0, 0, "Instances", RivalMonster1)
	instance_create_layer(0, 0, "Instances", RivalMonster2)
	global.game_state = GameState.background_select
}

if global.game_state = GameState.slime_selected{
	player_monster = "Slime"
	rival_monster1 = "Zombie"
	rival_monster2 = "Skeleton"
	instance_create_layer(0, 0, "Instances", PlayerMonster)
	instance_create_layer(0, 0, "Instances", RivalMonster1)
	instance_create_layer(0, 0, "Instances", RivalMonster2)
	global.game_state = GameState.background_select
}

if global.game_state = GameState.wealthy_background{
	player_gold += 300
	background = "wealthy"
	global.game_state = GameState.tbc
}

if global.game_state = GameState.trainer_background{
	player_gold += 50
	background = "trainer"
	global.game_state = GameState.tbc	
}

if global.game_state = GameState.nothing_background{
	background = "nothing"
	global.game_state = GameState.tbc
}