if !StaMinigameControllerObj.minigame_started && choice_made || StaMinigameControllerObj.minigame_end {
	StaMinigameControllerObj.minigame_play = true
}

show_debug_message(string(StaMinigameControllerObj.minigame_play) + " " + string(StaMinigameControllerObj.minigame_end))