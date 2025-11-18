x = room_width/2 - width/2
y = room_height/2 - height/2


up_pressed = keyboard_check_pressed(vk_up)
down_pressed = keyboard_check_pressed(vk_down)
enter_pressed = keyboard_check_pressed(vk_enter)

menu_length = array_length(menu_items)

position += down_pressed - up_pressed

if position >= menu_length {
	position = menu_length - 1
}
if position < 0 {
	position = 0
}

if enter_pressed {
	switch(position) {
		case 0:
			room_goto(setup_rm)
			break
	
		case 1:
			game_end()
			break
	}
}
