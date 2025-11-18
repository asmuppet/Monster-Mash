//Calculate appropriate menu height and width
var dynam_width = 0
for (var i = 0; i < array_length(minimessage); i++) {
	var item_width = string_width(minimessage[i])
	dynam_width = max(dynam_width, item_width)
}
width = dynam_width + space_edge * 2
height = space_edge * 2 + string_height(minimessage[0])


	//menu background
	draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1)

	draw_text(x + space_edge, y + space_edge + space_text, minimessage[0])

	
