/// @description Timer for the minigame
PlayerMonster.spd += PlayerMonster.spd_mult * spd_earned * spd_minigame_menu_obj.potion_mult
instance_destroy(falling_spd_obj)

minigame_play = false
minigame_end = true