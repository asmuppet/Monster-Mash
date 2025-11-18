if GlobalControllerObj.day != day_checked {
	var stat_raised = irandom(2)
	if stat_raised = 0 {
		str += str_mult * random_range(.5, 1)
	}
	else if stat_raised = 1 {
		spd += spd_mult * random_range(.5, 1)
	}
	else if stat_raised = 2 {
		sta += sta_mult * random_range(.5, 1)
	}
	day_checked = GlobalControllerObj.day
}