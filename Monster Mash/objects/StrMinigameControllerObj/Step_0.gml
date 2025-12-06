if minigame_end && minigame_play {
	room_goto(homebase_rm)
}

if minigame_play && !minigame_started{
	minigame_started = true
	player_monster_visual.charging_jump = true
}

if target.image_xscale > marker.image_xscale {
	player_monster_visual.charging_jump = false
	if !points_added {
		str_earned = global.cps * 1.8; points_added = true; 
		PlayerMonster.str += (PlayerMonster.str_mult * str_earned * str_minigame_menu_obj.potion_mult) / 10
	}
	minigame_play = false
	minigame_end = true
}

