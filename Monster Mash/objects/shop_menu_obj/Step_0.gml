x = 0
y = room_height - height * 2

//get input
up_pressed = keyboard_check_pressed(vk_up)
down_pressed = keyboard_check_pressed(vk_down)
enter_pressed = keyboard_check_pressed(vk_enter)

//track length of current menu
menu_length = array_length(shop_options)

if !success && !error {
	//track cursor position
	position += down_pressed - up_pressed
}

if position >= menu_length {
	position = 0
}
if position < 0 {
	position = menu_length - 1
}


	if enter_pressed && !error && !success{
	
		//set to top on new menu
		start_depth = menu_depth
	
		switch (position) {
			
			//buy strength item
			case 0:
			
				//display an error message stating not enough gold
				if PlayerControllerObj.player_gold < 300 {
					error = true
				}
				//allow transaction
				else {
					PlayerControllerObj.player_gold -= 300
					success = true
				}
				break
				
			case 1:
			case 2:
			case 3:
			case 4: room_goto(homebase_rm); break
		}
	}
	
	else if enter_pressed && error{
		error = false
	}
	
	else if enter_pressed && success{
		success = false
	}