if !StrMinigameControllerObj.minigame_started{
	audio_play_sound(menu_progress_snd, 1, false)
}

if !StrMinigameControllerObj.minigame_started && choice_made || StrMinigameControllerObj.minigame_end {
	StrMinigameControllerObj.minigame_play = true
}