if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, obj_block)) {
	x += -move_speed
}

if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, obj_block)) {
	x += move_speed
}

if (keyboard_check(vk_up)){
	if (instance_place(x, y+1, obj_block)){
		vspeed = jump_height
	}
}
if (keyboard_check(vk_down)){
	is_sliding = true;
	slide = 4 * 0.4; // Slide lasts 0.4 seconds
}

if (is_sliding) {
    slide -= 1;

    // Your slide movement code
    image_yscale = .05

    if (slide <= 0) {
        is_sliding = false;
        image_yscale = .1; // end the slide
    }
}

if (instance_place(x, y + 1, obj_block)) {
        // standing on ground
        gravity = 0;
        // ensure vspeed is zero when on ground (so player doesn't keep moving)
        if (vspeed > 0) vspeed = 0;
    } else {
        // in air: apply gravity
        gravity = 0.25; // tweak as needed
    }if (instance_place(x, y + 1, obj_block)) {
        // standing on ground
        gravity = 0;
        // ensure vspeed is zero when on ground (so player doesn't keep moving)
        if (vspeed > 0) vspeed = 0;
    } else {
        // in air: apply gravity
        gravity = 0.25; // tweak as needed
    }

if (vspeed > max_fall_speed) vspeed = max_fall_speed;