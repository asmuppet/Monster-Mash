if global.competitions_won >= 4 {
	room_goto(victory_rm)
}

else if 8 - global.competitions_total < 4 - global.competitions_won {
	room_goto(defeat_rm)
}