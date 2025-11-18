persistent = true

monster_species = PlayerControllerObj.rival_monster2

if monster_species == "Zombie" {
	str_mult = 1.0
	spd_mult = 0.5
	sta_mult = 0.5
}

else if monster_species == "Skeleton" {
	str_mult = 0.5
	spd_mult = 1.0
	sta_mult = 0.5
}

else if monster_species == "Slime" {
	str_mult = 0.5
	spd_mult = 0.5
	sta_mult = 1.0
}

day_checked = GlobalControllerObj.day

str = 10 * str_mult
spd = 10 * spd_mult
sta = 10 * sta_mult