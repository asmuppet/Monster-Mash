//Calculate appropriate menu height and width
var dynam_width = 0
for (var i = 0; i < menu_length; i++) {
	var item_width = string_width(menu_items[menu_depth, i])
	dynam_width = max(dynam_width, item_width)
}
width = dynam_width + space_edge * 2
height = space_edge * 2 + string_height(menu_items[0, 0]) + (menu_length - 1) * space_text

//menu background
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1)

if error{
	draw_sprite_ext(sprite_index, image_index, x, y + height, width/sprite_width, height/sprite_height, 0, c_white, 1)
	draw_text(x + space_edge, y + height + space_edge + space_text, "You have none!")
}

if work{
	draw_sprite_ext(sprite_index, image_index, x, y + height, room_width/sprite_width, height/sprite_height, 0, c_white, 1)
	draw_text(x + space_edge, y + height + space_edge + space_text, "Your monster works for the day.")
}

if GlobalControllerObj.day % 7 != 0 {
	//menu text
	for (var i = 0; i < menu_length; i++) {
		var color = c_white
	
		if position == i {
			color = c_blue
		}
	
		draw_text_colour(x + space_edge, y + space_edge + space_text * i, menu_items[menu_depth, i], color, color, color, color, 1)	
	}
}

else {
	menu_depth = 5
	position = 0
	
	var color = c_blue

	draw_text_colour(x + space_edge, y + space_edge, menu_items[menu_depth, 0], color, color, color, color, 1)	
}