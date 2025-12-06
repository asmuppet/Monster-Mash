audio_stop_all()
//base village menu
menu_items[0, 0] = "Check Monster"
menu_items[0, 1] = "Inventory"
menu_items[0, 2] = "Go to Shop"
menu_items[0, 3] = "Training"

//Check Monster Menu
menu_items[1, 0] = PlayerMonster.monster_species
menu_items[1, 1] = "Strength: " + string(PlayerMonster.str)
menu_items[1, 2] = "Speed: " + string(PlayerMonster.spd)
menu_items[1, 3] = "Stamina: " + string(PlayerMonster.sta)
menu_items[1, 4] = "Go Back"


//Shop Menu
menu_items[3, 0] = "Placeholder"
menu_items[3, 1] = "Go Back"

//Training Menu
menu_items[4, 0] = "Strength Training"
menu_items[4, 1] = "Speed Training"
menu_items[4, 2] = "Stamina Training"
menu_items[4, 3] = "Earn Some Cash"
menu_items[4, 4] = "Go Back"

//Competition Day Menu
menu_items[5, 0] = "Time for the weekly competition!"

audio_play_sound(town_music_snd, 0, true)