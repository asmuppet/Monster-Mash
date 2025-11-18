x = room_width/2 - width/2
y = room_height/2 - height/2


//get input
up_pressed = keyboard_check_pressed(vk_up)
down_pressed = keyboard_check_pressed(vk_down)
enter_pressed = keyboard_check_pressed(vk_enter)

//track length of current menu
menu_length = array_length(menu_items[menu_depth])

//track cursor position
position += down_pressed - up_pressed

if position >= menu_length {
	position = 0
}
if position < 0 {
	position = menu_length - 1
}

if enter_pressed {
	
	//set to top on new menu
	start_depth = menu_depth
	
	switch (menu_depth) {
		//base village menu
		case 0:
			switch(position) {
				case 0: menu_depth = 1; break
				case 1: menu_depth = 2; break
				case 2: menu_depth = 3; break
			}
			break
		//check monster menu
		case 1:
			switch(position) {
				case 1: global.game_state = GameState.zombie_selected; menu_depth = 2; break
				case 2: global.game_state = GameState.skeleton_selected; menu_depth = 2; break
				case 3:	global.game_state = GameState.slime_selected; menu_depth = 2; break
				case 4: menu_depth--; break
				default: break
			}
			break
			
		//inventory menu
		case 2:
			switch(position) {
				case 1: global.game_state = GameState.wealthy_background; menu_depth = 3; break
				case 2:	global.game_state = GameState.trainer_background; menu_depth = 3; break
				case 3: global.game_state = GameState.nothing_background; menu_depth = 3; break
				case 4: menu_depth--; break
				default: break
			}
			break
			
		//shop menu
		case 3:
			switch(position) {
				case 0: room_goto(homebase_rm); break
			}
			break
			
		case 4:
			switch(position) {
				case 0: break
			}
			break
	}
	
	if menu_depth != start_depth {position = 0}
	menu_length = array_length(menu_items[menu_depth])
}