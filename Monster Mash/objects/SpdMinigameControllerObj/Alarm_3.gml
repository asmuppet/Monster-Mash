///@description Third Dropper
if !minigame_end {
	instance_create_layer(irandom_range(32, room_width - 32), -64, "Instances", objectType)

	alarm[3] = irandom_range(48, 72)
}