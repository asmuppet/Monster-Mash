//display current display message and draw a box around it
draw_set_colour(c_white)
draw_rectangle(center_textx - 5, center_texty - 5, center_textx + text_width + 5, center_texty + text_height + 5, true)

draw_text(center_textx, center_texty, display_message)

draw_text(room_width - string_width(week_string) - 20, 0, day_string)
draw_text(room_width - string_width(week_string) - 20, string_height(week_string) + 10, week_string)