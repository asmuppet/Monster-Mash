/// @description Timer for the minigame
PlayerMonster.spd += PlayerMonster.spd_mult * spd_earned
instance_destroy(falling_spd_obj)

minigame_play = false
minigame_end = true