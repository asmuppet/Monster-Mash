if (mouse_check_button_pressed(mb_left)) {
    global.clicks += 1;
}

// Calculate elapsed time in seconds
var elapsed_time = (current_time - global.start_time) / 1000;

// Update CPS using clicks_per_second function
global.cps = clicks_per_second(global.clicks, elapsed_time);
