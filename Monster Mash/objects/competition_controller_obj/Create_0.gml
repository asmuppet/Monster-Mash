competition_type = irandom(2)
str_advantage = 1
spd_advantage = 1
sta_advantage = 1

if competition_type = 0 {
	str_advantage = 1.3
}
else if competition_type = 1 {
	spd_advantage = 1.3
}

else if competition_type = 2 {
	sta_advantage = 1.3
}

skill_check = max(RivalMonster1.str * random_range(1, 1.2) * str_advantage,RivalMonster2.str * random_range(1, 1.2) * str_advantage) + 
			  max(RivalMonster1.spd * random_range(1, 1.2) * spd_advantage,RivalMonster2.spd * random_range(1, 1.2) * spd_advantage) +
			  max(RivalMonster1.sta * random_range(1, 1.2) * sta_advantage,RivalMonster2.sta * random_range(1, 1.2) * sta_advantage);
			  
if PlayerMonster.str  * random_range(1.1, 1.3) * str_advantage + PlayerMonster.spd *  random_range(1.1, 1.3) * spd_advantage + PlayerMonster.sta *  random_range(1.1, 1.3) * sta_advantage >= skill_check {
	player_win = true
	PlayerControllerObj.player_gold += 60
}

else {
	player_win = false
}