if minigame_play && !minigame_started{
	alarm[0] = game_get_speed(gamespeed_fps) * minigame_duration
	alarm[1] = game_get_speed(gamespeed_fps)
	alarm[2] = game_get_speed(gamespeed_fps) * second_dropper_delay
	alarm[3] = game_get_speed(gamespeed_fps) * third_dropper_delay
	
	minigame_started = true
}

if spd_earned <= 0 {
	instance_destroy(falling_spd_obj)
	
	spd_earned = 0
	
	minigame_play = false
	
	minigame_end = true
}

if minigame_end && minigame_play {
	room_goto(homebase_rm)
}