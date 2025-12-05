persistent = true

monster_species = PlayerControllerObj.rival_monster1

if monster_species == "Zombie" {
	str_mult = 1.1
	spd_mult = 0.9
	sta_mult = 0.9
}

else if monster_species == "Skeleton" {
	str_mult = 0.9
	spd_mult = 1.1
	sta_mult = 0.9
}

else if monster_species == "Slime" {
	str_mult = 0.9
	spd_mult = 0.9
	sta_mult = 1.1
}

day_checked = GlobalControllerObj.day

str = 10 * str_mult
spd = 10 * spd_mult
sta = 10 * sta_mult