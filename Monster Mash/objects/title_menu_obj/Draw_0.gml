//Calculate appropriate menu height and width
var dynam_width = 0
for (var i = 0; i < menu_length; i++) {
	var item_width = string_width(menu_items[i])
	dynam_width = max(dynam_width, item_width)
}
width = dynam_width + space_edge * 2
height = space_edge * 2 + string_height(menu_items[0]) + (menu_length - 1) * space_text

//menu background
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1)

//menu text
for (var i = 0; i < menu_length; i++) {
	var color = c_white
	
	if position == i {
		color = c_blue
	}
	
	draw_text_colour(x + space_edge, y + space_edge + space_text * i, menu_items[i], color, color, color, color, 1)	
}