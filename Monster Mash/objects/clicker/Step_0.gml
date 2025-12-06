if (mouse_check_button_pressed(mb_left)) {
    global.clicks += 1;
}

// Calculate elapsed time in seconds

if StrMinigameControllerObj.minigame_play {
	if !start_set{global.start_time = current_time; start_set = true}
	global.elapsed_time = (current_time - global.start_time) / 1000;
}

// Update CPS using clicks_per_second function
global.cps = clicks_per_second(global.clicks, global.elapsed_time);

global.timemarker = global.elapsed_time
