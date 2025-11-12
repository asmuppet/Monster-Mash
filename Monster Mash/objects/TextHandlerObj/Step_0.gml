//constantly check game state and update game text as needed

if global.game_state = GameState.game_start {
	display_message = "Welcome to Monster Mash!"
}

//spawns one instance of each of a specific kind of object
//testing to see if this is easier to use than the other
if global.game_state = GameState.monster_select {
	display_message = "Which Monster do you want?"
	if !instance_exists(ZombieTextObj) {
		instance_create_layer(0, 0, "Instances", ZombieTextObj)
	}
	if !instance_exists(SlimeTextObj) {
		instance_create_layer(0, 0, "Instances", SlimeTextObj)
	}
	if !instance_exists(SkeletonTextObj) {
		instance_create_layer(0, 0, "Instances", SkeletonTextObj)
	}
}

//spawns one game object that handles a bunch of text at once
//testing to see if this is easier to use than the other
if global.game_state = GameState.background_select {
	display_message = "What background do you come from?"
	if !instance_exists(BackgroundSelectObj) {
		instance_create_layer(0, 0, "Instances", BackgroundSelectObj)
	}
}

text_width = string_width(display_message)
text_height = string_height(display_message)

center_textx = room_width / 2 - text_width / 2
center_texty = room_height / 2 - text_height / 2