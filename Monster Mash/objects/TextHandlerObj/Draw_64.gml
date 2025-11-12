//display current display message and draw a box around it
draw_set_colour(c_white)
draw_rectangle(center_textx - 5, center_texty - 5, center_textx + text_width + 5, center_texty + text_height + 5, true)

draw_text(center_textx, center_texty, display_message)