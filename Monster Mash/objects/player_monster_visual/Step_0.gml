if room = spdminigame_rm {
	if keyboard_check(vk_left) {
		x -= 8
	}

	if keyboard_check(vk_right) {
		x += 8
	}
}
if x > room_width - sprite_width/2 || x < sprite_width/2 {
	x = clamp(x, sprite_width/2, room_width - sprite_width/2)
}