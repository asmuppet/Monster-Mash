if competition_menu_obj.move_on && !victory && !defeat {
	room_goto(homebase_rm)
}

else if competition_menu_obj.move_on && victory {
	room_goto(victory_rm)
}

else if competition_menu_obj && defeat {
	room_goto(defeat_rm)
}