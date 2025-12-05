persistent = true

monster_species = PlayerControllerObj.rival_monster2

if monster_species == "Zombie" {
	str_mult = 0.9
	spd_mult = 0.7
	sta_mult = 0.7
}

else if monster_species == "Skeleton" {
	str_mult = 0.7
	spd_mult = 0.9
	sta_mult = 0.7
}

else if monster_species == "Slime" {
	str_mult = 0.7
	spd_mult = 0.7
	sta_mult = 0.9
}

day_checked = GlobalControllerObj.day

str = 10 * str_mult
spd = 10 * spd_mult
sta = 10 * sta_mult