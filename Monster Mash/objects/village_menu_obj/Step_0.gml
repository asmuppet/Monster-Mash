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
					case 1: menu_depth = 0; break
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
						PlayerMonster.str += PlayerMonster.str_mult
						GlobalControllerObj.day++
						menu_depth = 0
						break
					case 1:
						GlobalControllerObj.day++
						menu_depth = 0
						room_goto(spdminigame_rm)
						break
					case 2: 
						PlayerMonster.sta += PlayerMonster.sta_mult
						GlobalControllerObj.day++
						menu_depth = 0
						break
					case 3:
						menu_depth--
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