if x > player_monster_visual.x {jumped = true}

if jumped && not_scored {StaMinigameControllerObj.sta_earned += .1; not_scored = false}