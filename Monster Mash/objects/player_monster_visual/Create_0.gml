if PlayerMonster.monster_species == "Zombie" {
	sprite_index = zombie_idle_spr
	monster_species = "Zombie"
}

else if PlayerMonster.monster_species == "Skeleton" {
	sprite_index = skeleton_idle_spr
	monster_species = "Skeleton"
}

else if PlayerMonster.monster_species == "Slime" {
	sprite_index = slime_idle_spr
	monster_species = "Slime"
}

image_xscale = .2
image_yscale = .2


if room == staminigame_rm {
	gravity_direction = 270
}