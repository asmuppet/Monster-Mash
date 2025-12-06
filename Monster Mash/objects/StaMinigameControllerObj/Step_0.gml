if minigame_play && !minigame_started{
	alarm[1] = game_get_speed(gamespeed_fps)
	
	minigame_started = true
}

if  collision || StaMinigameControllerObj.sta_earned == 1 {
	instance_destroy(stamina_obstacle)
	PlayerMonster.sta += PlayerMonster.sta_mult * sta_earned * sta_minigame_menu_obj.potion_mult
	minigame_play = false
	minigame_end = true
}

if minigame_end && minigame_play {
	room_goto(homebase_rm)
}