///@description Second Dropper
if !minigame_end {
	instance_create_layer(irandom_range(32, room_width - 32), -200, "Instances", objectType)

	alarm[2] = irandom_range(48, 72)
}