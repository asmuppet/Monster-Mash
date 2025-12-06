audio_play_sound(menu_progress_snd, 1, false)

if !SpdMinigameControllerObj.minigame_started && choice_made || SpdMinigameControllerObj.minigame_end {
	SpdMinigameControllerObj.minigame_play = true
}