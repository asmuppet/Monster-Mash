persistent = true

monster_species = PlayerControllerObj.player_monster

if monster_species == "Zombie" {
	str_mult = 1.0
	spd_mult = 0.8
	sta_mult = 0.8
}

else if monster_species == "Skeleton" {
	str_mult = 0.8
	spd_mult = 1.0
	sta_mult = 0.8
}

else if monster_species == "Slime" {
	str_mult = 0.8
	spd_mult = 0.8
	sta_mult = 1.0
}

str = 10 * str_mult
spd = 10 * spd_mult
sta = 10 * sta_mult