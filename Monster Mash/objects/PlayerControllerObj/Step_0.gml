//I am beyong positive there must be a better way of doing a state check than this awful if checklist,
//but that's what I've come up with for now

if global.game_state = GameState.zombie_selected {
	var player_monster = instance_create_layer(0, 0, "Instances", PlayerMonster)
	player_monster.monster_species = "Zombie"
	var rival_monster1 = instance_create_layer(0, 0, "Instances", RivalMonster1)
	rival_monster1.monster_species = "Skeleton"
	var rival_monster2 = instnace_create_layer(0, 0, "Instances", RivalMonster2)
	rival_monster2.monster_species = "Slime"
	global.game_state = GameState.background_select
}

if global.game_state = GameState.skeleton_selected{
	var player_monster = instance_create_layer(0, 0, "Instances", PlayerMonster)
	player_monster.monster_species = "Skeleton"
	var rival_monster1 = instance_create_layer(0, 0, "Instances", RivalMonster1)
	rival_monster1.monster_species = "Zombie"
	var rival_monster2 = instnace_create_layer(0, 0, "Instances", RivalMonster2)
	rival_monster2.monster_species = "Slime"
	global.game_state = GameState.background_select
}

if global.game_state = GameState.slime_selected{
	var player_monster = instance_create_layer(0, 0, "Instances", PlayerMonster)
	player_monster.monster_species = "Slime"
	var rival_monster1 = instance_create_layer(0, 0, "Instances", RivalMonster1)
	rival_monster1.monster_species = "Zombie"
	var rival_monster2 = instnace_create_layer(0, 0, "Instances", RivalMonster2)
	rival_monster2.monster_species = "Skeleton"
	global.game_state = GameState.background_select
}

if global.game_state = GameState.wealthy_background{
	player_gold += 300
	global.game_state = GameState.tbc
}

if global.game_state = GameState.trainer_background{
	player_gold += 50
	global.game_state = GameState.tbc	
}

if global.game_state = GameState.nothing_background{
	global.game_state = GameState.tbc
}