if room == staminigame_rm && y < 999 {
	vspeed += fall_speed
	if vspeed > 16 {vspeed = 16}
}
else if room == staminigame_rm && y >= 1000 {vspeed = 0; y = 999}

if room == spdminigame_rm || room == staminigame_rm {
	if keyboard_check(vk_left) {
		if PlayerMonster.monster_species == "Zombie" {sprite_index = zombie_run_spr}
		else if PlayerMonster.monster_species == "Skeleton" {sprite_index = skeleton_run_spr}
		else if PlayerMonster.monster_species == "Slime" {sprite_index = slime_run_spr}
		
		x -= 8
		if !turn_left{
			image_xscale *= -1
			turn_left = true
		}
	}

	else if keyboard_check(vk_right) {
		if PlayerMonster.monster_species == "Zombie" {sprite_index = zombie_run_spr}
		else if PlayerMonster.monster_species == "Skeleton" {sprite_index = skeleton_run_spr}
		else if PlayerMonster.monster_species == "Slime" {sprite_index = slime_run_spr}
		x += 8
		if turn_left{
			image_xscale *= -1
			turn_left = false
		}
	}
	
	else {
		if PlayerMonster.monster_species == "Zombie" {sprite_index = zombie_idle_spr}
		else if PlayerMonster.monster_species == "Skeleton" {sprite_index = skeleton_idle_spr}
		else if PlayerMonster.monster_species == "Slime" {sprite_index = slime_idle_spr}
	}
}

if x > room_width - sprite_width/2 || x < sprite_width/2 {
	x = clamp(x, sprite_width/2, room_width - sprite_width/2)
}