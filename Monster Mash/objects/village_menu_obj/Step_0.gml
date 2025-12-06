x = 0
y = room_height - height * 2

//keep monster stats updated visually
menu_items[1, 1] = "Strength: " + string(PlayerMonster.str)
menu_items[1, 2] = "Speed: " + string(PlayerMonster.spd)
menu_items[1, 3] = "Stamina: " + string(PlayerMonster.sta)


//get input
up_pressed = keyboard_check_pressed(vk_up)
down_pressed = keyboard_check_pressed(vk_down)
enter_pressed = keyboard_check_pressed(vk_enter)

//track length of current menu
menu_length = array_length(menu_items[menu_depth])

//track cursor position
if !error && !work {
	position += down_pressed - up_pressed
}

if position >= menu_length {
	position = 0
}
if position < 0 {
	position = menu_length - 1
}


if enter_pressed && !error && !work{
	
	//set to top on new menu
	start_depth = menu_depth

	switch (menu_depth) {
		//base village menu
		case 0:
			switch(position) {
				case 0: menu_depth = 1; break
				case 1: menu_depth = 2; break
				case 2: menu_depth = 0; room_goto(shop_rm); break
				case 3: menu_depth = 4; break
			}
			break
		//check monster menu
		case 1:
			switch(position) {
				case 0:
				case 1:
				case 2:
				case 3:
				case 4: menu_depth = 0; break
			}
			break
		
		//inventory menu
		case 2:
			switch(position) {
				case 0: 
					audio_play_sound(item_use_snd, 1, false)
					error = !use_growth_item(global.inventory.str_growth_item)
					break
				case 1:
					audio_play_sound(item_use_snd, 1, false)
					error = !use_growth_item(global.inventory.spd_growth_item)
					break
				case 2:
					audio_play_sound(item_use_snd, 1, false)
					error = !use_growth_item(global.inventory.sta_growth_item)
					break
				case 3:
					if global.inventory.energy_potion.quantity < 1 {error = true}; break
				case 4: menu_depth = 0; break
			}
			break			
		//go to shop
		case 3:
			switch(position) {
				case 0:
				case 1: menu_depth = 0; break
			}
			break
			
		//training menu
		case 4:
			switch(position) {
				case 0: 
					GlobalControllerObj.day++
					menu_depth = 0
					room_goto(strminigame_rm)
					break
				case 1:
					GlobalControllerObj.day++
					menu_depth = 0
					room_goto(spdminigame_rm)
					break
				case 2: 
					GlobalControllerObj.day++
					menu_depth = 0
					room_goto(staminigame_rm)
					break
				case 3:
					GlobalControllerObj.day++
					PlayerControllerObj.player_gold += 250
					work = true
					menu_depth = 0
					break;
				case 4:
					menu_depth = 0
					break
			}
			break
			
		case 5:
			GlobalControllerObj.day++
			room_goto(competition_rm)
			break
	}
	
	
		
	if menu_depth != start_depth {position = 0}
	menu_length = array_length(menu_items[menu_depth])

}

else if enter_pressed && error{
	error = false
}

else if enter_pressed && work{
	work = false
}

//Inventory Menu
menu_items[2, 0] = "Strength Growth: " + string(global.inventory.str_growth_item.quantity)
menu_items[2, 1] = "Speed Growth: " + string(global.inventory.spd_growth_item.quantity)
menu_items[2, 2] = "Stamina Growth: " + string(global.inventory.sta_growth_item.quantity)
menu_items[2, 3] = "Energy Potion: " + string(global.inventory.energy_potion.quantity)
menu_items[2, 4] = "Go Back"