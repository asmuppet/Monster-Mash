//Calculates the heights and widths of all the text in order to draw rectangles around them
//I don't like this method so far
display_choice_one = "You come from a wealthy mercantile background"
display_choice_two = "You come from a family of experience monster trainers"
display_choice_three = "You come from nothing"

text_height1 = string_height(display_choice_one)
text_width1 = string_width(display_choice_one)

text_height2 = string_height(display_choice_two)
text_width2 = string_width(display_choice_two)

text_height3 = string_height(display_choice_three)
text_width3 = string_width(display_choice_three)

text1_xpos1 = TextHandlerObj.center_textx - 20
text1_xpos2 = TextHandlerObj.center_textx + text_width2 + 20

text2_xpos1 = TextHandlerObj.center_textx - 20
text2_xpos2 = TextHandlerObj.center_textx + text_width2 + 20

text3_xpos1 = TextHandlerObj.center_textx - 20
text3_xpos2 = TextHandlerObj.center_textx + text_width2 + 20

text1_ypos1 = room_height - 720
text1_ypos2 = room_height - 680 + text_height1

text2_ypos1 = room_height - 620
text2_ypos2 = room_height - 580 + text_height1

text3_ypos1 = room_height - 520
text3_ypos2 = room_height - 480 + text_height1