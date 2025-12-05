//Initial Text
menu_items[0, 0] = "Welcome to Monster Mash! Choose a monster to train to win 4 of the next 8 competitions!"

randomise()

random_val = irandom(2)
if random_val == 0 {
	global.competition_type = "Strength"
}

else if random_val == 1 {
	global.competition_type = "Speed"
}

else if random_val == 2 {
	global.competition_type = "Stamina"
}
//Monster to be raised
menu_items[1, 0] = "What Monster would you like to raise? Rumor has it that the first competition is going to be " + global.competition_type + " based..."
menu_items[1, 1] = "	Zombie (+Strength)"
menu_items[1, 2] = "	Skeleton (+Speed)"
menu_items[1, 3] = "	Slime (+Stamina)"
menu_items[1, 4] = "Go Back"

//Background question
menu_items[2, 0] = "What is your background?"
menu_items[2, 1] = "You come from a wealthy mercantile background (+Gold)"
menu_items[2, 2] = "You come from a family of experienced monster trainers (+Monster Growth)"
menu_items[2, 3] = "You come from nothing (+Difficulty)"
menu_items[2, 4] = "Go Back"

//Buffer Textbox to allow game to calculate
menu_items[3, 0] = "Now start your training journey!"