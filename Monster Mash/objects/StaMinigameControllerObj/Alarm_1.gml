///@description First Dropper
if !minigame_end {
	instance_create_layer(-200, player_monster_visual.y + random_range(-80, -4), "Instances", objectType)

	alarm[1] = irandom_range(100, 120)
}