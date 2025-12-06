x = room_width/2 - width/2
y = room_height/2 - height/2

x = 0
y = room_height - height * 2

//get input
up_pressed = keyboard_check_pressed(vk_up)
down_pressed = keyboard_check_pressed(vk_down)
enter_pressed = keyboard_check_pressed(vk_enter)

//track length of current menu
menu_length = array_length(potion_message)


//track cursor position
position += down_pressed - up_pressed

if position >= menu_length {
	position = 0
}
if position < 0 {
	position = menu_length - 1
}

if enter_pressed && !choice_made && global.inventory.energy_potion.quantity > 0{
	//set to top on new menu
	start_depth = menu_depth
	
	switch (position) {
		case 0:
			break;
		case 1:
			//consume energy potion
			global.inventory.energy_potion.quantity--
			potion_mult = 1.2
			choice_made = true
			break
		case 2:
			choice_made = true
			break
	}
}



minimessage[2] = "Congratulations! Your monster trained hard and earned " + string(PlayerMonster.spd_mult * SpdMinigameControllerObj.spd_earned * potion_mult) + " speed!"