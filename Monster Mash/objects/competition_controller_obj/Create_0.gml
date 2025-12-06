audio_stop_all()

global.competitions_total++


str_advantage = 1
spd_advantage = 1
sta_advantage = 1

if global.competition_type == "Strength"  {
	str_advantage = 1.3
}
else if global.competition_type == "Speed" {
	spd_advantage = 1.3
}

else if global.competition_type == "Stamina" {
	sta_advantage = 1.3
}

random_val = irandom(2)

if random_val == 0 {global.competition_type = "Strength"}
else if random_val == 1 {global.competition_type = "Speed"}
else if random_val == 2 {global.competition_type = "Stamina"}

skill_check = max(RivalMonster1.str * random_range(1, 1.2) * str_advantage,RivalMonster2.str * random_range(1, 1.2) * str_advantage) + 
			  max(RivalMonster1.spd * random_range(1, 1.2) * spd_advantage,RivalMonster2.spd * random_range(1, 1.2) * spd_advantage) +
			  max(RivalMonster1.sta * random_range(1, 1.2) * sta_advantage,RivalMonster2.sta * random_range(1, 1.2) * sta_advantage);
			  
if PlayerMonster.str  * random_range(1.1, 1.3) * str_advantage + PlayerMonster.spd *  random_range(1.1, 1.3) * spd_advantage + PlayerMonster.sta *  random_range(1.1, 1.3) * sta_advantage >= skill_check {
	audio_play_sound(win_snd, 1, false)
	player_win = true
	global.competitions_won++
	PlayerControllerObj.player_gold += 600
}

else {
	audio_play_sound(defeat_snd, 0, false)
	player_win = false
	global.competitions_lost++
}

if global.competitions_won >= 4 {
	victory = true
}

else if global.competitions_lost >= 4 {
	defeat = true
}