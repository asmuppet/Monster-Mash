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
					global.inventory.str_growth_item.quantity += 1
					success = true
				}
				break
			
			//buy speed item
			case 1:
			
				//display an error message stating not enough gold
				if PlayerControllerObj.player_gold < 300 {
					error = true
				}
				//allow transaction
				else {
					PlayerControllerObj.player_gold -= 300
					global.inventory.spd_growth_item.quantity += 1
					success = true
				}
				break
				
			//buy stamina item
			case 2:
			
			//display an error message stating not enough gold
				if PlayerControllerObj.player_gold < 300 {
					error = true
				}
				//allow transaction
				else {
					PlayerControllerObj.player_gold -= 300
					global.inventory.sta_growth_item.quantity += 1
					success = true
				}
				break
				
			//buy energy potion
			case 3:
			
			//display an error message stating not enough gold
				if PlayerControllerObj.player_gold < 300 {
					error = true
				}
				//allow transaction
				else {
					PlayerControllerObj.player_gold -= 300
					global.inventory.energy_potion.quantity += 1
					success = true
				}
				break
			
			case 4: room_goto(homebase_rm); break
		}
	}
	
	else if enter_pressed && error{
		error = false
	}
	
	else if enter_pressed && success{
		success = false
	}