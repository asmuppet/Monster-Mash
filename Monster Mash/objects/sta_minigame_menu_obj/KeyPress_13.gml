audio_play_sound(menu_progress_snd, 1, false)

if !StaMinigameControllerObj.minigame_started && choice_made || StaMinigameControllerObj.minigame_end {
	StaMinigameControllerObj.minigame_play = true
}

show_debug_message(string(StaMinigameControllerObj.minigame_play) + " " + string(StaMinigameControllerObj.minigame_end))