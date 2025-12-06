SpdMinigameControllerObj.spd_earned -= .1
audio_play_sound(boulder_hit_snd, 1, false)
if PlayerMonster.monster_species == "Slime" {audio_play_sound(slime_hit_snd, 1, false)}
if PlayerMonster.monster_species == "Zombie" {audio_play_sound(zombie_hit_snd, 1, false)}

instance_destroy()