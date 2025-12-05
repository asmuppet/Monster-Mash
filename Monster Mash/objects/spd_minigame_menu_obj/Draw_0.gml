//Calculate appropriate menu height and width
var dynam_width = 0
for (var i = 0; i < array_length(minimessage); i++) {
	var item_width = string_width(minimessage[i])
	dynam_width = max(dynam_width, item_width)
}
width = dynam_width + space_edge * 2
height = space_edge * 2 + string_height(minimessage[0])

if !choice_made && global.inventory.energy_potion.quantity > 0{
	draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, (height + (menu_length - 1) * space_text)/sprite_height, 0, c_white, 1)
	for (var i = 0; i < menu_length - 1; i++) {
		var color = c_white
		if position == i {
			color = c_blue
		}
	draw_text_colour(x + space_edge, y + space_edge + space_text * i, potion_message[i], color, color, color, color, 1)	
	}
}

if !SpdMinigameControllerObj.minigame_play && !SpdMinigameControllerObj.minigame_end && choice_made && !intro_message{
	//menu background
	draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height + space_text/sprite_height, 0, c_white, 1)

	draw_text(x + space_edge, y + space_edge + space_text, minimessage[0])
}

else if !SpdMinigameControllerObj.minigame_play && SpdMinigameControllerObj.minigame_end {
	if SpdMinigameControllerObj.spd_earned == 0 {
		draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height + space_text/sprite_height, 0, c_white, 1)

		draw_text(x + space_edge, y + space_edge + space_text, minimessage[1])
	}
	
	else {
		draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height + space_text/sprite_height, 0, c_white, 1)

		draw_text(x + space_edge, y + space_edge + space_text, minimessage[2])
	}
}